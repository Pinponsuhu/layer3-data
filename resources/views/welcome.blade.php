<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-screen h-screen bg-white flex flex-col md:flex-row px-12 md:px-0 justify-center items-center align-middle gap-x-20">
    <object data="{{ asset('svg/data.svg') }}" class="md:w-80 w-full" type=""></object>
    <form action="/" enctype="multipart/form-data" class="md:w-96 w-full mt-12" method="post">
        @csrf
        <h2 class="font-bold mb-4 text-red-600 text-2xl">Import Data</h2>
        <input type="file" name="file" id="">
        {{-- <input type="email" class="block w-full p-3 border-2 rounded-md border-red-600" placeholder="Email address">
        <input type="password" class="block w-full p-3 mt-4 border-2 rounded-md border-red-600" placeholder="Password">
        <div class="flex mt-3 justify-end">
            <a href="#" class="underline text-red-600">Forgot Password?</a>
        </div> --}}
        <button class="block py-3 rounded-md font-medium text-white w-full mt-5 bg-red-600">Sign In</button>
    </form>
</body>
</html>
