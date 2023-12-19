<?php

namespace App\Http\Controllers;

use App\Models\Issue;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class IssueController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
    //     $repeatedClasses = DB::table('issues')
    // ->select('estate', DB::raw('COUNT(*) as count'))
    // ->groupBy('estate')
    // ->havingRaw('COUNT(*)')
    // ->get();

    $monthlyData = Issue::selectRaw('MONTH(startDate) as month, YEAR(startDate) as year, COUNT(*) as count')
    ->groupBy('year', 'month')
    ->orderBy('year', 'asc')
    ->get();


       dd($monthlyData);
    // dd($monthlyData);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Issue $issue)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Issue $issue)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Issue $issue)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Issue $issue)
    {
        //
    }
}
