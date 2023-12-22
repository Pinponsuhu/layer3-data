<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="https://cdn.tailwindcss.com"></script>
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

        <div class="px-8 py-16 mt-8 rounded-md shadow-md">
            <h2 class="capitalize text-xl"><b>Estate name:</b> {{ $estateDetails[0]->estate }}</h2>
            <h2 class="mt-3"><b>Number of Issues:</b> {{ $estateDetails->count() }}</h2>
            <p class="mt-3"><b>Total Time Taken to resolve issues(minutes):</b> {{ $totalTime }}</p>
            <p class="mt-3"><b>Average Time: </b>{{ $totalTime/$estateDetails->count() }}</p>
            <p class="mt-3"><b>Date of Latest Escalation:</b> {{ $latestRecord->startDate }}</p>
        </div>
        <div class="p-6 w-11/12 mx-auto mt-12 bg-white rounded shadow">
            <div>
                {!! $chart->container() !!}
            </div>
        </div>

    </div>
    <script src="{{ $chart->cdn() }}"></script>


    {{ $chart->script() }}
    {{-- @push('scripts')
    {!! $chart->script() !!}
@endpush --}}
</body>
</html>
