<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class WebsiteSubdomainSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $subdomains = [
            "absensi.denpasarkota.go.id",
            "agama.denpasarkota.go.id",
            "aksarabali.denpasarkota.go.id",
            "akuwaras.denpasarkota.go.id",
            "amatya.denpasarkota.go.id",
            "antrianonline.denpasarkota.go.id",
            "arsip.denpasarkota.go.id",
            "arsipdpupr.denpasarkota.go.id",
            "aspirasi.dprd.denpasarkota.go.id",
            "atcs.denpasarkota.go.id",
            "balidenpasartrading.com",
            "bankdata.denpasarkota.go.id",
            "bapenda.denpasarkota.go.id",
            "bit.denpasarkota.go.id",
            "bkpp.denpasarkota.go.id",
            "bkpsdm.denpasarkota.go.id",
            "bpkad.denpasarkota.go.id",
            "bpm.denpasarkota.go.id",
            "bulanbungkarno.denpasarkota.go.id",
            "bumdesa.denpasarkota.go.id",
            "bursakerja.denpasarkota.go.id",
            "bussekolah.denpasarkota.go.id",
            "cantikpkk.denpasarkota.go.id",
            "cctvkir.denpasarkota.go.id",
            "cekcovid19.denpasarkota.go.id",
            "citytour.denpasarkota.go.id",
            "cloud.denpasarkota.go.id",
            "cloudbappeda.denpasarkota.go.id",
            "cloudptsp.denpasarkota.go.id",
            "covid19.denpasarkota.go.id",
            "creativecity.denpasarkota.go.id",
            "culture.denpasarkota.go.id",
            "dama.denpasarkota.go.id",
            "damakesmas.denpasarkota.go.id",
            "damamandala.denpasarkota.go.id",
            "damamaya.denpasarkota.go.id",
            "damapancana.denpasarkota.go.id",
            "danginpuri.denpasarkota.go.id",
            "danginpurikaja.denpasarkota.go.id",
            "danginpurikangin.denpasarkota.go.id",
            "danginpurikauh.denpasarkota.go.id",
            "danginpuriklod.denpasarkota.go.id",
            "dasi.denpasarkota.go.id",
            "dauhpuri.denpasarkota.go.id",
            "dauhpurikaja.denpasarkota.go.id",
            "dauhpurikangin.denpasarkota.go.id",
            "dauhpurikauh.denpasarkota.go.id",
            "dauhpuriklod.denpasarkota.go.id",
            "dcloud.denpasarkota.go.id",
            "demodata.denpasarkota.go.id",
            "denbar.denpasarkota.go.id",
            "densel.denpasarkota.go.id",
            "dentim.denpasarkota.go.id",
            "denut.denpasarkota.go.id",
            "desac.denpasarkota.go.id",
            "dewanpendidikan.denpasarkota.go.id",
            "diaspora.denpasarkota.go.id",
            "dinasperijinan.denpasarkota.go.id",
            "dinkes.denpasarkota.go.id",
            "divos.denpasarkota.go.id",
            "dota.denpasarkota.go.id",
            "dprd.denpasarkota.go.id",
            "e-harmoni.denpasarkota.go.id",
            "ekinerja.denpasarkota.go.id",
            "e-pajak.denpasarkota.go.id",
            "eparuman.denpasarkota.go.id",
            "eproc.denpasarkota.go.id",
            "ertlh.denpasarkota.go.id",
            "esewakadharma.denpasarkota.go.id",
            "esign.denpasarkota.go.id",
            "esign.env.denpasarkota.go.id",
            "esurat.denpasarkota.go.id",
            "forumanak.denpasarkota.go.id",
            "ftp.denpasarkota.go.id",
            "geo.demodata.denpasarkota.go.id",
            "geoportal.denpasarkota.go.id",
            "giskop.denpasarkota.go.id",
            "hargapasar.denpasarkota.go.id",
            "identik.denpasarkota.go.id",
            "infopasar.denpasarkota.go.id",
            "infopdam.denpasarkota.go.id",
            "infrastruktur.denpasarkota.go.id",
            "innovationday.denpasarkota.go.id",
            "inspektorat.denpasarkota.go.id",
            "jagabaya.denpasarkota.go.id",
            "jdih.denpasarkota.go.id",
            "jdihdprd.denpasarkota.go.id ",
            "kb.denpasarkota.go.id",
            "kebudayaan.denpasarkota.go.id",
            "kependudukan.denpasarkota.go.id",
            "kerjasama.denpasarkota.go.id",
            "kesbangpol.denpasarkota.go.id",
            "kesiman.denpasarkota.go.id",
            "kesimankertalangu.denpasarkota.go.id",
            "kesimanpetilan.denpasarkota.go.id",
            "kir.denpasarkota.go.id",
            "kir.denpasarkota.go.id",
            "kkks.denpasarkota.go.id",
            "kominfo.denpasarkota.go.id",
            "kominfostatistik.denpasarkota.go.id",
            "koni.denpasarkota.go.id",
            "koperasi.denpasarkota.go.id",
            "kotatangguh.denpasarkota.go.id",
            "kpa.denpasarkota.go.id",
            "kpndharmawiguna.denpasarkota.go.id",
            "laporkdrt.denpasarkota.go.id",
            "layananhi.denpasarkota.go.id",
            "lh.denpasarkota.go.id",
            "litbang.denpasarkota.go.id",
            "mayasitekmas.denpasarkota.go.id",
            "midep.denpasarkota.go.id",
            "monalisa.denpasarkota.go.id",
            "padangsambian.denpasarkota.go.id",
            "padangsambiankaja.denpasarkota.go.id",
            "padangsambianklod.denpasarkota.go.id",
            "pajak.denpasarkota.go.id",
            "panjer.denpasarkota.go.id",
            "pariwisata.denpasarkota.go.id",
            "paud.denpasarkota.go.id",
            "pauddentim.denpasarkota.go.id",
            "pdam.denpasarkota.go.id",
            "pdparkir.denpasarkota.go.id",
            "pdpasar.denpasarkota.go.id",
            "pedungan.denpasarkota.go.id",
            "peguyangan.denpasarkota.go.id",
            "peguyangankaja.denpasarkota.go.id",
            "peguyangankangin.denpasarkota.go.id",
            "pemecutan.denpasarkota.go.id",
            "pemecutankaja.denpasarkota.go.id",
            "pemecutankelod.denpasarkota.go.id",
            "pemogan.denpasarkota.go.id",
            "penanggulanganbencana.denpasarkota.go.id",
            "penatih.denpasarkota.go.id",
            "penatihdanginpuri.denpasarkota.go.id",
            "pendapatan.denpasarkota.go.id",
            "pendidikan.denpasarkota.go.id",
            "pengaduan.denpasarkota.go.id",
            "pengaduan.denpasarkota.go.id",
            "perhubungan.denpasarkota.go.id",
            "perijinan.denpasarkota.go.id",
            "perikanan.denpasarkota.go.id",
            "perindag.denpasarkota.go.id",
            "perkim.denpasarkota.go.id",
            "pertanian.denpasarkota.go.id",
            "perumdapasar.denpasarkota.go.id",
            "pkk.denpasarkota.go.id",
            "pmi.denpasarkota.go.id",
            "ppid.denpasarkota.go.id",
            "pu.denpasarkota.go.id",
            "pusatdata.denpasarkota.go.id",
            "puskesmasdenbar1.denpasarkota.go.id",
            "puskesmasdenbar2.denpasarkota.go.id",
            "puskesmasdensel1.denpasarkota.go.id",
            "puskesmasdensel2.denpasarkota.go.id",
            "puskesmasdensel3.denpasarkota.go.id",
            "puskesmasdensel4.denpasarkota.go.id",
            "puskesmasdentim1.denpasarkota.go.id",
            "puskesmasdentim2.denpasarkota.go.id",
            "puskesmasdenut1.denpasarkota.go.id",
            "puskesmasdenut12.denpasarkota.go.id",
            "puskesmasdenut19.denpasarkota.go.id",
            "puskesmasdenut2.denpasarkota.go.id",
            "puskesmasdenut20.denpasarkota.go.id",
            "puskesmasdenut3.denpasarkota.go.id",
            "pustakamade.denpasarkota.go.id",
            "radio.denpasarkota.go.id",
            "reform.denpasarkota.go.id",
            "renon.denpasarkota.go.id",
            "rkas.denpasarkota.go.id",
            "rsudwangaya.denpasarkota.go.id",
            "rujukanonline.denpasarkota.go.id",
            "rujukanonline.denpasarkota.go.id",
            "safecity.denpasarkota.go.id",
            "sanur.denpasarkota.go.id",
            "sanurkaja.denpasarkota.go.id",
            "sanurkauh.denpasarkota.go.id",
            "satudata.denpasarkota.go.id",
            "sdtv.denpasarkota.go.id",
            "serangan.denpasarkota.go.id",
            "sesetan.denpasarkota.go.id",
            "setda.denpasarkota.go.id",
            "siap.denpasarkota.go.id",
            "sidakarya.denpasarkota.go.id",
            "sidandaniti.denpasarkota.go.id",
            "sidarling.denpasarkota.go.id",
            "sidi.denpasarkota.go.id",
            "sidok.denpasarkota.go.id",
            "sidoping.denpasarkota.go.id",
            "sijuna.denpasarkota.go.id",
            "simdik.denpasarkota.go.id",
            "simkesbang.denpasarkota.go.id",
            "simonev.denpasarkota.go.id",
            "simpeg.denpasarkota.go.id",
            "simponi.denpasarkota.go.id",
            "simyandes.denpasarkota.go.id",
            "simyandu.denpasarkota.go.id",
            "sinjab.denpasarkota.go.id",
            "sinkrondapodik.denpasarkota.go.id",
            "sipapa.denpasarkota.go.id",
            "sipoint.denpasarkota.go.id",
            "sipone.denpasarkota.go.id",
            "sirekon.denpasarkota.go.id",
            "smartcity.denpasarkota.go.id",
            "sosial.denpasarkota.go.id",
            "spbe.denpasarkota.go.id",
            "sso.denpasarkota.go.id",
            "stafahli.denpasarkota.go.id",
            "sumerta.denpasarkota.go.id",
            "sumertakaja.denpasarkota.go.id",
            "sumertakauh.denpasarkota.go.id",
            "sumertaklod.denpasarkota.go.id",
            "tangkalhoax.denpasarkota.go.id",
            "taringdukcapil.denpasarkota.go.id",
            "tegalharum.denpasarkota.go.id",
            "tegalkertha.denpasarkota.go.id",
            "tenagakerja.denpasarkota.go.id",
            "tnde.denpasarkota.go.id",
            "tonja.denpasarkota.go.id",
            "trantib.denpasarkota.go.id",
            "ubung.denpasarkota.go.id",
            "ubungkaja.denpasarkota.go.id",
            "ukmdiskop.denpasarkota.go.id",
            "ulp.denpasarkota.go.id",
            "widyasastra.denpasarkota.go.id"

        ];

        DB::table('website_subdomains')->truncate();

        foreach ($subdomains as $subdomain) {
            DB::table('website_subdomains')->insert([
                'link_website' => $subdomain
            ]);
        }
    }
}
