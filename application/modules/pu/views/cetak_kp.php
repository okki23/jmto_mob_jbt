<h1 align="center"> Tanda Konfirmasi Pesanan </h1>
 <div align="center">
    <img src="<?php echo base_url('upload/logo-fix.gif'); ?>" style="width: 150px; height: 50px;">
    </div>
<br>
<table width="100%" cellpadding="0" cellspacing="3" >
    <tr>
        <td style="width: 20%;"> Kode KP </td>
        <td style="width: 5%;"> : </td>
        <td style="width: 30%;"> <?php  echo $trans->no_pu; ?> </td>

        <td style="width: 20%;"> Nama Customer </td>
        <td style="width: 5%;"> : </td>
        <td style="width: 30%;"> <?php  echo $trans->nama_customer; ?> </td>

    </tr>
     <tr>
        <td style="width: 20%;"> Blok Tower </td>
        <td style="width: 5%;"> : </td>
        <td style="width: 30%;"> <?php  echo $trans->blok_tower; ?> </td>

        <td style="width: 20%;"> Cicilan </td>
        <td style="width: 5%;"> : </td>
        <td style="width: 30%;"> <?php  echo $trans->cicilan; ?> X Angsuran </td>
    </tr>

     <tr>
        <td style="width: 20%;"> Alamat </td>
        <td style="width: 5%;"> : </td>
        <td style="width: 30%;"> <?php  echo $trans->alamat; ?> </td>

        <td style="width: 20%;"> No HP </td>
        <td style="width: 5%;"> : </td>
        <td style="width: 30%;"> <?php  echo $trans->no_hp; ?> </td>
    </tr>
    <tr>
        <td colspan="6"> <h3> Sales  : <?php echo $trans->nik . " - ". $trans->nama_sales; ?>  </h3></td> 
    </tr>
    <tr>
        <td colspan="6"> <h3> Total Pembayaran :  </h3></td> 
    </tr>
      <tr>
        <td colspan="6"> <h3>  <?php echo "Rp. ".number_format($trans->harga,0); ?>    </h3></td> 
    </tr>
    
      <tr>
        <td colspan="6"> <h4> <i>Terbilang  " <?php echo ucwords(kekata($trans->harga))."Rupiah"; ?> "   </i></h4></td> 
    </tr>
   
   
</table>