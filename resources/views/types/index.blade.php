<x-app-layout>
    <x-slot name="header">
  <style>
 ul{
  border-left: 2px solid lightblue;
 
   list-style-type: none;
  padding: 10px 20px;
 }


 .alink, .alink:visited{
  background-color: white;
  color: black;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
 }
 .alink:hover, .alink:active{
 width:80px;
 height:70px;

}
.a1link, .a1link:visited{
  background-color: white;
  color: black;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
 }

.a1link:hover, .a1link:active{
border:2px;
border-color:lightgrey;
border-style:solid;


}
 


</style>
<table>
                    <tr>
                    
                    <td> 
                    <a class='alink' style='color:black; ' href='carts_kompjuteri'>
                        <img src='images/kompjuter.jfif' style='width:40px; height:40px'/> </td>
                    
                    <td><a class='alink' style='color:black; ' href='carts_laptopi'>
                    <img src='images/laptop.png' style='width:40px; height:40px'/></a></td>
                    
                    <td><a class='alink' style='color:black; ' href='carts_komponente'>
                    <img src='images/maticna.jfif' style='width:40px; height:40px'/></a></td>
                    
                    <td><a class='alink' style='color:black; ' href='carts_periferija'>
                    <img src='images/zvucnici.png' style='width:40px; height:40px'/></a></td>
                   
                </tr>
</table>

   

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div style="width:800px;margin-left:200px;"class=" overflow-hidden shadow-xl sm:rounded-lg">
               
            <div class="p-2">
      
                    @foreach($types as $type)


                    <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                    
                    <x-jet-nav-link href="{{ route('products') }}" :active="request()->routeIs('products')">
                      <?php if($type->ime=='Komponente') 
                        echo "<td><ul><a class='a1link' style='color:black;' href='carts_komponente'>
                        <img src='images/maticna.jfif' style='width:80px; height:80px'/>$type->ime</a><br>
                        Naš shop nudi širok asortiman svih vrsta komponenata. Brojne glavne komponente koje su ključne za funkcioniranje računara su pričvršćene upravo na matičnu ploču. To su procesor, memorija, grafičak kartica i produženi ulazi, izlazi. Matična ploča je neposredno ili posredno povezana sa svakim dijelom osobnog računara.
             </ul><br><br></td>";
                        elseif($type->ime=='Kompjuteri') 
                        echo "<td><ul><a class='a1link' style='color:black; ' href='carts_kompjuteri'>
                        <img src='images/kompjuter.jfif' style='width:80px; height:80px'/>$type->ime</a><br>
                        U našoj prodavnici nudimo široku paletu desktop računara. Nudimo brendirane i sklapane nove računare. Garantovano najbolje cijene na određene artikle.</ul></td>";
                        elseif($type->ime=='Laptopi') 
                        echo "<td'><ul><a class='a1link' style='text-align:left;color:black;' href='carts_laptopi'>
                       <img src='images/laptop.png' style='width:80px; height:80px'/> $type->ime </a><br>
                       Laptopi su pravi izbor za one koji žele laptop za svakodnevnu upotrebu. Radnje poput: slanje emailova, pisanje tekstova, surfanje internetom i društvenim mrežama, gledanje online filmova i sve one radnje koje ne opterećuju PROCESOR i RAM, ići će im izvrsno. 
                       Najveći plus je što dolaze s niskom cijenom i pristupačni su za većinu korisnika.
</ul><br><br</td>";
                        elseif($type->ime=='Periferija') 
                        echo "<td><ul><a class='a1link' style='color:black; ' href='carts_periferija'>
                        <img src='images/zvucnici.png' style='width:80px; height:80px'/>$type->ime</a><br>
                        Nudimo sve vrste periferijskih uređaja, kao što su : tastature, mikrofoni, slušalice, zvučnici i slično. Uređaji su kvalitetni i pouzdani, te dolaze sa garancijom.</ul></td>";
                        ?>

                    </x-jet-nav-link>
                    </div>
                    @endforeach

</div>




            </div>
        </div>
    </div>
    </x-slot>
</x-app-layout>