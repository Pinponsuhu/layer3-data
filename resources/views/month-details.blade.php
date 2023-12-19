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

    <main class="w-full px-24 mt-4">
       <div>
            <div class="p-6 w-11/12 mx-auto mt-12 bg-white rounded shadow">
                <div>
                    {!! $chart->container() !!}
                </div>
            </div>
       </div>
        {{-- <table class="w-full">
            <tr class="text-white bg-red-400 font-bold py-3">
                <th class="w-1/2 py-3">Issue</th>
                <th class="w-1/2 py-3">Number of occurance</th>
            </tr>
            @foreach ($issues as  $issue)
            <tr class="@if ($loop->index %2 == 0)
                bg-red-100
            @else
            bg-red-200
            @endif)">
                <td class="p-3 capitalize">{{ $issue->rootCause }}</td>
                <td class="p-3 ">{{ $issue->count }}</td>
            </tr>
            @endforeach
        </table> --}}
    </main>


    <script src="{{ $chart->cdn() }}"></script>


    {{ $chart->script() }}
</body>
</html>
