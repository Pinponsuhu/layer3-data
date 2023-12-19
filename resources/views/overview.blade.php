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
    <div class="container px-4 mx-auto">
        <div class="my-4">
            <a href="/all">View all overview</a>
        </div>
        <div class="p-6 w-10/12 mx-auto mt-12 bg-white rounded shadow">
            {!! $chart->container() !!}
        </div>
        <div class="flex gap-x-8 mt-10 justify-center flex-wrap gap-y-6">
            @foreach ($monthlyData as $month)
            @php
                $months = ['',
            'January', 'February', 'March', 'April',
            'May', 'June', 'July', 'August',
            'September', 'October', 'November', 'December'
        ];
            @endphp
           <a href="/details/{{ $months[$month->month] }}/{{ $month->year }}" class="flex gap-x-2 py-3 px-4 rounded-md shadow-md hover:bg-red-300">
            <p>{{ $months[$month->month] }}</p>
            <p>{{ $month->year }}</p>
           </a>
        @endforeach
        </div>
    </div>
    <div class="mt-14 w-full py-4 px-12">
        <form action="/search" method="GET" class="flex gap-x-4 items-center justify-center">
            @csrf
            <input type="search" name="keywords" class="block w-72 p-3 rounded-md bg-red-100" placeholder="Search by Estate and Issues" id="">
            <button class="block px-8 py-3 rounded-md text-white bg-red-500">Search</button>
        </form>
        <div class="flex items-center justify-between py-3">
            <h3 class="font-bold">Data Overview</h3>
        </div>
        <table class="w-full">
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
                    <td class="capitalize px-3">{{ $issue->estate}}</td>
                    <td class="capitalize px-3">{{ $issue->rootCause}}</td>
                    <td class="px-3">{{ $issue->startDate}}</td>
                    <td class="px-3">{{ $issue->endDate}}</td>
                    <td class="text-right px-3">{{ $issue->timeSpent}}</td>
                </tr>
            @endforeach
        </table>
        <div>
            {{ $issues->links() }}
        </div>
    </div>

    <script src="{{ $chart->cdn() }}"></script>

    {{ $chart->script() }}
</body>
</html>
