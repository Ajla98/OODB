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
                        Na?? shop nudi ??irok asortiman svih vrsta komponenata. Brojne glavne komponente koje su klju??ne za funkcioniranje ra??unara su pri??vr????ene upravo na mati??nu plo??u. To su procesor, memorija, grafi??ak kartica i produ??eni ulazi, izlazi. Mati??na plo??a je neposredno ili posredno povezana sa svakim dijelom osobnog ra??unara.
             </ul><br><br></td>";
                        elseif($type->ime=='Kompjuteri') 
                        echo "<td><ul><a class='a1link' style='color:black; ' href='carts_kompjuteri'>
                        <img src='images/kompjuter.jfif' style='width:80px; height:80px'/>$type->ime</a><br>
                        U na??oj prodavnici nudimo ??iroku paletu desktop ra??unara. Nudimo brendirane i sklapane nove ra??unare. Garantovano najbolje cijene na odre??ene artikle.</ul></td>";
                        elseif($type->ime=='Laptopi') 
                        echo "<td'><ul><a class='a1link' style='text-align:left;color:black;' href='carts_laptopi'>
                       <img src='images/laptop.png' style='width:80px; height:80px'/> $type->ime </a><br>
                       Laptopi su pravi izbor za one koji ??ele laptop za svakodnevnu upotrebu. Radnje poput: slanje emailova, pisanje tekstova, surfanje internetom i dru??tvenim mre??ama, gledanje online filmova i sve one radnje koje ne optere??uju PROCESOR i RAM, i??i ??e im izvrsno. 
                       Najve??i plus je ??to dolaze s niskom cijenom i pristupa??ni su za ve??inu korisnika.
</ul><br><br</td>";
                        elseif($type->ime=='Periferija') 
                        echo "<td><ul><a class='a1link' style='color:black; ' href='carts_periferija'>
                        <img src='images/zvucnici.png' style='width:80px; height:80px'/>$type->ime</a><br>
                        Nudimo sve vrste periferijskih ure??aja, kao ??to su : tastature, mikrofoni, slu??alice, zvu??nici i sli??no. Ure??aji su kvalitetni i pouzdani, te dolaze sa garancijom.</ul></td>";
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