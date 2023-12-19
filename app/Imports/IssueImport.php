<?php

namespace App\Imports;

use App\Models\Issue;
use Carbon\Carbon;
use Illuminate\Support\Facades\Date;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithMultipleSheets;

class IssueImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        // dd($row[6]);


        $dateDifferenceOne = $row[6] != "null" || $row[7] == "-"? Carbon::createFromFormat('d/m/Y H:i', rtrim($row[6])) : "null";
        $dateDifferenceTwo = $row[7] != "null" || $row[7] == "-" ? Carbon::createFromFormat('d/m/Y H:i', rtrim($row[7])) : "null";
        $difference2 = $dateDifferenceOne != "null" && $dateDifferenceTwo != "null" ? $dateDifferenceOne->diffInMinutes($dateDifferenceTwo) : "-";
        // dd($difference);
        return new Issue([
            "subject" => $row[0],
            "estate" => strtolower($row[1]),
            "startDate" => $dateDifferenceOne != "null" ? $dateDifferenceOne->format('Y-m-d H:i:s') : null ,
            "endDate" => $dateDifferenceTwo != "null" ? $dateDifferenceTwo->format('Y-m-d H:i:s') : null,
            "rootCause" => $row[4] == 'na' || $row[4] == 'unknown' || $row[4] == 'N/A' || $row[4] == 'Unknown' || $row[4] == '' || $row[4] == 'n/a' ? 'unknown' : strtolower($row[4]),
            "description" => $row[5] == "" ? "N/A" : $row[5],
            "timeSpent" => $difference2
        ]);
    }
    // public function sheets(): array
    // {
    //     return [
    //         'JANUARY' => new FirstSheetImport()
    //     ];
    // }
}
