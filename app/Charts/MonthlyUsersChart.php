<?php

namespace App\Charts;

use App\Models\Issue;
use ArielMejiaDev\LarapexCharts\LarapexChart;

class MonthlyUsersChart
{
    protected $chart;

    public function __construct(LarapexChart $chart)
    {
        $this->chart = $chart;
    }

    public function build(): \ArielMejiaDev\LarapexCharts\BarChart
    {
        $months = ['',
            'January', 'February', 'March', 'April',
            'May', 'June', 'July', 'August',
            'September', 'October', 'November', 'December'
        ];
        $monthlyData = Issue::selectRaw('MONTH(startDate) as month, YEAR(startDate) as year, COUNT(*) as count')
        ->groupBy('year', 'month')
        ->orderBy('year', 'asc')
        ->get();


        // dd($monthlyData);


        $allMonth = array();
        $issues = array();

        foreach($monthlyData as $data){
            // dd($data->month);
            array_push($issues,$data->count);
            array_push($allMonth,$months[$data->month]);
        }

        // dd($allMonth);

        return $this->chart->barChart()
            ->setTitle('Overview of monthly downtime escalation')
            ->setSubtitle('Month vs Number of escalation')
            ->addData('Issues', $issues)
            ->setXAxis($allMonth);
    }
}
