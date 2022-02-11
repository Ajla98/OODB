<x-app-layout>
    <x-slot name="header">
      
      
    </x-slot>
   

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
               <div class="p-2">
                   <h1 class="font-x1">Kupci: </h1>
                    @foreach($customers as $customer)
                    <p class="p-2">{{$customer->ime}} | {{$customer->prezime}}</p>
                    @endforeach

</div>




            </div>
        </div>
    </div>
</x-app-layout>