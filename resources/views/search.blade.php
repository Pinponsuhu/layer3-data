<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    @vite('resources/css/app.css')
</head>
<body>
    <nav class="flex items-center justify-between px-12 py-4 shadow-md">
        <h1 class="font-bold text-2xl text-red-500">Layer3 FTTH Issue Analysis</h1>
        <form action="">
            @csrf
            <button>Logout</button>
        </form>
    </nav>
    <main class="px-12">
        <div class="flex justify-end mt-8">
            <span class="cursor-pointer bg-green-500 text-white px-8 py-3">Export as excel</span>
        </div>
        <table class="w-full mt-12">
            <tr class="bg-red-400 text-left text-white">
                <th class="px-6 py-2.5 w-1/6">Subject</th>
                <th class="px-6 py-2.5 w-1/6">Estate</th>
                <th class="px-6 py-2.5 w-1/6">Issue</th>
                <th class="px-6 py-2.5 w-1/6">Date Registered</th>
                <th class="px-6 py-2.5 w-1/6">Date Resolved</th>
                <th class="px-6 py-2.5 w-1/6">Resolution Time(minutes)</th>
            </tr>
            @foreach ($issues as $issue)
                <tr class="@if($loop->index % 2 == 0) bg-red-100 @else bg-red-50 @endif py-3">
                    <td class=" px-3">{{ $issue->subject }}</td>
                    <td class="capitalize px-3"><a href="/estate/{{ $issue->estate}}" class="underline">{{ $issue->estate}}</a></td>
                    <td class="capitalize px-3">{{ $issue->rootCause}}</td>
                    <td class="px-3">{{ $issue->startDate}}</td>
                    <td class="px-3">{{ $issue->endDate}}</td>
                    <td class="text-right px-3">{{ $issue->timeSpent}}</td>
                </tr>
            @endforeach
        </table>
    </main>
</body>

