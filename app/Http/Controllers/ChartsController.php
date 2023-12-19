<?php

namespace App\Http\Controllers;

use App\Charts\MonthlyIssuesChart;
use App\Charts\MonthlyUsersChart;
use App\Models\Issue;
use ArielMejiaDev\LarapexCharts\Facades\LarapexChart;
use ArielMejiaDev\LarapexCharts\LarapexChart as LarapexChartsLarapexChart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ChartsController extends Controller
{
    public function index(MonthlyUsersChart $chart)
    {
        $monthlyData = Issue::selectRaw('MONTH(startDate) as month, YEAR(startDate) as year, COUNT(*) as count')
            ->groupBy('year', 'month')
            ->orderBy('year', 'asc')
            ->get();

        $issues = Issue::cursorPaginate(18);
        return view('overview', ['chart' => $chart->build(), 'issues' => $issues, 'monthlyData' => $monthlyData]);
    }

    public function search(Request $request)
    {
        $query = $request->input('keywords');

        $results = Issue::where(function ($q) use ($query) {
            $q->where('estate', 'LIKE', '%' . $query . '%')
                ->orWhere('rootCause', 'LIKE', '%' . $query . '%');
            // Add more ->orWhere clauses for additional columns as needed
        })->get();

        // dd($results);

        return view('search', ['issues' => $results]);
    }

    public function estate($estate)
    {
        $estateDetails = Issue::where('estate', $estate)->latest()->get();
        $issues = Issue::where('estate', $estate)
            ->groupBy('rootCause')
            ->selectRaw('rootCause, COUNT(rootCause) as rootCauseCount')
            ->orderBy('rootCauseCount', 'desc')
            ->get();

        // dd($issues);
        $type = array();
        $value = array();

        foreach ($issues as $issue) {
            array_push($type, $issue->rootCause);
            array_push($value, $issue->rootCauseCount);
        }

        $chart = new LarapexChartsLarapexChart;
        $chart->setTitle('All Issues statistics');
        $chart->type('pie');
        $chart->setDataset($value);
        $chart->setLabels($type);

        // Additional parameters can be set like this:
        $chart->setSubtitle('Issues vs occurances');
        $chart->setColors([
            "#FF5733", // Example color
            "#3D453E",
            "#5733FF",
            "#FF33A6",
            "#33A6FF",
            "#A6FF33",
            "#EDA310",
            "#9B2A6C",
            "#33AAFF",
            "#E619B2",
            "#FF3366",
            "#3366FF",
            "#248205",
        ]);

        $totalTime = 0;
        foreach ($estateDetails as $estateDetail) {
            $totalTime += $estateDetail->timeSpent != "-" ? intVal($estateDetail->timeSpent) : 0;
        }

        $latestRecord = Issue::latest('startDate')->first();



        return view('estate', compact('chart', 'issues', 'estateDetails', 'totalTime', 'latestRecord'));
    }


    public function byMonth(Request $request)
    {
        $month = $request->month;
        $year = $request->year;

        $monthNumber = date('m', strtotime("$month 1"));

        // dd($monthNumber);

        $issues = Issue::select("rootCause", DB::raw('COUNT(*) as count'))
            ->whereYear('startDate', $year)
            ->whereMonth('startDate', $monthNumber)
            ->groupBy('rootCause')
            ->get();


            // dd($issues);
        $type = array();
        $value = array();

        $dataset = [];
foreach ($issues as $issue) {
    $dataset[$issue->rootCause] = $issue->count;
}
        foreach ($issues as $issue) {
            array_push($type, $issue->rootCause);
            array_push($value, $issue->count);
        }

        // dd($type);
        $chart = new LarapexChartsLarapexChart;
        $chart->setTitle('All Issues statistics');
        $chart->setType('pie');
        $chart->setDataset($value);
        $chart->setLabels($type);

        $chart->setSubtitle('Issues vs occurances for '. $month . ' '. $year);
        $chart->setColors([
            "#FF5733",
            "#3D453E",
            "#5733FF",
            "#FF33A6",
            "#33A6FF",
            "#A6FF33",
            "#EDA310",
            "#9B2A6C",
            "#33AAFF",
            "#E619B2",
            "#FF3366",
            "#3366FF",
            "#248205",
        ]);




        return view('month-details',['issues' => $issues,'chart' => $chart]);

    }


    public function allData(){
        $issues = Issue::select("rootCause", \DB::raw('COUNT(*) as count'))
            ->groupBy('rootCause')
            ->get();


            return view('all-data',['issues'=>$issues]);
    }
}
