#!/bin/bash
# Bloqueo Facil : Programa y Codigo Fuente libre, gratis, free.
# Licencia G.P.L.
# Autores: jmanuel_cool (jalgas_cool@yahoo.es) Nitsuga <agustin.dallalba@gmail.com>
# 
# Precaución, debe ejecutarse como root
#Comprueba si quien ejecuta el script es root, y si no es root, se re-ejecuta como root.
[ "$UID" != "0" ] && gksu --description "Bloqueo Fácil" $0
#Cuando temrina de ejecutarse como root, no va a tratar de ejecutarse como no-root
[ "$UID" != "0" ] && exit
# Bienvenida al programa incluye breve explicacion
zenity --info --title="Bloqueador de Páginas Web"  --text="Bloqueador de Páginas Web : Bienvenid@ le ayudare a bloquear páginas indeseadas con unas sencillas preguntas. "
# Copia el Archivo "HOSTS" que contiene las páginas Bloqueadas
zenity --info --title="Bloqueador de Páginas Web"  --text="Comenzemos!, Necesitamos editar el Archivo\n'/etc/hosts', tomese su tiempo\n\nLEA cada pantalla y conteste adecuadamente."
# Seleccionar el tipo de accion a tomar

while true; do
  choice="$(zenity --width=400 --height=300 --list --column "" --title="Bloqueador de Páginas Web" \
  "Bloquear Páginas Web" \
  "Salir ")"

  case "${choice}" in
    "Bloquear Páginas Web" )
      while true; do
        choice2="$(zenity --width=400 --height=300 --list --column "" --title="Bloqueador de Páginas Web" \
          "Bloquear Páginas Predeterminadas" \
          "Bloquear Páginas Individuales" \
          "Regresar")"

        case "${choice2}" in
          "Bloquear Páginas Predeterminadas" )
            zenity --warning --title="Bloqueador de Páginas Web" --text=" Las siguientes páginas se bloquearon por su contenido el cual va desde pornografía hasta malware (virus, gusanos, etc). "
            zenity --info --title="Bloqueador de Páginas Web" --text=" Ahora se Añadirán unas 16.300 Páginas para bloquear en el archivo 'hosts'. "
            (
sudo cat >/etc/hosts <<\EndOfFile

#start of lines added by WinHelp2002

# [Misc A - Z]

127.0.0.1  fr.a2dfp.net

127.0.0.1  m.fr.a2dfp.net

127.0.0.1  ad.a8.net

127.0.0.1  asy.a8ww.net

127.0.0.1  acezip.net #[SiteAdvisor.acezip.net]

127.0.0.1  www.acezip.net #[Win32/Adware.180Solutions]

127.0.0.1  phpadsnew.abac.com

127.0.0.1  a.abnad.net

127.0.0.1  b.abnad.net

127.0.0.1  c.abnad.net #[eTrust.Tracking.Cookie]

127.0.0.1  d.abnad.net

127.0.0.1  e.abnad.net

127.0.0.1  t.abnad.net

127.0.0.1  z.abnad.net

127.0.0.1  banners.absolpublisher.com

127.0.0.1  tracking.absolstats.com

127.0.0.1  adv.abv.bg

127.0.0.1  bimg.abv.bg

127.0.0.1  www2.a-counter.kiev.ua

127.0.0.1  track.acclaimnetwork.com

127.0.0.1  accuserveadsystem.com

127.0.0.1  www.accuserveadsystem.com

127.0.0.1  gtb5.acecounter.com

127.0.0.1  gtb19.acecounter.com

127.0.0.1  gtcc1.acecounter.com

127.0.0.1  gtp1.acecounter.com #[eTrust.Tracking.Cookie]

127.0.0.1  wgc1.acecounter.com

127.0.0.1  acestats.com

127.0.0.1  www.acestats.com

127.0.0.1  achmedia.com

127.0.0.1  ads.active.com

127.0.0.1  am1.activemeter.com

127.0.0.1  www.activemeter.com #[eTrust.Tracking.Cookie]

127.0.0.1  ads.activepower.net

127.0.0.1  stat.active24stats.nl #[eTrust.Tracking.Cookie]

127.0.0.1  ad2games.com

127.0.0.1  ad.ad24.ru

127.0.0.1  cms.ad2click.nl

127.0.0.1  ads.ad2games.com

127.0.0.1  as.ad611.com

127.0.0.1  banner.ad.nu

127.0.0.1  cl21.v4.adaction.se

127.0.0.1  www.adagencypro.com

127.0.0.1  ads.adap.tv

127.0.0.1  tag1.adaptiveads.com

127.0.0.1  ff.adatoms.com #[Adware.MyCentria]

127.0.0.1  update.adatoms.com

127.0.0.1  www.adbanner.ro

127.0.0.1  vad.adbasket.net

127.0.0.1  adbard.net

127.0.0.1  web.adblade.com

127.0.0.1  ad.pop1.adbn.ru

127.0.0.1  ad.top1.adbn.ru

127.0.0.1  ad.rich1.adbn.ru

127.0.0.1  www.adblick.com

127.0.0.1  adserv.adbonus.com

127.0.0.1  www.adbonus.com

127.0.0.1  james.adbutler.de #[Tenebril.TrackingCookie]

127.0.0.1  www.adbutler.de #[SunBelt.AdButler.de]

127.0.0.1  adc2.adcentriconline.com

127.0.0.1  adcp.adcentriconline.com

127.0.0.1  bell.adcentriconline.com #[Wildcard DNS]

127.0.0.1  content.adcentriconline.com

127.0.0.1  media.adcentriconline.com

127.0.0.1  publicis.adcentriconline.com

127.0.0.1  ad-clix.com

127.0.0.1  www.ad-clix.com

127.0.0.1  adcomplete.com

127.0.0.1  www.adcomplete.com

127.0.0.1  axa.addcontrol.net #[Ewido.TrackingCookie.Addcontrol]

127.0.0.1  www.add-hhh.info #[TR/Dialer.22352.B]

127.0.0.1  ads.addynamix.com #[SpySweeper.Spy.Cookie]

127.0.0.1  e13.media.addynamix.com

127.0.0.1  www.adeos.eu

127.0.0.1  pt.server1.adexit.com

127.0.0.1  www.adexit.com

127.0.0.1  www.ad4ever.com

127.0.0.1  track.adform.net

127.0.0.1  ads.adfox.ru

127.0.0.1  gazeta.adfox.ru

127.0.0.1  www.adgroups.net

127.0.0.1  www.ad-groups.com #[Ban Man Pro Banner Code]

127.0.0.1  host1.adhese.be #[Adhese Datamine Tag]

127.0.0.1  host2.adhese.be

127.0.0.1  host3.adhese.be #[ad.be.doubleclick.net]

127.0.0.1  host4.adhese.be

127.0.0.1  ads.adhsm.adhese.com

127.0.0.1  pool.adhsm.adhese.com

127.0.0.1  ssl3.adhost.com

127.0.0.1  www2.adhost.com

127.0.0.1  mztag.ad-indicator.com

127.0.0.1  zone10.adicate.com

127.0.0.1  adfarm1.adition.com

127.0.0.1  imagesrv.adition.com

127.0.0.1  ad.adition.net

127.0.0.1  hosting.adjug.com

127.0.0.1  tracking.adjug.com

127.0.0.1  adsearch.adkontekst.pl

127.0.0.1  community.adlandpro.com #[Ad-Aware Tracking.Cookie]

127.0.0.1  pk.adlandpro.com

127.0.0.1  te.adlandpro.com #[eTrust.Tracking.Cookie]

127.0.0.1  trafficex.adlandpro.com

127.0.0.1  www.adlandpro.com #[Ad-Aware Tracking.Cookie]

127.0.0.1  whip.adlash.com

127.0.0.1  publicidad.adlead.com

127.0.0.1  www.adlimg03.com

127.0.0.1  classic.adlink.de

127.0.0.1  regio.adlink.de

127.0.0.1  west.adlink.de

127.0.0.1  rc.de.adlink.net #[eTrust.Tracking.Cookie]

127.0.0.1  tr.de.adlink.net

127.0.0.1  ads3.adman.gr #[eTrust.Tracking.Cookie]

127.0.0.1  r2d2.adman.gr

127.0.0.1  js.admeld.com

127.0.0.1  tag.admeld.com

127.0.0.1  admigo.ru

127.0.0.1  data.admigo.ru

127.0.0.1  www.adminder.com #[SpySweeper.Spy.Cookie]

127.0.0.1  apps.admission.net #[Spotlight Ads]

127.0.0.1  appcache.admission.net

127.0.0.1  view.admission.net

127.0.0.1  rms.admeta.com #[admeta.basefarm.net][eTrust.Tracking.Cookie]

127.0.0.1  ads.admodus.com #[eTrust.Tracking.Cookie]

127.0.0.1  ad.adnet.biz #[eTrust.Tracking.Cookie]

127.0.0.1  ad.adnetwork.com.br

127.0.0.1  adnext.fr

127.0.0.1  ib.adnxs.com #[Google.Diagnostic]

127.0.0.1  adpixel.com.ru

127.0.0.1  tt11.adobe.com #[adobe.tcliveus.com]

127.0.0.1  agoraua.adocean.pl

127.0.0.1  s1.ad.adocean.pl #[Ewido.Tracking.Cookie]

127.0.0.1  s1.advicepl.adocean.pl

127.0.0.1  s1.centrumcz.adocean.pl #[eTrust.Tracking.Cookie]

127.0.0.1  s1.cz.adocean.pl

127.0.0.1  s1.czgde.adocean.pl

127.0.0.1  s1.gg.adocean.pl

127.0.0.1  s1.gojobsru.adocean.pl

127.0.0.1  s1.idg.adocean.pl

127.0.0.1  s1.my.adocean.pl

127.0.0.1  s1.myao.adocean.pl

127.0.0.1  s1.pracuj.adocean.pl

127.0.0.1  s1.skgde.adocean.pl

127.0.0.1  s2.ad.adocean.pl

127.0.0.1  webgroundbg.adocean.pl

127.0.0.1  ad01.adonspot.com

127.0.0.1  ad02.adonspot.com

127.0.0.1  www.adplz.com

127.0.0.1  ab.adpro.com.ua

127.0.0.1  system.adquick.nl

127.0.0.1  www.adquest.nl

127.0.0.1  www.adreap.com #[Parking Service]

127.0.0.1  adx.adrenaline.cz

127.0.0.1  adroll.com

127.0.0.1  c.adroll.com

127.0.0.1  www.adsforindians.com

127.0.0.1  www.adranking.de

127.0.0.1  www.adreporting.com #[SunBelt.Adreporting.com]

127.0.0.1  cntr.adrime.com

127.0.0.1  images.adrime.com #[Adsolutions]

127.0.0.1  ad.adriver.ru

127.0.0.1  www.adrotate.net

127.0.0.1  serv.ad-rotator.com #[SpySweeper.Spy.Cookie]

127.0.0.1  ad.ads8.com

127.0.0.1  vip.ads8.com

127.0.0.1  www.ads183.com

127.0.0.1  antevenio.flux.ads-click.com

127.0.0.1  engage2.advanstar.com

127.0.0.1  www.advpoints.com

127.0.0.1  acnetwork.flux.acsyndication.com

127.0.0.1  img.ads-click.com

127.0.0.1  ad.ads.dk

127.0.0.1  tdkads.ads.dk

127.0.0.1  js.adscale.de

127.0.0.1  ih.adscale.de

127.0.0.1  www.adsentra.com

127.0.0.1  www.adservtech.com

127.0.0.1  adservicedomain.info

127.0.0.1  adsfac.net #[Facilitate Tracking Code]

127.0.0.1  images.adshuffle.com

127.0.0.1  this.content.served.by.adshuffle.com

127.0.0.1  adsfac.eu

127.0.0.1  www.adshot.de

127.0.0.1  network.adsmarket.com

127.0.0.1  allchix.adsmax.com

127.0.0.1  www2.adsmax.com

127.0.0.1  www.adsodainteractive.com

127.0.0.1  www.adspace.be

127.0.0.1  ads.adsponse.de

127.0.0.1  adserve.adster.com

127.0.0.1  images.adster.com

127.0.0.1  www.adstreamsupply.com

127.0.0.1  o.adtargeter.com

127.0.0.1  openx.adtext.ro

127.0.0.1  ads.adtiger.de

127.0.0.1  www.adtiger.de

127.0.0.1  ads.adgoto.com

127.0.0.1  ad.adtoma.com

127.0.0.1  downldcl.adtoolsinc.com

127.0.0.1  www.adtoolsinc.com

127.0.0.1  adtrade.ro

127.0.0.1  www.adtrade.ro

127.0.0.1  www.adtrade.net

127.0.0.1  www.adtrader.com

127.0.0.1  adtraf.ru

127.0.0.1  ads.adtube.de

127.0.0.1  adultadmoney.com

127.0.0.1  www.adultadmoney.com

127.0.0.1  ad.adver.com.tw

127.0.0.1  ads.advertise.net

127.0.0.1  www.advertisingstats.com

127.0.0.1  advertisingpurchase.com

127.0.0.1  ad.adverticum.net

127.0.0.1  img.adverticum.net

127.0.0.1  imgs.adverticum.net

127.0.0.1  www.advertising365.com

127.0.0.1  ad.advertstream.com

127.0.0.1  images.adviews.de

127.0.0.1  www.adviews.de

127.0.0.1  ad.adworx.at

127.0.0.1  www.ad-z.de

127.0.0.1  hits.affiliatetraction.com

127.0.0.1  banners.affilimatch.de

127.0.0.1  tracker.affistats.com #[msvrl.dll]

127.0.0.1  adz.afterdawn.net

127.0.0.1  stats.agent.co.il

127.0.0.1  rmbannerserver.agestado.com.br

127.0.0.1  stats.agentinteractive.com

127.0.0.1  d.aggregateknowledge.com

127.0.0.1  ads.airamerica.com

127.0.0.1  adserver.akqa.net #[Ad-Aware Tracking.Cookie]

127.0.0.1  download.alexa.com #[Trackware.Alexa][SPYW_ALEXA.A]

127.0.0.1  certify.alexametrics.com

127.0.0.1  download.china.alibaba.com #[Adware.AlibabaTB][AdWare.ToolBar.Alibabar.b]

127.0.0.1  tracking.allposters.com

127.0.0.1  ad.allstar.cz

127.0.0.1  network.alluremedia.com.au

127.0.0.1  adtaobao.allyes.cn

127.0.0.1  taobaoafp.allyes.cn

127.0.0.1  bokee.allyes.com

127.0.0.1  demoafp.allyes.com

127.0.0.1  eastmoney.allyes.com

127.0.0.1  smarttrade.allyes.com

127.0.0.1  sroomafp.allyes.com

127.0.0.1  taobaoafp.allyes.com

127.0.0.1  tom.allyes.com

127.0.0.1  uuseeafp.allyes.com

127.0.0.1  yeskyafp.allyes.com

127.0.0.1  www.almondnetworks.com

127.0.0.1  www.almoso3h.com #[Trojan-PSW.Win32.VB.cl]

127.0.0.1  www.alsaloumainvestment.com #[Win32/SpamTool.Gadina]

127.0.0.1  ad.altervista.org

127.0.0.1  pqwaker.altervista.org

127.0.0.1  bantam.ai.net

127.0.0.1  fiona.ai.net

127.0.0.1  adimg.alice.it

127.0.0.1  adv.alice.it

127.0.0.1  altmedia101.com

127.0.0.1  adserver.alt.com

127.0.0.1  count1.altastat.com

127.0.0.1  feed1.altastat.com

127.0.0.1  www.alwayson-network.com

127.0.0.1  ads.amdmb.com

127.0.0.1  cache.amefin.com

127.0.0.1  widgets.amung.us

127.0.0.1  whos.amung.us #[WebBug]

127.0.0.1  dynamic1.anandtech.com

127.0.0.1  dynamic2.anandtech.com

127.0.0.1  advert.ananzi.co.za

127.0.0.1  advert2.ananzi.co.za

127.0.0.1  adserver.ancestry.com #[RealMedia]

127.0.0.1  adserver04.ancestry.com #[RealMedia]

127.0.0.1  box.anchorfree.net

127.0.0.1  www.andyhoppe.com

127.0.0.1  www.antarasystems.com

127.0.0.1  www.anticlown.com

127.0.0.1  ads.antionline.com

127.0.0.1  junior.apk.net

127.0.0.1  ads.applinet.nl

127.0.0.1  applyads.com

127.0.0.1  ad.aquamediadirect.com #[ib.adnxs.com][Google.Diagnostic]

127.0.0.1  arank.com

127.0.0.1  ad2.arbocontext.ro

127.0.0.1  nu.arnostat.nl

127.0.0.1  banner.arttoday.com

127.0.0.1  ads.asia1.com.sg

127.0.0.1  asimpleinternet.com #[Tenebril.SpecialOffers]

127.0.0.1  www.asimpleinternet.com

127.0.0.1  ads.ask.com #[sv-click.looksmart.com]

127.0.0.1  contextual.syndication.ask.com

127.0.0.1  www.asknew.com #[Spamdexing]

127.0.0.1  ads.asp.net

127.0.0.1  ads.aspalliance.com

127.0.0.1  www.astoplist.com

127.0.0.1  ads.associatedcontent.com

127.0.0.1  www.ati-etailer.de

127.0.0.1  ads.auctionads.com

127.0.0.1  audiogalaxy.com

127.0.0.1  www.audiogalaxy.com

127.0.0.1  banners.audioholics.com

127.0.0.1  ads.auctioncity.co.nz

127.0.0.1  rotabanner.auto.ru

127.0.0.1  as.autoforums.com

127.0.0.1  ads.autotrader.co.za

127.0.0.1  adserving.autotrader.com #[SunBelt.AdServing.AutoTrader.com]

127.0.0.1  avantlink.com

127.0.0.1  www.avantlink.com

127.0.0.1  www.avsads.com

127.0.0.1  rev.avsforum.com

127.0.0.1  engine.awaps.net

127.0.0.1  analytics.aweber.com

127.0.0.1  ab44aa.r.axf8.net

127.0.0.1  b3a70b.t.axf8.net

127.0.0.1  c2c738.r.axf8.net

127.0.0.1  caea4e.r.axf8.net

127.0.0.1  caea4e.t.axf8.net

127.0.0.1  e3f364.r.axf8.net

127.0.0.1  fdff44.r.axf8.net

127.0.0.1  fdff44.t.axf8.net

127.0.0.1  axload.to #[Adware.Webprefix][Trojan.Downloader.6588.E]

127.0.0.1  valid.axload.to

# [B]

127.0.0.1  ads.badische-zeitung.de

127.0.0.1  bar.baidu.com #[Win32/Adware.Toolbar.Baidu][Sophos.JS/BDHelper-A]

127.0.0.1  download.baigoo.com #[AdWare.Win32.Baigoo.a][Trackware.Baigoo]

127.0.0.1  www.baltictop.com

127.0.0.1  error.banan.cz

127.0.0.1  adsrv.bankrate.com

127.0.0.1  adserver.banneradministration.com

127.0.0.1  www.banner-exchange.nl

127.0.0.1  www.bannergratis.it

127.0.0.1  ad.bannerhost.ru

127.0.0.1  banners.bannerlandia.com.ar

127.0.0.1  www.bannermanagement.nl

127.0.0.1  www.banner-rotation.com

127.0.0.1  www.bannerspace.com

127.0.0.1  www3.bannerspace.com #[SpySweeper.Spy.Cookie]

127.0.0.1  www5.bannerspace.com

127.0.0.1  www6.bannerspace.com

127.0.0.1  www7.bannerspace.com #[Tenebril.Tracking.Cookie]

127.0.0.1  banners.bariloche.org

127.0.0.1  ads.vg.basefarm.net #[RealMedia]

127.0.0.1  ad.batanga.com

127.0.0.1  vign_foxnews-news.baynote.net

127.0.0.1  ads.baz.ch

127.0.0.1  ad16.bb.ru

127.0.0.1  ad2.bbmedia.cz

127.0.0.1  adidnes2.bbmedia.cz

127.0.0.1  bbeplayer.com #[WebBug]

127.0.0.1  stat.bdirect.ru

127.0.0.1  ad.beepworld.de

127.0.0.1  autocontext.begun.ru

127.0.0.1  promo.begun.ru

127.0.0.1  referal.begun.ru

127.0.0.1  www.belstat.be

127.0.0.1  www.belstat.com

127.0.0.1  www.belstat.nl

127.0.0.1  oas.benchmark.fr #[RealMedia]

127.0.0.1  webtrends.besite.be

127.0.0.1  www.bestofferdirect.com

127.0.0.1  www.besttoolbars.net #[ADW_TBARWIN32.A]

127.0.0.1  www.best-top.ro

127.0.0.1  ads.betanews.com

127.0.0.1  banner.betfred.com

127.0.0.1  cmss.bettersex.com #[WebBug.eluminate]

127.0.0.1  www.bettertextads.com

127.0.0.1  ads.beyond.com

127.0.0.1  bgtop100.com

127.0.0.1  stats.big-boards.com

127.0.0.1  bighop.com

127.0.0.1  ad0.bigmir.net

127.0.0.1  ad1.bigmir.net

127.0.0.1  ad4.bigmir.net

127.0.0.1  ad5.bigmir.net

127.0.0.1  ad6.bigmir.net

127.0.0.1  ad7.bigmir.net

127.0.0.1  adi.bigmir.net

127.0.0.1  c.bigmir.net #[SecuritySpace.WebBug]

127.0.0.1  i.bigmir.net

127.0.0.1  bigtracker.com

127.0.0.1  bighits.net

127.0.0.1  bounty.bighits.net

127.0.0.1  www.bighits.net

127.0.0.1  counter.bigli.ru

127.0.0.1  banex.bikers-engine.com

127.0.0.1  ad2.billboard.cz

127.0.0.1  bill-support.com

127.0.0.1  bin-layer.ru

127.0.0.1  adserver.bizhat.com

127.0.0.1  dc.bizjournals.com

127.0.0.1  server2.bkvtrack.com

127.0.0.1  ads2.blastro.com

127.0.0.1  ads3.blastro.com

127.0.0.1  ads4.blastro.com

127.0.0.1  blatsnarf.net

127.0.0.1  ads.blick.ch

127.0.0.1  ads.blizzard.com

127.0.0.1  ads.blog.com

127.0.0.1  blogcounter.com

127.0.0.1  ads.blogdrive.com

127.0.0.1  mapstats.blogflux.com

127.0.0.1  topsites.blogflux.com

127.0.0.1  ad.blogged.com

127.0.0.1  pcbutts1-therealtruth.blogspot.com

127.0.0.1  t.blogreaderproject.com #[WebBug]

127.0.0.1  www.blogtoplist.com

127.0.0.1  ads.bloodhorse.com

127.0.0.1  adserver.bloodhorse.com

127.0.0.1  blogmark.bokee.com #[Adware.BocaiToolbar]

127.0.0.1  track.blogcounter.de

127.0.0.1  www.blogcounter.de

127.0.0.1  ads.blogherads.com

127.0.0.1  blueadvertise.com #[Google.Diagnostic]

127.0.0.1  adserver2.blueadvertise.com

127.0.0.1  cbpublishing.blueadvertise.com

127.0.0.1  creditburner.blueadvertise.com

127.0.0.1  tags.bluekai.com

127.0.0.1  adserver.bluewin.ch

127.0.0.1  www.blvdstatus.com

127.0.0.1  ie-stat.bmmetrix.com

127.0.0.1  t.bmmetrix.com

127.0.0.1  www.bmmetrix.com #[WebBug][Tracking.Cookie]

127.0.0.1  ads.boardtracker.com

127.0.0.1  ranks.boardtracker.com

127.0.0.1  ad.bodybuilding.com

127.0.0.1  adimage.bokee.com

127.0.0.1  ad.bol.bg

127.0.0.1  adv.bol.bg

127.0.0.1  ads.bomis.com

127.0.0.1  banners.bookmaker.com

127.0.0.1  ccc.boolans.com #[Adware.Rugo]

127.0.0.1  err.boom.ru

127.0.0.1  www.borlander.com.cn #[ADSPY/Boran.X.19.C]

127.0.0.1  adc.brandreachsys.com

127.0.0.1  220.count.brat-online.ro

127.0.0.1  qds.count.brat-online.ro

127.0.0.1  bans.bride.ru

127.0.0.1  ads.bridgetrack.com

127.0.0.1  cc.bridgetrack.com

127.0.0.1  citi.bridgetrack.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  citi.bridgetrack.com.edgesuite.net

127.0.0.1  rccl.bridgetrack.com #[MVPS.Criteria]

127.0.0.1  goku.brightcove.com #[WebBug]

127.0.0.1  adsrv2.brownpride.com

127.0.0.1  www.browserplugin.com #[HJTH.EroticAccess][wobz.de]

127.0.0.1  bsdpng.info

127.0.0.1  btbilgisayarkursu.com #[Win32/TrojanDownloader.Small.AWA]

127.0.0.1  www.btbilgisayarkursu.com #[Win32/TrojanDownloader.Small.AWA]

127.0.0.1  ads.buddypic.com

127.0.0.1  www.bulletads.com

127.0.0.1  bullz-eye-ads.com

127.0.0.1  bunnezone.com #[Win32/Jep.Russ]

127.0.0.1  ad1.bustcash.com

127.0.0.1  www.buycheapadvertising.com

127.0.0.1  s3.buysellads.com

127.0.0.1  stats.buysellads.com

127.0.0.1  txads.buzzcity.com

127.0.0.1  www.buzzclick.com

127.0.0.1  adnetwork.buzzlogic.com

127.0.0.1  tr.buzzlogic.com

127.0.0.1  byet.org

127.0.0.1  tracking.byindia.com

127.0.0.1  blog.byethost.com

# [C]

127.0.0.1  ads.calgarystampede.com

127.0.0.1  www.cambodiaoutsourcing.com

127.0.0.1  ads.canalblog.com

127.0.0.1  stats.canalblog.com

127.0.0.1  ads.caniamedia.com

127.0.0.1  ad.caradisiac.com

127.0.0.1  ads.cardplayer.com

127.0.0.1  ads.cars.com

127.0.0.1  images.cashfiesta.com #[AdWare.CashFiesta.a]

127.0.0.1  www.cashfiesta.com #[McAfee.Adware-CashFiesta]

127.0.0.1  www.cashfiesta.net

127.0.0.1  www.cashtrafic.com

127.0.0.1  banner.casinoking.com #[AdWare.Win32.Casino.ae]

127.0.0.1  cativern.com

127.0.0.1  www.cbproads.com

127.0.0.1  ads.cbtopsites.com

127.0.0.1  www.cd321.com

127.0.0.1  ads.cdfreaks.com #[eTrust.Ads.cdfreaks]

127.0.0.1  cetrk.com #[Crazy Egg]

127.0.0.1  adserver.cducinema.com

127.0.0.1  cts.channelintelligence.com #[switch.atdmt.com]

127.0.0.1  chapmanmediagroup.com

127.0.0.1  www.champrank.de

127.0.0.1  count.channeladvisor.com

127.0.0.1  ping.chartbeat.net

127.0.0.1  static.chartbeat.net

127.0.0.1  abc.checkm8.com

127.0.0.1  logiagroup.checkm8.com

127.0.0.1  logiagroupdigital.checkm8.com

127.0.0.1  minyanville.checkm8.com

127.0.0.1  ny.checkm8.com

127.0.0.1  q1digital.checkm8.com

127.0.0.1  rmm1u.checkm8.com

127.0.0.1  txmonthly.checkm8.com

127.0.0.1  web.checkm8.com #[CHECKM8 AD TAGS]

127.0.0.1  web2.checkm8.com

127.0.0.1  ads.checkm8.co.za

127.0.0.1  code.checkstat.nl

127.0.0.1  www.checkstat.nl

127.0.0.1  checkmystats.com.au

127.0.0.1  ads.china.com

127.0.0.1  ad.chip.de

127.0.0.1  chromet.com #[Win32/Agent.ETH]

127.0.0.1  ad.cibleclick.com #[eTrust.Cibleclick]

127.0.0.1  www.cibleclick.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  www.classicequipment.com #[Google.Warning]

127.0.0.1  board.classifieds1000.com

127.0.0.1  xp.classifieds1000.com

127.0.0.1  www.classifieds1000.com #[SiteAdvisor.classifieds1000.com]

127.0.0.1  images.clckm.com

127.0.0.1  pics.clckm.com #[Parking Service]

127.0.0.1  clear-search.com

127.0.0.1  www.clear-search.com #[eTrust.Clear-Search]

127.0.0.1  ads.clickad.com #[eTrust.Tracking.Cookie]

127.0.0.1  clickbank.net #[Ad-Aware.Tracking.Cookie]

127.0.0.1  hop.clickbank.net #[Adware.Clickbank][Adware.ClickDLoader]

127.0.0.1  ssl.clickbank.net

127.0.0.1  zzz.clickbank.net #[Ewido.TrackingCookie.Clickbank]

127.0.0.1  publishers.clickbooth.com #[directleads.com]

127.0.0.1  serve.clickbooth.com

127.0.0.1  clickboothlnk.com

127.0.0.1  www.clickboothlnk.com

127.0.0.1  j.clickdensity.com

127.0.0.1  r.clickdensity.com

127.0.0.1  cf-db01.clickfacts.com

127.0.0.1  server104.clickfacts.com #[ClickFacts Tracking Beacon]

127.0.0.1  www.clickmanage.com

127.0.0.1  clicktracks.com #[McAfee.Cookie-Clicktracks]

127.0.0.1  stats.clicktracks.com #[Tenebril.Tracking.Cookie]

127.0.0.1  stats1.clicktracks.com # [eTrust.Tracking.Cookie]

127.0.0.1  stats2.clicktracks.com #[SpySweeper.Spy.Cookie]

127.0.0.1  stats3.clicktracks.com

127.0.0.1  stats4.clicktracks.com

127.0.0.1  www.clicktracks.com #[SunBelt.ClickTracks]

127.0.0.1  clickunder.net

127.0.0.1  www.is1.clixgalore.com

127.0.0.1  www.clixgalore.com

127.0.0.1  www.clickhouse.com #[SunBelt.ClickHouse]

127.0.0.1  www.clicksbroker.com

127.0.0.1  ad1.clickhype.com #[Ewido.TrackingCookie.Clickhype]

127.0.0.1  ad2.clickhype.com

127.0.0.1  ad3.clickhype.com

127.0.0.1  clicktorrent.info

127.0.0.1  static.clicktorrent.info

127.0.0.1  www.clicktorrent.info #[phpAds]

127.0.0.1  www1.clicktorrent.info

127.0.0.1  www.clocklink.com

127.0.0.1  banner.clubdicecasino.com

127.0.0.1  adserver.clix.pt

127.0.0.1  s.clx.ru

127.0.0.1  ad.cmfu.com

127.0.0.1  www.cpmads.org

127.0.0.1  c.cnstats.ru

127.0.0.1  www.cnstats.com

127.0.0.1  www.co2stats.com

127.0.0.1  ad.coas2.co.kr

127.0.0.1  collectiveads.net

127.0.0.1  a.collective-media.net

127.0.0.1  b.collective-media.net

127.0.0.1  www.combimedia.nl

127.0.0.1  bdx.comclick.com

127.0.0.1  br.comclick.com

127.0.0.1  ct2.comclick.com #[Tenebril.Tracking.Cookie]

127.0.0.1  fl01.ct2.comclick.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  ihm01.ct2.comclick.com

127.0.0.1  www.comclick.com #[Ewido.TrackingCookie.Comclick]

127.0.0.1  www.commissionempire.com

127.0.0.1  banners.commissionking.com

127.0.0.1  www.compactads.com

127.0.0.1  www.comprabanner.eu

127.0.0.1  count1.compteur.fr

127.0.0.1  aa.connextra.com

127.0.0.1  bb.connextra.com #[a22.g.akamai.net]

127.0.0.1  cc.connextra.com

127.0.0.1  dd.connextra.com

127.0.0.1  ee.connextra.com

127.0.0.1  ff.connextra.com #[a22.g.akamai.net]

127.0.0.1  data.connextra.com

127.0.0.1  ads.consumeraffairs.com

127.0.0.1  ads.contact.md

127.0.0.1  ads.contactmusic.com #[AdvertPro]

127.0.0.1  servedby.contextuad.org

127.0.0.1  svp.contextuad.org #[SunBelt.ContextuAd]

127.0.0.1  www.contextualadv.com

127.0.0.1  www.contextpanel.com #[searchant.com]

127.0.0.1  ad2.cooks.com

127.0.0.1  copy-past.cn #[Google.Diagnostic]

127.0.0.1  banners.copyscape.com

127.0.0.1  www.countit.ch

127.0.0.1  www.countall.com

127.0.0.1  counter.co.kz

127.0.0.1  www.counter-gratis.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  www.countercentral.com

127.0.0.1  www.counterdata.com

127.0.0.1  www.counterguide.com

127.0.0.1  log3.countomat.com

127.0.0.1  counter-shop.net

127.0.0.1  www.counter4you.net

127.0.0.1  www.counters4u.com

127.0.0.1  htm-pop-ky.counterstat.net

127.0.0.1  www.counting4free.com

127.0.0.1  www.counter.cz

127.0.0.1  www.counti.de

127.0.0.1  www.countmypage.com

127.0.0.1  log1.countomat.com

127.0.0.1  connectionzone.com

127.0.0.1  data.coremetrics.com

127.0.0.1  test.coremetrics.com #[SpySweeper.Spy.Cookie]

127.0.0.1  twci.coremetrics.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  banner.coza.com

127.0.0.1  www.cpaclicks.com #[Spamdexing]

127.0.0.1  data.cpalead.com

127.0.0.1  www.cpays.com

127.0.0.1  server.cpmstar.com #[ads.shizmoo.com]

127.0.0.1  panther1.cpxinteractive.com

127.0.0.1  cracks.am #[eTrust.Cracks.am][ADW_CRAMTB.A]

127.0.0.1  www.cracks.am #[fuck-portal.com][Adware.CramToolbar]

127.0.0.1  ads.cracked.com

127.0.0.1  track.cracked.com

127.0.0.1  ads1.cricbuzz.com

127.0.0.1  www.cridem-ads.com

127.0.0.1  ads.crosswinds.net

127.0.0.1  ping.crowdscience.com

127.0.0.1  static.crowdscience.com

127.0.0.1  ads.crucialparadigm.com

127.0.0.1  crypter-j.net #[Win32/Bifrose.NEL]

127.0.0.1  ads.cyberax.com

127.0.0.1  banner.cybertechdev.com

127.0.0.1  cybertown.ru

127.0.0.1  search.cygo.net

127.0.0.1  www.cygo.net #[McAfee.Adware-Cygo]

# [D]

127.0.0.1  ads.dada.it

127.0.0.1  annonser.dagbladet.no

127.0.0.1  aj.daniweb.com

127.0.0.1  ads.danstube.com

127.0.0.1  ads.darikweb.com

127.0.0.1  www.dataforce.net #[Spamdexing]

127.0.0.1  www.data-jpn.com #[Trojan.Pajatan]

127.0.0.1  banner.date.com #[Tenebril.Tracking.Cookie]

127.0.0.1  www.dateclix.com #[DateClix.com Banner Exchange Code]

127.0.0.1  ads.datinggold.com

127.0.0.1  advertising.dclux.com

127.0.0.1  dcstat.com

127.0.0.1  images.ddc.com #[Parking Service]

127.0.0.1  ads.dealnews.com

127.0.0.1  au.track.decideinteractive.com

127.0.0.1  au.link.decideinteractive.com

127.0.0.1  eu.link.decideinteractive.com

127.0.0.1  link.decideinteractive.com

127.0.0.1  www.decideinteractive.com

127.0.0.1  www.decideinteractive.co.uk

127.0.0.1  deepcom.com #[SiteAdvisor.deepcom.com]

127.0.0.1  www.deepcom.com #[TrojanDropper.Win32.Small.gt]

127.0.0.1  collector.deepmetrix.com

127.0.0.1  geo.deepmetrix.com

127.0.0.1  www.deepmetrix.com #[Microsoft]

127.0.0.1  www.deluxe-ads.net

127.0.0.1  ads.dennisnet.co.uk

127.0.0.1  ad.depositfiles.com

127.0.0.1  ad3.depositfiles.com

127.0.0.1  ad.detik.com

127.0.0.1  adcast.deviantart.com

127.0.0.1  ads.deviantart.com

127.0.0.1  adsvr.deviantart.com

127.0.0.1  phpadsnew.devstart.com

127.0.0.1  track.did-it.com #[Panda.Spyware:Cookie/did-it]

127.0.0.1  counter.dieit.de

127.0.0.1  digiwexonline.com #[W32/Kibik.a]

127.0.0.1  www.digink.com #[PcTools.SysCheckBop32]

127.0.0.1  ads.digitalalchemy.tv

127.0.0.1  ads.digitalpoint.com

127.0.0.1  geo.digitalpoint.com

127.0.0.1  ads.dir.bg

127.0.0.1  banners.dir.bg

127.0.0.1  r5.dir.bg

127.0.0.1  banners.directnic.com #[SecuritySpace.WebBug][MVPS.Criteria]

127.0.0.1  dnads.directnic.com

127.0.0.1  stats.directnic.com

127.0.0.1  www.directnicparking.com

127.0.0.1  aserve.directorym.com

127.0.0.1  cache.directorym.com #[c2.mii.instacontent.net]

127.0.0.1  ads.directnetadvertising.net #[SiteAdvisor.directnetadvertising.net]

127.0.0.1  www.directnetadvertising.net #[Ad-Aware Tracking.Cookie]

127.0.0.1  www.direct-stats.com

127.0.0.1  agentq.ditto.com

127.0.0.1  js.ditto.com

127.0.0.1  matrix.ditto.com

127.0.0.1  media.ditto.com #[a232.x.akamai.net]

127.0.0.1  www.ditto.com #[AdWare.Win32.Softomate.c]

127.0.0.1  ads.djindexes.com

127.0.0.1  a.dlqm.net

127.0.0.1  ad1.dmcmedia.co.kr

127.0.0.1  www.dnscaching.net #[SiteAdvisor.dnscaching.net]

127.0.0.1  ads.doclix.com

127.0.0.1  www.domamil.cz #[Trojan.Beagooz]

127.0.0.1  www.dodostats.com

127.0.0.1  adv.dontcrack.com

127.0.0.1  ads.dotomi.com

127.0.0.1  ad03.doubleadx.com

127.0.0.1  www.download-services.com #[VBA32.Trojan-Downloader.Agent.26]

127.0.0.1  www.downseek.com #[SunBelt.DownSeek Search]

127.0.0.1  banners.dpnet.com.br

127.0.0.1  dreamantivirus.info #[Rogue/Suspect Affiliate.sites]

127.0.0.1  drmx01.net #[Spamdexing]

127.0.0.1  www.claus.drehteile-rieche.de #[Win32.Formglieder.B]

127.0.0.1  ads.drugs.com

127.0.0.1  tracking.dsmmadvantage.com

127.0.0.1  mg.dt00.net

127.0.0.1  dukasound.info #[Javascript.Exploit]

127.0.0.1  www.dutty.de #[W32.Peerload.A]

127.0.0.1  track.dvdbox.com

127.0.0.1  park.dynadot.com

# [E]

127.0.0.1  banner.e2ads.com

127.0.0.1  www.e2ads.com

127.0.0.1  hits.e.cl

127.0.0.1  www.earncashontheinternet.com #[SunBelt.OpinionBar]

127.0.0.1  blogads.ebanner.nl

127.0.0.1  prom.ecato.net

127.0.0.1  ay.eastmoney.com

127.0.0.1  www.easycounter.com

127.0.0.1  banners.easydns.com

127.0.0.1  easyhitcounters.com

127.0.0.1  beta.easyhitcounters.com

127.0.0.1  easytrader.bg

127.0.0.1  static.easytrader.bg

127.0.0.1  www.ebannertraffic.com

127.0.0.1  mailer.ebates.com

127.0.0.1  www.ebates.com #[Adware.MoeMoney]

127.0.0.1  ads.eccentrix.com

127.0.0.1  ad.econet.hu

127.0.0.1  b.economedia.bg #[ban.etaligent.net]

127.0.0.1  ads.ecrush.com #[AdvertPro]

127.0.0.1  www.eden21.net #[Win32/Haxdoor][TR/Dldr.Botol.D.1]

127.0.0.1  c6.edgesuite.net #[RealMedia]

127.0.0.1  adv08.edintorni.net

127.0.0.1  eisenstein.dk #[tracking.ping]

127.0.0.1  www.ejmx.com #[Adware.ElectroJMX]

127.0.0.1  ad.e-kolay.net

127.0.0.1  www.ek21.com #[Trojan.Chost.B]

127.0.0.1  ads.elmaz.com

127.0.0.1  anapixel.elmundo.es

127.0.0.1  pixelcounter.elmundo.es

127.0.0.1  now.eloqua.com #[WebBug]

127.0.0.1  ads.eluniversal.com.mx

127.0.0.1  hits.eluniversal.com.mx

127.0.0.1  publicidad.eluniversal.com.mx

127.0.0.1  ad1.emediate.dk

127.0.0.1  eas.apm.emediate.eu

127.0.0.1  ad1.emediate.se

127.0.0.1  www.emoinstaller.com #[Win32/Adware.NdotNet][SiteAdvisor.emoinstaller.com]

127.0.0.1  dotnet.endai.com

127.0.0.1  stats.engineseeker.com

127.0.0.1  enjoytraffic.com

127.0.0.1  publicidad.entelchile.net

127.0.0.1  sa.entireweb.com

127.0.0.1  entk.net

127.0.0.1  log.enquisite.com

127.0.0.1  adv.entercasino.com #[Adware.Casino.V]

127.0.0.1  ads.eog.com

127.0.0.1  ads.e-planning.net

127.0.0.1  ads.us.e-planning.net

127.0.0.1  adserving03.epi.es

127.0.0.1  www.escorcher.com #[eTrust.EScorcher]

127.0.0.1  akatracking.esearchvision.com

127.0.0.1  ssltracking.esearchvision.com

127.0.0.1  adserver1.eseohserve.com

127.0.0.1  search.etargetnet.com

127.0.0.1  bg.search.etargetnet.com

127.0.0.1  bg.static.etargetnet.com

127.0.0.1  cz.search.etargetnet.com

127.0.0.1  cz.static.etargetnet.com

127.0.0.1  hr.static.etargetnet.com

127.0.0.1  ro.search.etargetnet.com

127.0.0.1  hu.static.etargetnet.com

127.0.0.1  code.etracker.com

127.0.0.1  www.etracker.de

127.0.0.1  ads.ere.net

127.0.0.1  serv2.euro-clic.com

127.0.0.1  www.euro-clic.com

127.0.0.1  adopt.euroclick.com #[Ewido.TrackingCookie.Euroclick]

127.0.0.1  cdn.euroclick.com

127.0.0.1  www.euroklik.nl #[EasyBar][HJTH.SinCity Dialer]

127.0.0.1  advert.eurotip.cz

127.0.0.1  www.euros4click.de

127.0.0.1  ad.eurosport.com #[oas.eurosport.com]

127.0.0.1  ads.evasivelabs.net

127.0.0.1  www.everestpoker.com #[AdWare.Win32.Casino.t]

127.0.0.1  advert.exaccess.ru

127.0.0.1  dynamic.exaccess.ru

127.0.0.1  static.exaccess.ru

127.0.0.1  www.exchangead.com

127.0.0.1  exchange.bg

127.0.0.1  media.exchange.bg

127.0.0.1  www.exchange.bg

127.0.0.1  load.exelator.com

127.0.0.1  ads2.expatica.com

127.0.0.1  ads.expekt.com

127.0.0.1  nyton.experclick.com #[p.mii.instacontent.net]

127.0.0.1  www.experclick.com #[SpySweeper.Spy.Cookie]

127.0.0.1  ads.expressindia.com

127.0.0.1  banners.expressindia.com

127.0.0.1  cdn.eyewonder.com #[SunBelt.EyeWonder]

127.0.0.1  cdn1.eyewonder.com

127.0.0.1  cdn4.eyewonder.com #[ValueClick]

127.0.0.1  www.evidence-eliminator.com

127.0.0.1  www.ewebcounter.com

127.0.0.1  ads2.exhedra.com

127.0.0.1  ads.expedia.com

127.0.0.1  admedia.expedia.com

127.0.0.1  feedback.eyereturn.com

127.0.0.1  resources.eyereturn.com

127.0.0.1  timespent.eyereturn.com

127.0.0.1  voken.eyereturn.com

127.0.0.1  advertising.ezanga.com

127.0.0.1  1278725189.pub.ezanga.com

127.0.0.1  ads.ezboard.com

# [F]

127.0.0.1  ads.ak.facebook.com

127.0.0.1  creative.ak.facebook.com

127.0.0.1  machine.fairfaxbm.co.nz

127.0.0.1  banner.fairpoker.com #[AdWare.Win32.Casino.w]

127.0.0.1  ehs.familydoctor.org #[ads.digitalhealthcare.com]

127.0.0.1  a.farlex.com

127.0.0.1  www.fast-adv.it

127.0.0.1  www.fastadvert.com

127.0.0.1  www.fastfind.org #[TROJ_STARTPAG.KF][Win32/Adware.MediaBack]

127.0.0.1  fastmp3player.com #[ADSPY/Agent.ZK.2]

127.0.0.1  www.fastmp3player.com

127.0.0.1  fastonlineusers.com

127.0.0.1  fastptp.info

127.0.0.1  fasttrack.nu

127.0.0.1  fastwebcounter.com

127.0.0.1  counter.fateback.com

127.0.0.1  ads.fatvine.com

127.0.0.1  counter1.fc2.com

127.0.0.1  alex.fileburst.com #[Win32/TrojanDropper.Agent.NBT]

127.0.0.1  cache.fimservecdn.com #[myspace.com]

127.0.0.1  banner.finn.no

127.0.0.1  ads.firingsquad.com

127.0.0.1  ads2.firingsquad.com

127.0.0.1  ads.firstgrand.com

127.0.0.1  www.flashadengine.com

127.0.0.1  cdn.flashedmail.com #[Parked?]

127.0.0.1  tracker1.flashedmail.com

127.0.0.1  t.flux.com #[WebBug]

127.0.0.1  adserver.fmpub.net

127.0.0.1  dynamic.fmpub.net

127.0.0.1  static.fmpub.net

127.0.0.1  ads.fmwinc.com

127.0.0.1  rnews.focus-news.net

127.0.0.1  ads.foodbuzz.com

127.0.0.1  adcycle.footymad.net

127.0.0.1  controller.foreseeresults.com

127.0.0.1  js.forrestersurveys.com

127.0.0.1  socratos.forrestersurveys.com

127.0.0.1  forso.info #[Malicious.Links.Codec]

127.0.0.1  forvideo.at

127.0.0.1  www.forvideo.at #[Javascript.Exploit]

127.0.0.1  www.fpcclicks.com

127.0.0.1  akcr.free.fr #[Win32/Spy.Bancos.U]

127.0.0.1  ad.freecity.de

127.0.0.1  ads05.freecity.de

127.0.0.1  005.free-counter.co.uk

127.0.0.1  006.free-counter.co.uk

127.0.0.1  007.free-counter.co.uk

127.0.0.1  008.free-counter.co.uk

127.0.0.1  maurobb.freecounter.it

127.0.0.1  www.freecounter.it

127.0.0.1  securinews.free.fr #[Trojan.Hexem]

127.0.0.1  www.freedownloadhq.com #[SiteAdvisor.freedownloadhq.com]

127.0.0.1  ad.freefind.com

127.0.0.1  adverts.freeloader.com

127.0.0.1  adserver.freenet.de

127.0.0.1  www.free-ranking.de

127.0.0.1  www.freerip.com #[AdTool.Win32.MyWebSearch.ak]

127.0.0.1  banner-server.freerun.com

127.0.0.1  www.freestat.pl

127.0.0.1  banners.freett.com

127.0.0.1  count.freett.com

127.0.0.1  counters.freewebs.com

127.0.0.1  ads.freeonlinegames.com

127.0.0.1  stats.freeonlinegames.com

127.0.0.1  error.freewebsites.com

127.0.0.1  www.freewebsites.com

127.0.0.1  tracking.fsjmp.com

127.0.0.1  media.ftv-publicite.fr #[RealMedia]

127.0.0.1  pub.ftv-publicite.fr #[RealMedia]

127.0.0.1  fullddl.com

127.0.0.1  www.fullddl.com #[HTML/TrojanDownloader.XXXToolbar]

127.0.0.1  ads.fulltiltpoker.com

127.0.0.1  ads.funadvice.com

127.0.0.1  404.funpic.de

127.0.0.1  www.funtopliste.de

127.0.0.1  www.fusestats.com

127.0.0.1  fxlayer.net

# [G]

127.0.0.1  errdoc.gabia.net

127.0.0.1  adserver.gadu-gadu.pl

127.0.0.1  galvatoledo.com #[Trojan.Codec]

127.0.0.1  adv.gamerzhut.com

127.0.0.1  www.gamersbanner.com

127.0.0.1  ads.gamesbannernet.com

127.0.0.1  gamevance.com #[Trojan-Downloader.Win32.Small.gkk]

127.0.0.1  www.gamevance.com #[McAfee.GameVance]

127.0.0.1  server.gamyun.net

127.0.0.1  www.gamyun.net #[Adware.GamyunIeToolbar]

127.0.0.1  gasan.ru #[Trojan.Codec]

127.0.0.1  ads.gather.com

127.0.0.1  track.gawker.com #[WebBug]

127.0.0.1  www.gaypoliticsblogads.com

127.0.0.1  ad.gazeta.pl

127.0.0.1  adp.gazeta.pl

127.0.0.1  adv.gazeta.pl

127.0.0.1  haymarket-adserver.gcnpublishing.com

127.0.0.1  top.gde.ru

127.0.0.1  www.gebr-wachs.de #[Trojan.Mitglieder.C][Backdoor.Gaster]

127.0.0.1  sda.geek.com #[AdvertPro]

127.0.0.1  adserver.geenstijl.nl

127.0.0.1  kassa.geenstijl.nl

127.0.0.1  schoorsteen.geenstijl.nl

127.0.0.1  adserver.geizkragen.de

127.0.0.1  popup.gel.ge

127.0.0.1  gnt01.generation-nt.com

127.0.0.1  www.genctoplist.com

127.0.0.1  geotarget.info #[Whois.Blacklisted]

127.0.0.1  banners.geotarget.info

127.0.0.1  www.geotarget.info

127.0.0.1  get-access.host.sk #[McAfee.StartPage-IR]

127.0.0.1  getrank.net

127.0.0.1  www.getsmart.com

127.0.0.1  banner.giantvegas.com

127.0.0.1  cdn.gigya.com

127.0.0.1  counters.gigya.com

127.0.0.1  wildfire.gigya.com

127.0.0.1  truehits.gits.net.th

127.0.0.1  truehits1.gits.net.th

127.0.0.1  www17-orig.glam.com

127.0.0.1  rec1.globalepanel.com

127.0.0.1  1.globalonlineweb.com

127.0.0.1  ads.globo.com

127.0.0.1  ads.img.globo.com

127.0.0.1  goclicks.co.uk

127.0.0.1  duke.gocomics.com #[ads.uclick.com]

127.0.0.1  www.godesktop.com #[SiteAdvisor.godesktop.com]

127.0.0.1  adserver2.goals365.com

127.0.0.1  counter.goingup.com

127.0.0.1  banner.goldenpalace.com #[Tenebril.Tracking.Cookie]

127.0.0.1  stage.goldkey.com #[Parking Service]

127.0.0.1  goldstats.net

127.0.0.1  www.goldstats.net

127.0.0.1  www.gogogo.com #[PremiumTraffic.Parking Service]

127.0.0.1  advertising.goldseek.com

127.0.0.1  partner.gonamic.de

127.0.0.1  googlus.com #[Spamdexing]

127.0.0.1  adincl.gopher.com #[InfoSpace]

127.0.0.1  webcounter.goweb.de

127.0.0.1  ads.goyk.com

127.0.0.1  www.gpr.hu

127.0.0.1  graffitifonts.com

127.0.0.1  www.graffitifonts.com #[Malicious.Links.Zango]

127.0.0.1  ad-incisive.grapeshot.co.uk

127.0.0.1  www.gratis-counter-gratis.de

127.0.0.1  adv.gratuito.st

127.0.0.1  expedia.gravitytrack.com

127.0.0.1  www.greasypalm.co.uk #[PcTools.GreasyPalm bar]

127.0.0.1  adserver.gruprc.ro

127.0.0.1  fx.gtop.ro

127.0.0.1  static.gtop.ro

127.0.0.1  www.gtop.ro

127.0.0.1  fx.gtopstats.com

127.0.0.1  ad4.gueb.com

127.0.0.1  ad7.gueb.com

127.0.0.1  ads.gumgum.com

127.0.0.1  cdn.gumgum.com

127.0.0.1  ads.guru3d.com

127.0.0.1  adguru.guruji.com

127.0.0.1  ads.gusanito.com

127.0.0.1  x.gxgxy.net #[Trojan-Downloader.Win32.Agent.hkc]

# [H]

127.0.0.1  ads2.haber3.com

127.0.0.1  cc9905.counter.hackers.lv

127.0.0.1  ads.hairboutique.com

127.0.0.1  streamit.hardwarezone.com

127.0.0.1  ad1.hardware.no #[AdvertPro]

127.0.0.1  adserver.hardwareanalysis.com

127.0.0.1  ad.harmony-central.com

127.0.0.1  ds1.harmony-central.com

127.0.0.1  www.harmonyhollow.net #[SiteAdvisor.harmonyhollow.net]

127.0.0.1  ad0.haynet.com

127.0.0.1  ad.hbv.de

127.0.0.1  ads.heias.com

127.0.0.1  www.hentaitoonami.com

127.0.0.1  www.henwo.com

127.0.0.1  ad.hepsiburada.com

127.0.0.1  www2.hermoment.com

127.0.0.1  www.hermoment.com

127.0.0.1  ads.hexun.com

127.0.0.1  hx.hexun.com

127.0.0.1  utrack.hexun.com

127.0.0.1  www.hey.lt

127.0.0.1  ads.highdefdigest.com

127.0.0.1  oas.highwire.org

127.0.0.1  ad.hirekmedia.hu

127.0.0.1  adserver.hispanoclick.com

127.0.0.1  c.hit.ua

127.0.0.1  www.hit-counter-download.com

127.0.0.1  landing.hitfarm.com #[Parking Service]

127.0.0.1  counter.hitmir.ru

127.0.0.1  hitmodel.net

127.0.0.1  hit-now.com

127.0.0.1  www.hit.tc

127.0.0.1  storage.hitrang.com

127.0.0.1  www.hitscreamer.com

127.0.0.1  hitslog.com

127.0.0.1  h1.hitslog.com

127.0.0.1  www.hitpage.de

127.0.0.1  s4.histats.com

127.0.0.1  s10.histats.com

127.0.0.1  s11.histats.com

127.0.0.1  www.hitadv.com

127.0.0.1  www.hitstats.co.uk

127.0.0.1  hitstats.net

127.0.0.1  images.hitwise.co.uk

127.0.0.1  ad.hkepc.com

127.0.0.1  anna.homeftp.net #[W32.Linkbot.A]

127.0.0.1  www.gontijoamaral.hpg.com.br #[Adware.Diginum]

127.0.0.1  www.adserver.home.pl

127.0.0.1  www.homeoffun.com #[SiteAdvisor.homeoffun.com]

127.0.0.1  counters.honesty.com

127.0.0.1  cgi.honesty.com #[MVPS.Criteria]

127.0.0.1  ad.hosting.pl

127.0.0.1  www.hotcounter.de

127.0.0.1  ad2.hotels.com

127.0.0.1  abm.hothardware.com

127.0.0.1  www.hot-lindsay.com #[Malicious.Links.Zango]

127.0.0.1  h06.hotrank.com.tw

127.0.0.1  www.hotranks.com

127.0.0.1  cgi.hotstat.nl

127.0.0.1  viewstat.hotstat.nl

127.0.0.1  hpod.com

127.0.0.1  adserver.html.it

127.0.0.1  click.html.it

127.0.0.1  ad.httpool.com

127.0.0.1  aurelius.httpool.com

127.0.0.1  trajan.httpool.com

127.0.0.1  hub.com.pl

127.0.0.1  vip.huigezi.com #[Backdoor.Graybird.Q][W32.Looked.F]

127.0.0.1  ads.hulu.com

127.0.0.1  track.hulu.com

127.0.0.1  ads.hurra.de

127.0.0.1  ads2000.hw.net

127.0.0.1  dserver.hw.net

127.0.0.1  www.hypercounter.com

127.0.0.1  www.hypertracker.com #[SpySweeper.Spy.Cookie]

# [I]

127.0.0.1  ad.i30t.com

127.0.0.1  iadsdirect.com

127.0.0.1  www.iadsdirect.com

127.0.0.1  ads.iafrica.com

127.0.0.1  ads.iboost.com

127.0.0.1  ads.ibox.bg

127.0.0.1  hits.icdirect.com #[SunBelt.ICDirect.com]

127.0.0.1  www.icentric.net

127.0.0.1  tracker.icerocket.com

127.0.0.1  ictkt.com

127.0.0.1  ads.idgnow.com.br

127.0.0.1  banners.idg.com.br

127.0.0.1  stats.idg.no

127.0.0.1  adidm07.idmnet.pl

127.0.0.1  adidm.idmnet.pl

127.0.0.1  dot.idot.cz #[WebBug]

127.0.0.1  bar.iebar8.com #[Adware.Navihelper]

127.0.0.1  ieginc.com

127.0.0.1  stats.surfaid.ihost.com

127.0.0.1  adserver.ig.com.br

127.0.0.1  i.iinfo.cz

127.0.0.1  k.iinfo.cz

127.0.0.1  adserver.ilmessaggero.it

127.0.0.1  gate.ilogbox.com

127.0.0.1  adserver.ilounge.com

127.0.0.1  stats.ilsemedia.nl

127.0.0.1  oas.imageg.net

127.0.0.1  ads.imeem.com

127.0.0.1  bbn.img.com.ua

127.0.0.1  content-ads.impactengine.com

127.0.0.1  www.impregnable.net #[TrojanDownloader.Win32.VB.dw][Trojan.Win32.StartPage.kk]

127.0.0.1  ads.ims.nl

127.0.0.1  f.imwx.com #[RealMedia]

127.0.0.1  x.imwx.com #[content.pulse360.com]

127.0.0.1  www.incentaclick.com

127.0.0.1  optimize.indieclick.com

127.0.0.1  adcenter.in2.com

127.0.0.1  juggler.inetinteractive.com

127.0.0.1  rotator.juggler.inetinteractive.com

127.0.0.1  banners.inetfast.com

127.0.0.1  inetlog.ru

127.0.0.1  ads.infinisource.com

127.0.0.1  infospot.infocious.com

127.0.0.1  resources.infolinks.com

127.0.0.1  rt3.infolinks.com

127.0.0.1  ads.infomediainc.com

127.0.0.1  pcbutts1.software.informer.com #[Unauthorized.Downloads]

127.0.0.1  ads.infospace.com #[ADW_DEALHELPER.C]

127.0.0.1  msxml.infospace.com #[SpySweeper.Spy.Cookie]

127.0.0.1  wsapi.infospace.com #[klikadvertising]

127.0.0.1  www.infotelsrl.com #[eTrust.Infotel srl]

127.0.0.1  stats.infomedia.net

127.0.0.1  stats.inist.fr

127.0.0.1  click.inn.co.il

127.0.0.1  www.innovationads.com

127.0.0.1  bimonline.insites.be

127.0.0.1  strtt.interfree.it #[W32.Iberio]

127.0.0.1  counter.internet.ge

127.0.0.1  ad.interreklame.de

127.0.0.1  indiads.com

127.0.0.1  images.indiads.com

127.0.0.1  servedby.indiads.com #[RealMedia]

127.0.0.1  ads1.indiainfo.com

127.0.0.1  www.imiclk.com

127.0.0.1  inexplorer.com

127.0.0.1  local.inexplorer.com

127.0.0.1  toolbar.inexplorer.com #[Win32/Parite.B]

127.0.0.1  www.inexplorer.com

127.0.0.1  www.innovateads.com

127.0.0.1  instantbuzz.com #[NOD32.Win32/Adware.InstantBuzz]

127.0.0.1  www2.instantbuzz.com

127.0.0.1  www.instantbuzz.com #[Adware.ToolBar.InstantBuzz.a]

127.0.0.1  media.intelia.it

127.0.0.1  anm.intelli-direct.com #[IntelliTracker]

127.0.0.1  info.intelli-direct.com

127.0.0.1  oxfam.intelli-direct.com

127.0.0.1  tui.intelli-direct.com

127.0.0.1  www.intelli-tracker.com

127.0.0.1  adserwer.intercon.pl

127.0.0.1  newadserver.interfree.it #[Adcycle]

127.0.0.1  intermediads.com

127.0.0.1  www.interstats.nl

127.0.0.1  www.intrastats.com

127.0.0.1  cc.search.results.trust.view.html.in.intrust.cc

127.0.0.1  channels.intwined.com #[Adware/ToolBar.ISearch.c]

127.0.0.1  search.intwined.com

127.0.0.1  www.intwined.com #[McAfee.Adware-SSF!Hosts]

127.0.0.1  ad.investor.bg

127.0.0.1  ad2.ip.ro

127.0.0.1  ads.ipowerweb.com

127.0.0.1  content.ipro.com #[WebBug]

127.0.0.1  adserver.iprom.net

127.0.0.1  central.iprom.net

127.0.0.1  www.ipstat.com

127.0.0.1  www.iranwebads.com

127.0.0.1  a.isohunt.com

127.0.0.1  adserver1.isohunt.com

127.0.0.1  ads.isoftmarketing.com

127.0.0.1  banman.isoftmarketing.com

127.0.0.1  ts.istrack.com

127.0.0.1  isvhs.com

127.0.0.1  adshow.it168.com

127.0.0.1  stat.it168.com

127.0.0.1  ads.itarea.org

127.0.0.1  itcompany.com #[SunBelt.Family Cyber Alert]

127.0.0.1  www.itcompany.com #[Symantec.Spyware.CyberAlert]

127.0.0.1  ilead.itrack.it

127.0.0.1  adserver.itsfogo.com

127.0.0.1  partnerfeed.itsfogo.com

127.0.0.1  www1.itsun.com

127.0.0.1  www8.itsun.com

127.0.0.1  rotabanner.izvestia.ru

# [J]

127.0.0.1  ad.jamba.de

127.0.0.1  ad.jamba.net

127.0.0.1  ad.jamster.com

127.0.0.1  www.jellycounter.com

127.0.0.1  dl.jiangmin.com #[Adware-BDSearch.dr]

127.0.0.1  ads.jiwire.com

127.0.0.1  www.jm-my.com #[BackDoor-CXI]

127.0.0.1  www.jouwstats.nl

127.0.0.1  jpedownload.joltid.com

127.0.0.1  ads.joemonster.org

127.0.0.1  banners.joost.com

127.0.0.1  www.joltid.com #[Adware.P2PNetworking][SPYW_PPNETWORK.B]

127.0.0.1  jslib2.info

127.0.0.1  ad.jugem.jp

127.0.0.1  ads.justrelevant.com

# [K]

127.0.0.1  www.k265.com #[Adware.Borlan]

127.0.0.1  ads.kaldata.com

127.0.0.1  stat.katalysatormedia.no

127.0.0.1  kazantip-top.com

127.0.0.1  www.kazantip-top.com #[HTML/Exploit.VMLFill]

127.0.0.1  ads.webfever.kadserver.com

127.0.0.1  ads.deblok.net.kadserver.com

127.0.0.1  ads.zebest-3000.net.kadserver.com

127.0.0.1  countus.get.kadserver.com

127.0.0.1  geo113prod.kadserver.com

127.0.0.1  get.kadserver.com

127.0.0.1  scripts.kataweb.it

127.0.0.1  kazaalite.pl

127.0.0.1  www.kazaalite.pl #[Google.Diagnostic]

127.0.0.1  interact.kefta.com

127.0.0.1  ad.kewlbox.com

127.0.0.1  banner.kiev.ua

127.0.0.1  counter.tourua.kiev.ua

127.0.0.1  adserve.kikizo.com

127.0.0.1  union.db.kingsoft.com #[PopupAds]

127.0.0.1  kinotraff.ru

127.0.0.1  ads.kleinman.com #[Adcycle]

127.0.0.1  www.km-nyc.com #[W32.Lecna.A]

127.0.0.1  click.kmindex.ru

127.0.0.1  counter.kmindex.ru

127.0.0.1  counting.kmindex.ru

127.0.0.1  www.kmindex.ru

127.0.0.1  images.kolmic.com

127.0.0.1  pics.kolmic.com #[Parking Service]

127.0.0.1  www.kompass-intl.com #[Win32/Adware.Toolbar.PowerSearch]

127.0.0.1  de.komtrack.com

127.0.0.1  sitestat.kpn-is.nl

127.0.0.1  kustusch.com #[Javascript.Exploit]

127.0.0.1  adserver.kyoceramita-europe.com

127.0.0.1  www.kz163.net #[Win32/Virut]

# [L]

127.0.0.1  alwaysforfriend.land.ru #[Trojan-Downloader.Win32.Banload.bdp]

127.0.0.1  www.animacoes.land.ru #[Downloader.Swif.B]

127.0.0.1  a.lakequincy.com

127.0.0.1  lank.ru #[Google.Diagnostic]

127.0.0.1  www.latinbusca.com #[Adware-CommanderNET]

127.0.0.1  layer-ads.de

127.0.0.1  www.layer-ads.de

127.0.0.1  layer-ad.org

127.0.0.1  ads.layer-ad.org

127.0.0.1  banner.lbs.km.ru

127.0.0.1  iframe.leadacceptor.com

127.0.0.1  pubs.lemonde.fr

127.0.0.1  www.leopardsearch.com

127.0.0.1  adserve.lewrockwell.com

127.0.0.1  adserver.libero.it

127.0.0.1  adv-banner.libero.it

127.0.0.1  lib4.libstat.com

127.0.0.1  lib6.libstat.com

127.0.0.1  logos.libstat.com

127.0.0.1  www.lifeforminc.com

127.0.0.1  stats5.lightningcast.com

127.0.0.1  stats5.lightningcast.net

127.0.0.1  stats6.lightningcast.net

127.0.0.1  link.ru

127.0.0.1  link.link.ru

127.0.0.1  www.ads.link24.ir

127.0.0.1  ads.linki.nl

127.0.0.1  www.linkads.de

127.0.0.1  linkbuddies.com

127.0.0.1  banners.linkbuddies.com

127.0.0.1  www.linkbuddies.com

127.0.0.1  www.linkconnector.com

127.0.0.1  www.linkcounter.com

127.0.0.1  linksexchange.net

127.0.0.1  linkexchange.ru

127.0.0.1  web.linkexchange.ru

127.0.0.1  www.linkexchange.ru

127.0.0.1  get.lingospot.com

127.0.0.1  link4link.com

127.0.0.1  plus.link4link.com

127.0.0.1  www.links4trade.com

127.0.0.1  ad.linkstorms.com

127.0.0.1  linktarget.com

127.0.0.1  banner.linktech.cn

127.0.0.1  www.linkworth.com

127.0.0.1  ads.linuxjournal.com

127.0.0.1  ad.lista.cz

127.0.0.1  ads.listingware.com

127.0.0.1  www.liveads.org

127.0.0.1  click.adv.livedoor.com

127.0.0.1  counter2.blog.livedoor.com

127.0.0.1  image.adv.livedoor.com

127.0.0.1  js.livehelper.com

127.0.0.1  newbrowse.livehelper.com

127.0.0.1  servedby.livemercial.com

127.0.0.1  ads.livescore.com

127.0.0.1  adgrad.vo.llnwd.net

127.0.0.1  broadent.vo.llnwd.net

127.0.0.1  jaildog.vo.llnwd.net

127.0.0.1  lw.lnkworld.com

127.0.0.1  traff.loadmore.eu

127.0.0.1  omnituretrack.local.com

127.0.0.1  lol.to #[HTML/Exploit.Mht]

127.0.0.1  err.lolipop.jp

127.0.0.1  adserver.lonuncavisto.com

127.0.0.1  cdn.lookery.com #[g1.panthercdn.com]

127.0.0.1  track.lookery.com

127.0.0.1  lookoutsoft.net #[SiteAdvisor.lookoutsoft.net]

127.0.0.1  screensavers.lookoutsoft.net

127.0.0.1  r.looksmart.com #[klikadvertising][sv-click.looksmart.com]

127.0.0.1  a.loomia.com #[Tracking.Cookie]

127.0.0.1  assets.loomia.com

127.0.0.1  clix-cache.loomia.com

127.0.0.1  rec-assets.loomia.com

127.0.0.1  static-cache.loomia.com

127.0.0.1  widget-cache.loomia.com

127.0.0.1  www.lookoutsoft.net #[AdWare.Win32.WinAD.b]

127.0.0.1  www.lords-of-havoc.de #[Trojan.Mitglieder.C][Backdoor.Gaster]

127.0.0.1  www.ltassrv.com #[LongTail Ad Solutions]

127.0.0.1  ads.lucidmedia.com

127.0.0.1  ads.lvntracker.com

127.0.0.1  ads-apsa.lvz-online.de

# [M]

127.0.0.1  m2k.ru

127.0.0.1  ad.m5prod.net

127.0.0.1  www.macbellads.com

127.0.0.1  c.maccosmetics.com #[WebBug.eluminate]

127.0.0.1  ad.m-adx.com

127.0.0.1  stat.madbanner.ru

127.0.0.1  media.m-adx.com

127.0.0.1  ads.madisonavenue.com

127.0.0.1  floatingads.madisonavenue.com

127.0.0.1  pagepeelads.madisonavenue.com

127.0.0.1  resource.madisonavenue.com

127.0.0.1  textads.madisonavenue.com

127.0.0.1  banner.magicboxcasino.com #[AdWare.Win32.Casino.w]

127.0.0.1  ads.mail.com

127.0.0.1  top10.mail.ru

127.0.0.1  mair.net #[Realtracker]

127.0.0.1  wdm.map24.com #[WebBug]

127.0.0.1  anapixel.marca.com

127.0.0.1  pixelcounter.marca.com

127.0.0.1  marketdart.com #[Trackware.Marketdart]

127.0.0.1  ie.marketdart.com

127.0.0.1  www.marketdart.com

127.0.0.1  ads.marketing-internet.com

127.0.0.1  media.markethealth.com #[g1.panthercdn.com]

127.0.0.1  at.marketwire.com #[WebBug]

127.0.0.1  aw.masterstats.com

127.0.0.1  erotic.masterstats.com

127.0.0.1  image.masterstats.com

127.0.0.1  link.masterstats.com

127.0.0.1  vw.masterstats.com #[Ewido.TrackingCookie.Masterstats]

127.0.0.1  oreo.matchmaker.com

127.0.0.1  ads.affiliates.match.com

127.0.0.1  adserver.matchcraft.com

127.0.0.1  sitestat.mayoclinic.com

127.0.0.1  mbe.ru #[adrevolver]

127.0.0.1  mbn.com.ua

127.0.0.1  100.mbn.com.ua

127.0.0.1  120.mbn.com.ua

127.0.0.1  160.mbn.com.ua

127.0.0.1  classic.mbn.com.ua

127.0.0.1  ads.mcafee.com

127.0.0.1  directads.mcafee.com #[Tenebril.Tracking.Cookie]

127.0.0.1  tracker.measuremap.com

127.0.0.1  mcmads.mediacapital.pt #[DoubleClick]

127.0.0.1  ads.mediaodyssey.com

127.0.0.1  acvs.mediaonenetwork.net

127.0.0.1  acvsrv.mediaonenetwork.net

127.0.0.1  ads1.mediaops.com.br

127.0.0.1  ad2.pl.mediainter.net

127.0.0.1  medialogik.com

127.0.0.1  www.medialogik.com

127.0.0.1  servedby.mediaplace.tv #[ad.firstadsolution.com]

127.0.0.1  tizer.mediarotator.ru

127.0.0.1  search.mediatarget.com

127.0.0.1  ads.mediaturf.net #[McAfee.Cookie-Mediaturf]

127.0.0.1  bi.medscape.com

127.0.0.1  adv.medscape.com #[ads.webmd.com]

127.0.0.1  as.medscape.com

127.0.0.1  b.megaban.com.ua

127.0.0.1  ad.megaclick.com

127.0.0.1  s.megaclick.com

127.0.0.1  exit.megago.com #[SpySweeper.Spy.Cookie]

127.0.0.1  www.megago.com #[typo squatter]

127.0.0.1  smartad.mercadolibre.com.ar

127.0.0.1  www.mercuras.com

127.0.0.1  adserv2.meritdesigns.com

127.0.0.1  stat24.meta.ua

127.0.0.1  action.metaffiliation.com

127.0.0.1  pubs.mgn.net #[Grolier Network]

127.0.0.1  www.mgshareware.com #[AdTool.Win32.MyWebSearch.ak]

127.0.0.1  send.microad.jp

127.0.0.1  track.send.microad.jp #[WebBug]

127.0.0.1  ads.mininova.org

127.0.0.1  www.mini-player.com #[5MOF Mini-Player]

127.0.0.1  counter.mirohost.net

127.0.0.1  banner.missbingo.com #[AdWare.Win32.Casino.ae]

127.0.0.1  banner.missingkids.com

127.0.0.1  ads.mixi.jp

127.0.0.1  img.ads.mixi.jp

127.0.0.1  www.mlclick.com

127.0.0.1  www.mlspharm.ru #[Google.Warning]

127.0.0.1  syndication.mmismm.com

127.0.0.1  ads.mobygames.com

127.0.0.1  cdn.mochiads.com

127.0.0.1  x.mochiads.com

127.0.0.1  admatch-syndication.mochila.com

127.0.0.1  ads.monster.com

127.0.0.1  adserver.monster.com #[SunBelt.AdServer.Monster.com]

127.0.0.1  adserver.a.in.monster.com

127.0.0.1  ads.monstermoving.com

127.0.0.1  cookie.monster.com #[SunBelt.cookie.monster]

127.0.0.1  webstats.motigo.com

127.0.0.1  m1.webstats.motigo.com

127.0.0.1  www.moxiesearch.com #[klikadvertising]

127.0.0.1  www.mp3downloadhq.com #[SiteAdvisor.mp3downloadhq.com]

127.0.0.1  ads.mp3-online.com.ua

127.0.0.1  mp3today.net

127.0.0.1  www.messagetag.com #[Email tracker]

127.0.0.1  live.msgdiscovery.com #[Adware.DiscoveryLive]

127.0.0.1  msgtag.com #[Email tracker]

127.0.0.1  img.msgtag.com

127.0.0.1  www.msgtag.com

127.0.0.1  bimg.msk.bg

127.0.0.1  bms.msk.bg

127.0.0.1  addserver.mtv.com.tr

127.0.0.1  multi1.rmuk.co.uk #[RealMedia]

127.0.0.1  click.myad.cn

127.0.0.1  img.myad.cn

127.0.0.1  new.myad.cn

127.0.0.1  vip.myad.cn

127.0.0.1  www.myad.cn

127.0.0.1  myad.ir

127.0.0.1  www.mycentria.com #[Adware.MyCentria]

127.0.0.1  get.mycounter.ua

127.0.0.1  scripts.mycounter.ua

127.0.0.1  get.mycounter.com.ua

127.0.0.1  scripts.mycounter.com.ua

127.0.0.1  www.mygooglepagerank.com

127.0.0.1  liveupdate.myim.cn #[Adware.BeSys]

127.0.0.1  www.mylinker.net #[Adware.MyLinker]

127.0.0.1  www.mylottoadserv.com

127.0.0.1  servad.mynet.com

127.0.0.1  rm.myoc.com

127.0.0.1  apollon.myonlineusers.com

127.0.0.1  s71.myonlineusers.com

127.0.0.1  s81.myonlineusers.com

127.0.0.1  t11.myonlineusers.com

127.0.0.1  www.my-ranking.de

127.0.0.1  wintercat.diy.myrice.com #[Win32/TrojanDownloader.Tiny.Y]

127.0.0.1  www.myspacebar.com #[SunBelt.Scam.MySpaceBar]

127.0.0.1  www.myspacetracer.com

127.0.0.1  stat.mystat.hu

127.0.0.1  www.mystat.pl

127.0.0.1  www.mystats.nl

127.0.0.1  www2.mystats.nl

127.0.0.1  www.mytoplist.gen.tr

127.0.0.1  mytraf.ru

127.0.0.1  www.mytraf.ru

# [N]

127.0.0.1  naj.sk #[WebBug]

127.0.0.1  p1.naj.sk

127.0.0.1  hit.namimedia.com

127.0.0.1  ads2.nanodrm.net

127.0.0.1  sponsoredlinks.nationalgeographic.com

127.0.0.1  www3.nationalgeographic.com

127.0.0.1  adcreative.naver.com

127.0.0.1  nv1.ad.naver.com

127.0.0.1  nv2.ad.naver.com

127.0.0.1  nv3.ad.naver.com

127.0.0.1  c1.navrcholu.cz

127.0.0.1  xml.nbcsearch.com

127.0.0.1  xml2.nbcsearch.com

127.0.0.1  www.nbcsearch.com #[exactsearch.net]

127.0.0.1  sd.ncast.cn #[Adware.NCast]

127.0.0.1  img1.ncsreporting.com

127.0.0.1  www.ncsreporting.com

127.0.0.1  ndparking.com #[Parking Service]

127.0.0.1  www.ndparking.com

127.0.0.1  ads.neogen.bg

127.0.0.1  monitor.neogen.bg

127.0.0.1  ads.neogen.ro

127.0.0.1  img.neogen.ro

127.0.0.1  monitor.neogen.ro

127.0.0.1  neocounter.neoworx-blog-tools.net

127.0.0.1  adserver.netcollex.co.uk

127.0.0.1  ads2.net-communities.co.uk

127.0.0.1  banners.netcraft.com

127.0.0.1  www.netdirect.nl

127.0.0.1  beta-hints.netflame.cc

127.0.0.1  hints.netflame.cc #[Fireclick Web Analytics]

127.0.0.1  ssl-hints.netflame.cc

127.0.0.1  ad.netgoo.com

127.0.0.1  ads.netinfo.bg

127.0.0.1  adv.netinfo.bg

127.0.0.1  tracker.netklix.com

127.0.0.1  ads.ads.netlog.com

127.0.0.1  pool.ads.netlog.com #[adhese.com]

127.0.0.1  stat.netlogic.ru #[NetLogic Logger]

127.0.0.1  www.netmaxx.com

127.0.0.1  counter.netmore.net

127.0.0.1  labs.natpal.com

127.0.0.1  ads.netrition.com

127.0.0.1  track.netshelter.net

127.0.0.1  servedby.netshelter.net #[Ad-Aware.Tracking.Cookie]

127.0.0.1  ads.netvisitsinc.com

127.0.0.1  www.nexusmedia.net

127.0.0.1  ads.newdream.net

127.0.0.1  ads.newsint.co.uk

127.0.0.1  www.newweb.com.cn #[Adware.NewWeb]

127.0.0.1  ads1.nexdra.com

127.0.0.1  adq.nextag.com #[McAfee.Cookie-Nextag]

127.0.0.1  vte.nexteramedia.com

127.0.0.1  nextgenstats.com

127.0.0.1  www.nextgenstats.com

127.0.0.1  ngbn.net

127.0.0.1  adserve5.nikkeibp.co.jp

127.0.0.1  bizad.nikkeibp.co.jp

127.0.0.1  www.nipr.ws #[Trojan.Chuvazada]

127.0.0.1  feed4a.nixxie.com

127.0.0.1  www.nlbanner.nl

127.0.0.1  ads.nordichardware.com

127.0.0.1  ads.nordichardware.se

127.0.0.1  www.nortonproject.com #[AdWare.Win32.Softomate.j][Adware/ToolBar.ISearch.c]

127.0.0.1  www.nowstat.com

127.0.0.1  tracking.novem.pl

127.0.0.1  ad.nozonedata.com #[Ad-Aware Tracking.Cookie]

127.0.0.1  ad1.nozonedata.com

127.0.0.1  u.npr.org

127.0.0.1  ad.nrk.no

127.0.0.1  nsismedia.net #[SunBelt.NSIS Media]

127.0.0.1  www.nsismedia.net

127.0.0.1  ns2.iad1.nssrv.com

127.0.0.1  ntlligent.info #[Spamdexing]

127.0.0.1  ad.nttnavi.co.jp

127.0.0.1  banner.nttnavi.co.jp

127.0.0.1  ad.ntvmsnbc.com

127.0.0.1  services.nuconomy.com

127.0.0.1  synad2.nuffnang.com.ph

127.0.0.1  71i.nuggad.net

127.0.0.1  asv.nuggad.net

127.0.0.1  eu.nuggad.net

127.0.0.1  fm.nuggad.net

127.0.0.1  interia.nuggad.net

127.0.0.1  i.nuseek.com #[Parking Service]

127.0.0.1  www1.nuseek.com

127.0.0.1  www2.nuseek.com #[overture.com]

127.0.0.1  www3.nuseek.com

127.0.0.1  cdn.nvero.net

127.0.0.1  e.nvero.net

127.0.0.1  ads.nyi.net

127.0.0.1  nzads.net.nz

# [O]

127.0.0.1  ads.o2.pl

127.0.0.1  adserver.o2.pl

127.0.0.1  banner.oddcast.com

127.0.0.1  banner-a.oddcast.com

127.0.0.1  banner-d.oddcast.com

127.0.0.1  oemtop.com #[Google Warning]

127.0.0.1  www.oemtop.com

127.0.0.1  diepress.oewabox.at

127.0.0.1  tracking.offerstrategy.com

127.0.0.1  www18.officedepot.com #[WebBug.eluminate]

127.0.0.1  elmundo.ojdinteractiva.com

127.0.0.1  marca.ojdinteractiva.com

127.0.0.1  ads.okazii.ro

127.0.0.1  sayac.onlinewebstat.com

127.0.0.1  ads1.omdadget.com

127.0.0.1  track.omguk.com

127.0.0.1  ads.oneplace.com

127.0.0.1  stat.onestat.com #[Panda.Spyware:Cookie/onestat.com][Ad-Aware.Tracking.Cookie]

127.0.0.1  www.onestat.com #[Ewido.TrackingCookie.Onestat]

127.0.0.1  www.onestatfree.com

127.0.0.1  one.ru

127.0.0.1  cnt.one.ru

127.0.0.1  stats0.one.ru

127.0.0.1  stats1.one.ru

127.0.0.1  stats2.one.ru

127.0.0.1  kropka.onet.pl

127.0.0.1  reklama.onet.pl

127.0.0.1  ad.onlinechange.biz

127.0.0.1  404.online.net

127.0.0.1  adserver.online-tech.com

127.0.0.1  lifemediahouse1.onlinewelten.com

127.0.0.1  www.onlyscreensavers.com #[SiteAdvisor.onlyscreensavers.com]

127.0.0.1  ads.ookla.com

127.0.0.1  www.openadnetwork.com

127.0.0.1  server1.opentracker.net

127.0.0.1  server10.opentracker.net

127.0.0.1  c1.openx.org

127.0.0.1  d.openx.org

127.0.0.1  d1.openx.org

127.0.0.1  indium.openx.net

127.0.0.1  invitation.opinionbar.com

127.0.0.1  ccc00.opinionlab.com

127.0.0.1  ccc01.opinionlab.com #[msn.com]

127.0.0.1  rate.opinionlab.com

127.0.0.1  www.opinionlab.com

127.0.0.1  by.optimost.com

127.0.0.1  optlynx.com #[Adware.Optserve]

127.0.0.1  optmedia.jp

127.0.0.1  ad.orbitel.bg

127.0.0.1  otx5.otxresearch.com

127.0.0.1  otx.ifilm.com #[OTXMedia.dll]

127.0.0.1  survey.otxresearch.com #[TrojanDownloader.OTXloader.A][MVPS.Criteria]

127.0.0.1  www.otxresearch.com #[Sophos.OTXLoader][Trojan.OTXLoader]

127.0.0.1  liveupdate.ourxin.com #[Adware.AllSum]

127.0.0.1  www.ourxin.com #[Dr.Web.Adware.CFS][Trojan.Cfs]

127.0.0.1  adpopper.outblaze.com #[ADW_BBINSTALL.B][bargain-buddy.net]

127.0.0.1  adp4.us4.outblaze.com

127.0.0.1  adserver.hk.outblaze.com

127.0.0.1  adserver.us.outblaze.com

127.0.0.1  download2.us4.outblaze.com #[HJTH.Bargain Buddy]

127.0.0.1  www.overpeer.com #[Trojan.Wimad]

127.0.0.1  pub.oxado.com

127.0.0.1  www.oxinads.com

127.0.0.1  oya.ru #[Javascript.Exploit]

# [P]

127.0.0.1  www.pagecounters.com

127.0.0.1  paidstats.com

127.0.0.1  ad1.pamedia.com.au

127.0.0.1  ad2.pamedia.com.au

127.0.0.1  adtech.panthercustomer.com

127.0.0.1  img.parked.ru #[Parking Service]

127.0.0.1  park.parkingpanel.com

127.0.0.1  static.parkingpanel.com

127.0.0.1  counter.paradise.net.nz

127.0.0.1  stats.partypoker.com #[WebBug]

127.0.0.1  ads.pastemagazine.com

127.0.0.1  stat.pchome.net

127.0.0.1  tracer.perezhilton.com

127.0.0.1  b1.perfb.com

127.0.0.1  metrics.performancing.com

127.0.0.1  pcbutts1.com

127.0.0.1  www.pcbutts1.com #[Unauthorized Downloads][SiteAdvisor.pcbutts1.com]

127.0.0.1  ads.pcper.com

127.0.0.1  count.pcpop.com

127.0.0.1  ads.pcworld.com.br

127.0.0.1  pixel.pcworld.com #[WebBug]

127.0.0.1  ads.peer39.com

127.0.0.1  viewer.peer39.com

127.0.0.1  ads.pennyweb.com #[addynamix.com]

127.0.0.1  banners.pennyweb.com

127.0.0.1  errors.perfectgonzo.com

127.0.0.1  pluginx.perfectgonzo.com

127.0.0.1  ads.periodistadigital.com

127.0.0.1  www.peruvianmarket.com #[Trojan.Beagooz.D]

127.0.0.1  ads.pheedo.com

127.0.0.1  www.pheedo.com #[RSS Advertising]

127.0.0.1  ads.phillipsdata.us

127.0.0.1  adclient.phoenixtv.com

127.0.0.1  ads.photosight.ru

127.0.0.1  phpadsnew.com

127.0.0.1  www.phpadsnew.com

127.0.0.1  adms.physorg.com

127.0.0.1  www.pimp-my-rank.de

127.0.0.1  ads.pimptel.com

127.0.0.1  banners.pinnaclesports.com

127.0.0.1  pinoy-topsites.com

127.0.0.1  ads.piramit.net

127.0.0.1  accounts.pkr.com

127.0.0.1  ads.planetactive.com

127.0.0.1  ads.plantyours.com

127.0.0.1  banner.play-asia.com

127.0.0.1  ads2.playnet.com

127.0.0.1  static.pochta.ru

127.0.0.1  cnt1.pocitadlo.cz

127.0.0.1  stats.polldaddy.com #[stats.wordpress.com]

127.0.0.1  www.pollmonkey.com

127.0.0.1  adserver.pollstar.com #[eTrust.Tracking.Cookie]

127.0.0.1  ad2.pop.com.br

127.0.0.1  www.popadvert.com

127.0.0.1  pop-bazar.com

127.0.0.1  popcounter.com

127.0.0.1  popmoney.ru

127.0.0.1  popstart.ru

127.0.0.1  www.popularsite.ru

127.0.0.1  popon.ru

127.0.0.1  www.popon.ru

127.0.0.1  popuptraf.ru

127.0.0.1  www.popuptraf.ru

127.0.0.1  pop-under.ru

127.0.0.1  pop-web.ru

127.0.0.1  www2.portdetective.com

127.0.0.1  prstats.postrelease.com

127.0.0.1  www.power-pagerank.de

127.0.0.1  www.ppctracking.net #[Ad-Aware.Tracking.Cookie]

127.0.0.1  adview.ppro.de

127.0.0.1  x0x0l.pp.ru #[BKDR_CCT.A]

127.0.0.1  adtxt.prbn.ru

127.0.0.1  ad468.prbn.ru

127.0.0.1  trk.ppc-stats.com

127.0.0.1  www.praize.com #[Adware.Praize][SiteAdvisor.praize.com]

127.0.0.1  www.precisioncounter.com

127.0.0.1  www.predictad.biz

127.0.0.1  www.predictad.com

127.0.0.1  www.pr-free.de

127.0.0.1  ads.premiereinteractive.com

127.0.0.1  ads.primeinteractive.net

127.0.0.1  ads.prisacom.com #[RealMedia]

127.0.0.1  pro-banner.ru

127.0.0.1  www.probanner.ro

127.0.0.1  ad.profiwin.de

127.0.0.1  bn.profiwin.de

127.0.0.1  www.projectwonderful.com

127.0.0.1  www.promobenef.com

127.0.0.1  counter.promopark.ru

127.0.0.1  ads.prospect.org

127.0.0.1  www.profitzone.com #[SunBelt.ProfitZONE Adbar]

127.0.0.1  www.promo.com.au

127.0.0.1  prounder.ru

127.0.0.1  ad.prv.pl

127.0.0.1  ptp4ever.net

127.0.0.1  www.ptp4ever.net

127.0.0.1  tracking.publicidees.com

127.0.0.1  ads.pubgroup.com

127.0.0.1  ads.pubmatic.com

127.0.0.1  showads.pubmatic.com

127.0.0.1  track.pubmatic.com

127.0.0.1  ads.pugetsoundsoftware.com

127.0.0.1  ad.sma.punto.net

127.0.0.1  sma.punto.net

127.0.0.1  ad.punto-informatico.it

127.0.0.1  cgicounter.puretec.de

127.0.0.1  ads1.pushfish.com

# [Q]

127.0.0.1  gmailq.com

127.0.0.1  e1.cdn.qnsr.com

127.0.0.1  l1.cdn.qnsr.com #[WebBug]

127.0.0.1  l1.qsstats.com

127.0.0.1  adserv.quality-channel.de

127.0.0.1  ads-205.quarterserver.de

127.0.0.1  adsview.qq.com

127.0.0.1  adsview2.qq.com

# [R]

127.0.0.1  ads.radioactive.se

127.0.0.1  ads2.radiocompanion.com

127.0.0.1  stats2.radiocompanion.com

127.0.0.1  top.rambex.ru

127.0.0.1  www.ranking-counter.de

127.0.0.1  www.rankingfree.de

127.0.0.1  www.rankmaschine.de

127.0.0.1  www.rank-master.de

127.0.0.1  www.ranking-net.de

127.0.0.1  srv1.rapidstats.de

127.0.0.1  ads.recoletos.es

127.0.0.1  clientreport.random-logic.com #[McAfee.Adware-CasOnline]

127.0.0.1  reportinstaller.random-logic.com

127.0.0.1  www.random-logic.com

127.0.0.1  ranking-hits.de

127.0.0.1  www.ranking-hits.de

127.0.0.1  www.ranklink.de

127.0.0.1  counter.rapidcounter.com

127.0.0.1  www.rapidcounter.com

127.0.0.1  cnt.rate.ru

127.0.0.1  count.rbc.ru

127.0.0.1  www.rbc.ua

127.0.0.1  ads.rcgroups.com

127.0.0.1  webstats.web.rcn.net

127.0.0.1  oasis.realbeer.com

127.0.0.1  ad.realist.gen.tr

127.0.0.1  www.realist.gen.tr

127.0.0.1  ads.reason.com

127.0.0.1  noah.reddion.com

127.0.0.1  ads.rediff.com

127.0.0.1  adworks.rediff.com

127.0.0.1  imadworks.rediff.com

127.0.0.1  www.redirad.de #[Adware.Redir]

127.0.0.1  img2.ru.redtram.com

127.0.0.1  js.redtram.com #[RedTramCookies]

127.0.0.1  js.en.redtram.com

127.0.0.1  js.ru.redtram.com

127.0.0.1  n4p.ru.redtram.com

127.0.0.1  referer.org

127.0.0.1  www.refer.ru

127.0.0.1  regifast.com #[MVPS.Criteria][Adware.RegiFast]

127.0.0.1  www.regifast.com #[Trojan.RegiFast]

127.0.0.1  ads.register.com

127.0.0.1  www.registrarads.com

127.0.0.1  www.registrycleanerxp.com

127.0.0.1  include.reinvigorate.net

127.0.0.1  stats.reinvigorate.net #[WebBug]

127.0.0.1  medialand.relax.ru

127.0.0.1  banner.relcom.ru

127.0.0.1  networks.remal.com.sa

127.0.0.1  www.rentyourdot.com

127.0.0.1  banner.resulthost.org

127.0.0.1  data.resultlinks.com

127.0.0.1  banners.resultonline.com

127.0.0.1  traffic.revenuedirect.com

127.0.0.1  click.revenuepilot.com

127.0.0.1  search.revenuepilot.com

127.0.0.1  www.reversecontext.com

127.0.0.1  ads.reviewcentre.com

127.0.0.1  adserver.revision3.com

127.0.0.1  www.revresda.com

127.0.0.1  webtrends.reynoldswebsolutions.com #[hitbox.com]

127.0.0.1  ad.rd06.com

127.0.0.1  r.rd06.com

127.0.0.1  drive.richbanner.ru

127.0.0.1  folder.richbanner.ru

127.0.0.1  www.ritecounter.com

127.0.0.1  rightstats.com

127.0.0.1  www.rightstats.com

127.0.0.1  count.rin.ru

127.0.0.1  ads.rlcomics.com

127.0.0.1  m.rmbclick.com

127.0.0.1  robotraff.com #[Malicious.Links]

127.0.0.1  media.rocketprofit.com

127.0.0.1  backoffice.roitracking.info

127.0.0.1  tracking.vx.roo.com

127.0.0.1  show.roogoo.com

127.0.0.1  www.roogoo.com #[Adware.Roogoo]

127.0.0.1  banner.royaldice.com

127.0.0.1  www.rgs-rostock.de #[Trojan.Mitglieder.C][Backdoor.Gaster]

127.0.0.1  ldkiekxc.rr.nu #[Backdoor.Ryejet.B]

127.0.0.1  gbjfc.rsvpgenius.com

127.0.0.1  optimized-by.rubiconproject.com

127.0.0.1  pixel.rubiconproject.com #[WebBug]

127.0.0.1  ru-traffic.com

127.0.0.1  rutraff.com

127.0.0.1  advert.runescape.com

127.0.0.1  banners.rushcommerce.com

127.0.0.1  www.russian-top.ru

127.0.0.1  rx-promo.com

# [S]

127.0.0.1  www.s2d6.com

127.0.0.1  ads.sagabg.net

127.0.0.1  sdc2.sakura.ad.jp

127.0.0.1  judo.salon.com

127.0.0.1  oas.salon.com

127.0.0.1  ads.sapo.pt

127.0.0.1  s6.sayyac.com

127.0.0.1  srv.sayyac.com

127.0.0.1  out.banner.sazka.cz

127.0.0.1  scan-online.co.cc

127.0.0.1  app.scanscout.com

127.0.0.1  media.scanscout.com

127.0.0.1  static.scanscout.com #[Video.adpresentation]

127.0.0.1  banner.scasino.com #[AdWare.Win32.Casino.w]

127.0.0.1  oas.sciencemag.org

127.0.0.1  beacon.scorecardresearch.com #[WebBug]

127.0.0.1  horyzonix.sdv.fr #[RealMedia]

127.0.0.1  ads.search.bg

127.0.0.1  banner.search.bg

127.0.0.1  banex.search.bg

127.0.0.1  counter.search.bg

127.0.0.1  ads.searchextreme.com

127.0.0.1  ad.searchhound.com

127.0.0.1  searchingall.com #[AdWare.Kodpye.a]

127.0.0.1  www.searchingall.com

127.0.0.1  tracking.searchmarketing.com

127.0.0.1  www.searchrelevancy.com #[Spyware.Relevancy]

127.0.0.1  search-top.com

127.0.0.1  www.searchvivor.com #[McAfee.Adware-DCToolbar]

127.0.0.1  secondwww.com

127.0.0.1  images-pw.secureserver.net #[Parking Service][GoDaddy]

127.0.0.1  images.secureserver.net

127.0.0.1  imagesak.secureserver.net

127.0.0.1  securetabs.com #[klikadvertising]

127.0.0.1  www.securetabs.com

127.0.0.1  adserver.securityfocus.com #[RealMedia]

127.0.0.1  www.seekanyway.com

127.0.0.1  adserver.seedpeer.com

127.0.0.1  www.selfsurveys.com

127.0.0.1  stir.semilo.com

127.0.0.1  www.send-safe.com #[Spamware]

127.0.0.1  ad.sensismediasmart.com.au

127.0.0.1  www.seo-portal.ro

127.0.0.1  serialkey.net

127.0.0.1  www.serialkey.net

127.0.0.1  errors.servik.com

127.0.0.1  webcount.sesam.no

127.0.0.1  www.sespeed.info

127.0.0.1  ad.seznam.cz

127.0.0.1  ads.shopthescene.com

127.0.0.1  adserve.shopzilla.com

127.0.0.1  update.smartallyes.com #[Trojan.Smartallyes]

127.0.0.1  adimages.sina.com.hk

127.0.0.1  jsads.sina.com.hk

127.0.0.1  startpunt.nu.site-id.nl

127.0.0.1  www.sismodular.com #[Win32/Eyeveg.T]

127.0.0.1  www.site-id.nl

127.0.0.1  advertpro.sitepoint.com

127.0.0.1  www.sitestatslive.com

127.0.0.1  www.sitewebstats.com

127.0.0.1  ads.sixapart.com

127.0.0.1  www.shockcounter.com

127.0.0.1  ads.shoppingads.com

127.0.0.1  simplehitcounter.com

127.0.0.1  ads.sina.com

127.0.0.1  oas.skyregie.com #[RealMedia]

127.0.0.1  ad.slashgear.com

127.0.0.1  www.smartadpro.cz

127.0.0.1  im2.smartadserver.com

127.0.0.1  ww57.smartadserver.com

127.0.0.1  ww147.smartadserver.com

127.0.0.1  www.smartadserver.com #[SunBelt.SmartAdServer.com]

127.0.0.1  www.smartlog.ru

127.0.0.1  smicrosoft.ru

127.0.0.1  www.smileyworld.com #[AdWare.Win32.SHBar.a][Adware.Smiley]

127.0.0.1  ads.sn.se

127.0.0.1  ads.socialreach.com

127.0.0.1  socsec.co.il #[Win32/Persky]

127.0.0.1  ads.soft32.com

127.0.0.1  pub.softonic.com

127.0.0.1  update.cpc.sogou.com #[Adware.CPush]

127.0.0.1  tenbux.somethingawful.com

127.0.0.1  a.sou7.com #[NOD32.NewHeur_PE]

127.0.0.1  ivox.socratos.net

127.0.0.1  www.softwareclub.ws #[Adware.SaveNow]

127.0.0.1  www.someads.com

127.0.0.1  ads.sooran.ir

127.0.0.1  ariel1.spaceprogram.com

127.0.0.1  analytic.spamfighter.com #[Omniture]

127.0.0.1  ads.tripod.spray.se

127.0.0.1  www.spedia.net #[SunBelt.SpediaBar][Adware.Spedia]

127.0.0.1  www.speedcount.de

127.0.0.1  speedypromote.com

127.0.0.1  www.speedtracker.de

127.0.0.1  www.speedranking.de

127.0.0.1  cdn11.sphere.com #[Omniture]

127.0.0.1  stats.sphere.com

127.0.0.1  www.sphere.com #[SphereOmniture]

127.0.0.1  count.spiegel.de

127.0.0.1  www.splatbanner.com

127.0.0.1  www.sponsorads.de

127.0.0.1  ads.sports.fr

127.0.0.1  ad.spot200.com

127.0.0.1  sitestat3.sport1.de

127.0.0.1  www.speedcounter.net

127.0.0.1  www.spyarsenal.com #[Spyware.DesktopSpy][Spyware.FamilyKeylog]

127.0.0.1  alltraff.spb.ru

127.0.0.1  cracks.spb.ru #[Win32/TrojanDownloader.Adload.DS]

127.0.0.1  v.sodui.com

127.0.0.1  www.sodui.com #[Adware.SoduiSearch]

127.0.0.1  squeeder.com

127.0.0.1  s1.srtk.net

127.0.0.1  s2.srtk.net

127.0.0.1  bannerads.standard.net

127.0.0.1  ads.str8up.com

127.0.0.1  ads.starpulse.com #[SpySweeper.Spy.Cookie]

127.0.0.1  ads.stardoll.com

127.0.0.1  stat.stars.ru #[WebBug]

127.0.0.1  adsintl.starwave.com

127.0.0.1  active.hit.stat24.com

127.0.0.1  lt3.hit.stat24.com

127.0.0.1  nl4.hit.stat24.com

127.0.0.1  ru2.hit.stat24.com

127.0.0.1  s1.hit.stat24.com

127.0.0.1  s2.hit.stat24.com

127.0.0.1  s3.hit.stat24.com

127.0.0.1  s4.hit.stat24.com

127.0.0.1  ua1.hit.stat24.com

127.0.0.1  ua2.hit.stat24.com

127.0.0.1  ua3.hit.stat24.com

127.0.0.1  ua4.hit.stat24.com

127.0.0.1  ua5.hit.stat24.com

127.0.0.1  www.stat24.com

127.0.0.1  js.statistici.ro

127.0.0.1  log.statistici.ro

127.0.0.1  s.statistici.ro

127.0.0.1  storage.statistici.ro

127.0.0.1  hitx.statistics.ro

127.0.0.1  statistik-gallup.net

127.0.0.1  js.stats.de

127.0.0.1  stats4you.com

127.0.0.1  reg.stats4all.com

127.0.0.1  www.stats4you.com

127.0.0.1  log3.stats24.net

127.0.0.1  www.statsector.hu

127.0.0.1  www.statsforever.com

127.0.0.1  www.stattrax.com

127.0.0.1  www.statuncore.com

127.0.0.1  adserver.stockgroup.com

127.0.0.1  tac.ads.streamtheworld.com

127.0.0.1  cbs.ads.streamtheworld.com

127.0.0.1  ads.tetesacl.streamtheworld.com

127.0.0.1  ads.streetfire.net

127.0.0.1  www.stickypops.com #[eTrust.Stickypops]

127.0.0.1  gsorder.berlin.strato.de

127.0.0.1  www.streamxs.ws #[Trojan-Downloader.Win32.Tiny.dk]

127.0.0.1  www.sublimemedia.net

127.0.0.1  ads.sun.com

127.0.0.1  clix.superclix.de

127.0.0.1  www.superclix.de

127.0.0.1  banner.supereva.it

127.0.0.1  www.superlogy.com #[AdvWare.ToolBar.VB.b][Adware.Superlogy]

127.0.0.1  adidm.supermedia.pl

127.0.0.1  adsuccess.surehits.com

127.0.0.1  adv.surinter.net

127.0.0.1  rd1.surfernetwork.com #[SurferNETWORK Plugin]

127.0.0.1  www.surfernetwork.com

127.0.0.1  www.surveynetworks.com

127.0.0.1  my.surveypopups.com

127.0.0.1  adpick.switchboard.com

127.0.0.1  banners.swsoft.com

127.0.0.1  www.syamantec.com #[Typo Squatter][gotoo.com]

127.0.0.1  adtag.sympatico.ca

127.0.0.1  www.system4.nl

127.0.0.1  adv.swzone.it

127.0.0.1  www.system-killer.com

# [T]

127.0.0.1  ads.tahono.com

127.0.0.1  files.tailsweep.com

127.0.0.1  script.tailsweep.com

127.0.0.1  b100.takru.com

127.0.0.1  b120.takru.com

127.0.0.1  b130.takru.com

127.0.0.1  b140.takru.com

127.0.0.1  b180.takru.com

127.0.0.1  banners.takru.com

127.0.0.1  ad.uk.tangozebra.com

127.0.0.1  dev.targetpoint.com

127.0.0.1  srs.targetpoint.com

127.0.0.1  stat-counter.tass-online.ru

127.0.0.1  tat-neftbank.ru #[Backdoor.Berbew.H]

127.0.0.1  banner.tattomedia.com

127.0.0.1  media.tattomedia.com

127.0.0.1  ad.tbn.ru

127.0.0.1  ad.agava.tbn.ru

127.0.0.1  ad.ett.tbn.ru

127.0.0.1  ad.ent.tbn.ru

127.0.0.1  ad.gen.tbn.ru

127.0.0.1  ad.100.tbn.ru

127.0.0.1  ad.120.tbn.ru

127.0.0.1  ad.120-gen.tbn.ru

127.0.0.1  ad.popup.tbn.ru

127.0.0.1  ad.strict.tbn.ru

127.0.0.1  ad.text-ent.tbn.ru

127.0.0.1  ad.text.tbn.ru

127.0.0.1  www.tdstats.com

127.0.0.1  oa.techcrunch.com

127.0.0.1  ads.techguy.org

127.0.0.1  tracker.technorati.com

127.0.0.1  triad.technorati.com

127.0.0.1  widgetd.technorati.com

127.0.0.1  new.prod.admanager.telegraaf.nl

127.0.0.1  www.teligo-ads.de

127.0.0.1  temp4you.com #[Klik]

127.0.0.1  www.tencent.com #[Backdoor.Prosti]

127.0.0.1  adserver.teracent.net #[Ad-Aware.Tracking.Cookie]

127.0.0.1  banner.terminal.hu

127.0.0.1  adserver.terra.es

127.0.0.1  ad.terra.com.mx

127.0.0.1  dy.testnet.nl

127.0.0.1  textad.net

127.0.0.1  www.textads.biz

127.0.0.1  www.textlink.cz

127.0.0.1  openad.tf1.fr #[RealMedia]

127.0.0.1  openadext.tf1.fr

127.0.0.1  a.tfag.de

127.0.0.1  ak.tfag.de

127.0.0.1  thagodz.com

127.0.0.1  www.thagodz.com #[klikadvertising]

127.0.0.1  theaffiliateprogram.com

127.0.0.1  www.theaffiliateprogram.com

127.0.0.1  www58.theatlantic.com #[WebBug.eluminate]

127.0.0.1  ads.the-bikini.com

127.0.0.1  ads.thefrisky.com

127.0.0.1  www.thepokerclub.com #[SecurityRisk.ClubPoker]

127.0.0.1  therussiankings.com

127.0.0.1  www.theserials.com #[Google.Warning]

127.0.0.1  ad.thinkmedia.cn

127.0.0.1  webtrends.thisis.co.uk #[Hitbox]

127.0.0.1  oas.tidningsnatet.se #[ads.realmedia.basefarm.net]

127.0.0.1  www.tinbuadserv.com

127.0.0.1  www.tinka.ru

127.0.0.1  ads.as4x.tmcs.net

127.0.0.1  www.pagerank.tmj-hosting.de

127.0.0.1  tnc4u.com

127.0.0.1  new.tnc4u.com

127.0.0.1  www.tnc4u.com #[Adware.DownloadPlus]

127.0.0.1  tns-counter.ru

127.0.0.1  www.tns-counter.ru

127.0.0.1  tas-rs.toboads.com

127.0.0.1  ads.today.com

127.0.0.1  ad.tom.com

127.0.0.1  flashad.tom.com

127.0.0.1  usmsad.tom.com

127.0.0.1  banner.tonygpoker.com

127.0.0.1  cachebanner.tonygpoker.com

127.0.0.1  ads.top.bg

127.0.0.1  counter.top.ge

127.0.0.1  www.top100bloggers.com

127.0.0.1  www.top100.lt

127.0.0.1  www.topblogging.com

127.0.0.1  hit.topc.org

127.0.0.1  banners.topcities.com

127.0.0.1  toplist.cz

127.0.0.1  www.toplist.cz

127.0.0.1  toplist.eu

127.0.0.1  www.toplist100.net

127.0.0.1  100.topnews.ru

127.0.0.1  counter.topphoto.ru

127.0.0.1  www.top1.ro

127.0.0.1  www.top25.ro

127.0.0.1  www.top55.ro

127.0.0.1  www.top90.ro

127.0.0.1  www.top99.ro

127.0.0.1  www.top100.ro

127.0.0.1  www.top123.ro

127.0.0.1  www.top300.ro

127.0.0.1  www.topadult.ro

127.0.0.1  www.toplistim.com

127.0.0.1  stats.topofblogs.com

127.0.0.1  www.topsites24.net

127.0.0.1  www.topsiteguide.com

127.0.0.1  www.topsiteuri.ro

127.0.0.1  topul.net

127.0.0.1  torrent-hitz.de

127.0.0.1  www.torrent-hitz.de

127.0.0.1  a.total-media.net

127.0.0.1  i.total-media.net

127.0.0.1  www.tr100.net

127.0.0.1  log.traceics.ca

127.0.0.1  storage.traceics.ca

127.0.0.1  static.tracking202.com

127.0.0.1  www.tradepopups.com

127.0.0.1  log.trafic.ro

127.0.0.1  storage.trafic.ro

127.0.0.1  www.trafficresults.com

127.0.0.1  www.tr-rank.info

127.0.0.1  adserv.transindex.ro

127.0.0.1  ads.travellogger.com

127.0.0.1  dm.travelocity.com

127.0.0.1  ad.topstat.com

127.0.0.1  nl.topstat.com

127.0.0.1  s26.topstat.com

127.0.0.1  xl.topstat.com

127.0.0.1  trackalyzer.com

127.0.0.1  t2.trackalyzer.com

127.0.0.1  t4.trackalyzer.com

127.0.0.1  ads.tradermedia.co.uk

127.0.0.1  ads.trademe.co.nz

127.0.0.1  adserver.tradingmarkets.com

127.0.0.1  www.trafficcenter.de

127.0.0.1  textad.traficdublu.ro

127.0.0.1  www.trafficmasterz.net

127.0.0.1  s2.trafficmaxx.de

127.0.0.1  s3.trafficmaxx.de

127.0.0.1  ads.traderonline.com #[RealMedia]

127.0.0.1  www.trafficbeamer.com

127.0.0.1  www.trafficbeamer.nl

127.0.0.1  trafficfile.com

127.0.0.1  www.trafficfile.com

127.0.0.1  trafficflare.com

127.0.0.1  cnt.trafficvalet.com

127.0.0.1  www.trafficzap.com

127.0.0.1  trackyourstats.com

127.0.0.1  www.trackyourstats.com

127.0.0.1  www.trafix.ro

127.0.0.1  www.traveladvertising.com

127.0.0.1  media.travelzoo.com

127.0.0.1  media2.travelzoo.com

127.0.0.1  advert.travlang.com

127.0.0.1  www.trendcounter.com

127.0.0.1  ads.triada.bg

127.0.0.1  truefindpage.com

127.0.0.1  hits.truehits.in.th

127.0.0.1  lvs.truehits.in.th

127.0.0.1  tracker.truehits.in.th

127.0.0.1  hits3.truehits.net

127.0.0.1  tracker.truehits.net

127.0.0.1  trusearch.net

127.0.0.1  origin-tracking.trulia.com

127.0.0.1  ads.treehugger.com

127.0.0.1  www.trusttoolbar.com #[eTrust.Trust Toolbar]

127.0.0.1  cast.trustclick.ne.jp

127.0.0.1  motu.trustclick.ne.jp

127.0.0.1  trywith.us #[Spamdexing]

127.0.0.1  www.tscounter.com

127.0.0.1  ttzmedia.com

127.0.0.1  www.ttzmedia.com

127.0.0.1  adclient1.tucows.com

127.0.0.1  counts.tucows.com

127.0.0.1  google.tucows.com

127.0.0.1  adextensioncontrol.tudou.com

127.0.0.1  cdn.turn.com

127.0.0.1  tutpornushka.com

127.0.0.1  ad.tv2.no #[RealMedia]

127.0.0.1  twittercounter.com

127.0.0.1  stats.twistage.com

127.0.0.1  tx2.ru

127.0.0.1  ads1.tyroo.com

127.0.0.1  ads5.tyroo.com

127.0.0.1  ads6.tyroo.com

127.0.0.1  ads9.tyroo.com

127.0.0.1  serve.tyroo.com

127.0.0.1  cnt.tyxo.bg #[WebBug]

# [U]

127.0.0.1  mde.ubid.com #[RealMedia]

127.0.0.1  ads.ucomics.com #[RealMedia]

127.0.0.1  a.ucoz.net

127.0.0.1  credity.ucoz.ru

127.0.0.1  image.ugo.com

127.0.0.1  mediamgr.ugo.com #[McAfee.Cookie-UGOr]

127.0.0.1  deliver.ads.uigc.net #[RealMedia]

127.0.0.1  creativos.ads.uigc.net

127.0.0.1  ip2k.ads.uigc.net

127.0.0.1  adclient.uimserv.net

127.0.0.1  adimg.uimserv.net

127.0.0.1  esmv.uimserv.net

127.0.0.1  pixelbox.uimserv.net

127.0.0.1  www.ukbanners.com

127.0.0.1  ukrbanner.net

127.0.0.1  www.ultimatetopsites.com

127.0.0.1  advert.dyna.ultraweb.hu

127.0.0.1  stat.dyna.ultraweb.hu

127.0.0.1  universaltoolbar.com #[AdWare.Win32.Simbar.e]

127.0.0.1  www.unlimits.net #[Javascript.Exploit]

127.0.0.1  undertonenetworks.com #[zedo.com]

127.0.0.1  www.undertonenetworks.com

127.0.0.1  ads.unison.ie

127.0.0.1  ads.universia.com.br

127.0.0.1  ads.univision.com

127.0.0.1  web.unltd.info

127.0.0.1  img.unrealmarketing.com #[WebBug]

127.0.0.1  update-product.net

127.0.0.1  www.uplink.co.kr #[Adware.Uplink]

127.0.0.1  www.upspiral.com #[Adware.UpSpiralBar]

127.0.0.1  c.uarating.com

127.0.0.1  www.urpo.com #[SunBelt.Urpo]

127.0.0.1  usachoice.net

127.0.0.1  ads.usercash.com

127.0.0.1  ads.userfriendly.org #[AdvertPro]

127.0.0.1  adsnew.userfriendly.org

127.0.0.1  subtracts.userplane.com

127.0.0.1  cache.static.userplane.com

127.0.0.1  www.usersonlinecounter.com

127.0.0.1  www.utarget.co.uk #[utarget Ad code]

127.0.0.1  rotabanner.utro.ru

127.0.0.1  rotabanner100.utro.ru

127.0.0.1  rotabanner234.utro.ru

127.0.0.1  rotabanner468.utro.ru

127.0.0.1  traffic.uusee.com

127.0.0.1  www.uz89.com

# [V]

127.0.0.1  beacon.valeoip.com

127.0.0.1  feed.validclick.com

127.0.0.1  www.valtrk.com

127.0.0.1  ad.jp.ap.valuecommerce.com #[SecuritySpace.WebBug]

127.0.0.1  ad.vba.ru

127.0.0.1  ads.vclick.vn

127.0.0.1  publicidad.vocento.com

127.0.0.1  ads.vegas.com

127.0.0.1  ad.vel.pl

127.0.0.1  ads.velcom.com

127.0.0.1  counters.vendio.com

127.0.0.1  ads.vertele.com

127.0.0.1  www.verticlick.com

127.0.0.1  spinbox.versiontracker.com #[McAfee.Cookie-Versiontrack]

127.0.0.1  www.view4cash.de

127.0.0.1  tracking.vindicosuite.com

127.0.0.1  web.vindicosuite.com #[WebBug]

127.0.0.1  vip-mesta.ru

127.0.0.1  banners.vipprofits.com

127.0.0.1  adserver.virginmedia.com

127.0.0.1  ads.virtualmalaysia.com

127.0.0.1  partners.visiads.com

127.0.0.1  sniff.visistat.com

127.0.0.1  wp.vizu.com

127.0.0.1  ads.v-links.net

127.0.0.1  www.v-links.net

127.0.0.1  stats.vodpod.com

127.0.0.1  aa.voice2page.com

127.0.0.1  www.voonda.com #[Spyware.TAFbar]

127.0.0.1  ads2.vortexmediagroup.com #[AdvertPro]

127.0.0.1  ads.vs.com

127.0.0.1  c7121.vsservers.net

127.0.0.1  www.vstats.net

127.0.0.1  sevenc.vze.com #[VBS.Powcox@mm]

127.0.0.1  com.adv.vz.ru

127.0.0.1  234x120.adv.vz.ru

127.0.0.1  p2p.adv.vz.ru

127.0.0.1  txt.adv.vz.ru

127.0.0.1  tizer.adv.vz.ru

# [W]

127.0.0.1  www.w1.ro

127.0.0.1  secure.w3track.com

127.0.0.1  ad.wanderlist.com

127.0.0.1  www.warezenergy.com #[Adware.Begin2search]

127.0.0.1  hitx.waudit.cz

127.0.0.1  traffic.waypointcash.com

127.0.0.1  ads.weather.ca

127.0.0.1  btn.counter.weather.ca

127.0.0.1  twnads.weather.ca

127.0.0.1  pub.weatherbug.com #[RealMedia]

127.0.0.1  ads.weatherflow.com

127.0.0.1  bannervip.web1000.com

127.0.0.1  tracking.web2corp.com

127.0.0.1  data.webads.co.nz

127.0.0.1  adv.webadvertising.ch

127.0.0.1  nx-adv.webadvertising.ch #[RealMedia]

127.0.0.1  www.web-chart.de

127.0.0.1  www.webclixs.com

127.0.0.1  www.wecounthits.com

127.0.0.1  webcounter.be

127.0.0.1  track.webgains.com

127.0.0.1  webgozar.com

127.0.0.1  server2.webgozar.com

127.0.0.1  server3.webgozar.com

127.0.0.1  www.webgozar.ir

127.0.0.1  ads.webground.bg

127.0.0.1  webhits.de

127.0.0.1  www.webhits.de

127.0.0.1  ads2.weblogssl.com

127.0.0.1  www.weblogtracker.net

127.0.0.1  counter.web-marketolog.ru

127.0.0.1  banners.webmasterplan.com #[SecuritySpace.WebBug]

127.0.0.1  ebayrelevancead.webmasterplan.com

127.0.0.1  partners.webmasterplan.com

127.0.0.1  fc.webmasterpro.de

127.0.0.1  adv.webmd.com

127.0.0.1  as.webmd.com

127.0.0.1  stat.webmedia.pl

127.0.0.1  redirect.webnowa.com

127.0.0.1  astatic.weborama.fr

127.0.0.1  cstatic.weborama.fr

127.0.0.1  fnacmagasin.solution.weborama.fr

127.0.0.1  laredoute.solution.weborama.fr

127.0.0.1  pro.weborama.fr

127.0.0.1  www.webpayvault.com

127.0.0.1  go.webrewardstream.com

127.0.0.1  web1.webrewardstream.com

127.0.0.1  counter.webservis.gen.tr

127.0.0.1  logo.webservis.gen.tr

127.0.0.1  www.webservis.gen.tr

127.0.0.1  advertpro.webspawner.com

127.0.0.1  6322.web-stats.org

127.0.0.1  www.web-stats.org

127.0.0.1  img.webring.com #[SecuritySpace.WebBug]

127.0.0.1  img1.webring.com

127.0.0.1  ss.webring.com

127.0.0.1  www.website-hit-counters.com

127.0.0.1  track.websitetrafficreport.com #[VisitorTrack Code]

127.0.0.1  www.webstat.se

127.0.0.1  fry.webtistic.com

127.0.0.1  www.webtistic.com

127.0.0.1  ads.webtools24.net

127.0.0.1  banner.webtools24.net

127.0.0.1  web-url.de #[SANS.Alert][Trojan.Muldrop]

127.0.0.1  www.web-url.de

127.0.0.1  ad.wedoo.com

127.0.0.1  blickonl.wemfbox.ch

127.0.0.1  qs.wemfbox.ch

127.0.0.1  adserver.wenters.com

127.0.0.1  banner.westernunion.com

127.0.0.1  partner1.whatsfind.com

127.0.0.1  www.whatsfind.com #[HTML_STARTPAGE.C]

127.0.0.1  stats.widgadget.com

127.0.0.1  api.widgetbucks.com

127.0.0.1  images.widgetbucks.com

127.0.0.1  www.widgetbucks.com

127.0.0.1  wikia-ads.wikia.com

127.0.0.1  banner-server.winecountry.com

127.0.0.1  cache.winhundred.com

127.0.0.1  join1.winhundred.com

127.0.0.1  join2.winhundred.com

127.0.0.1  secure.winhundred.com

127.0.0.1  www.winhundred.com #[SiteAdvisor.winhundred.com]

127.0.0.1  window1.com

127.0.0.1  top.winrate.net

127.0.0.1  stats.wired.com

127.0.0.1  ads.winsite.com

127.0.0.1  win-spy.com

127.0.0.1  www.win-spy.com #[eTrust.Win-Spy][Spyware.WinSpy]

127.0.0.1  ctsde01.wiredminds.de

127.0.0.1  clicktrack.wnu.com

127.0.0.1  woolyboys.com #[Malicious.Links.Codec]

127.0.0.1  www.woolyboys.com

127.0.0.1  adsrv.worldvillage.com

127.0.0.1  botd.wordpress.com #[WebBug]

127.0.0.1  stats.wordpress.com

127.0.0.1  s.stats.wordpress.com

127.0.0.1  analytics.worldnow.com #[WebBug]

127.0.0.1  wtsdc.worldnow.com #[WebTrends]

127.0.0.1  ads.worthplaying.com

127.0.0.1  wowsearch.org

127.0.0.1  www.wowsearch.org

127.0.0.1  adsearch.wp.pl

127.0.0.1  adv.wp.pl

127.0.0.1  badv.wp.pl

127.0.0.1  dot.wp.pl #[WebBug]

127.0.0.1  rek.www.wp.pl

127.0.0.1  oas.wwwheise.de #[RealMedia]

127.0.0.1  www.wysistat.com

127.0.0.1  ad.wz.cz

# [X]

127.0.0.1  ads.xboxic.com

127.0.0.1  count.xhit.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  www.xl-rank.com

127.0.0.1  nedstats.xs4all.nl

127.0.0.1  exit.xpays.com

127.0.0.1  www.xpays.com

127.0.0.1  ad.xrea.com

127.0.0.1  xtainment.net

127.0.0.1  ads.xtra.co.nz

# [Y]

127.0.0.1  advertpro.ya.com

127.0.0.1  googleadsense.ya.com

127.0.0.1  ad.yadro.ru #[SpySweeper.Spy.Cookie]

127.0.0.1  ads.yadro.ru

127.0.0.1  counter.yadro.ru #[McAfee.Cookie-Yadro][Panda.Spyware:Cookie/Yadro]

127.0.0.1  quad.yadro.ru

127.0.0.1  ad2.yam.com

127.0.0.1  ads.yam.com

127.0.0.1  an.yandex.ru

127.0.0.1  bs.yandex.ru #[SecuritySpace.WebBug]

127.0.0.1  yabs.yandex.ru

127.0.0.1  www.yandex.ru #[SunBelt.Yandex][Adware.SecureServicePk]

127.0.0.1  ya-tracker.com

127.0.0.1  ybex.com

127.0.0.1  www.yenilist.com

127.0.0.1  counter.yesky.com

127.0.0.1  yieldbuild.com

127.0.0.1  ev.yieldbuild.com

127.0.0.1  hook.yieldbuild.com

127.0.0.1  payload.yieldbuild.com

127.0.0.1  www.yiqilai.com #[Trojan.Yigather]

127.0.0.1  urchin.lstat.youku.com

127.0.0.1  yourenhancement.com

127.0.0.1  www.yourenhancement.com #[eTrust.YourEnhancement][Trojan.Win32.VB.tg]

127.0.0.1  www.yourhitstats.com

127.0.0.1  ad.yourmedia.com

127.0.0.1  ad1.yourmedia.com

127.0.0.1  stats.yourminis.com

127.0.0.1  www.yourtracking.net

127.0.0.1  ad.yoyo.pl

127.0.0.1  ysearchus.com #[Parasite.TinyBar][SunBelt.TINYBAR]

127.0.0.1  www.ysearchus.com

127.0.0.1  cdn-01.yumenetworks.com #[yumenet.vo.llnwd.net]

127.0.0.1  pl.yumenetworks.com

127.0.0.1  www.yykf.net #[VBS/TrojanDownloader.Agent.E]

# [Z]

127.0.0.1  ad.zanox.com

127.0.0.1  zbox.zanox.com

127.0.0.1  zanox-affiliate.de

127.0.0.1  www.zanox-affiliate.de

127.0.0.1  www13.zapadserver1.com

127.0.0.1  www.zapadserver2.com

127.0.0.1  ad1.zbads.com

127.0.0.1  banners.zbs.ru

127.0.0.1  count.zcominc.com

127.0.0.1  www.zcounter.com

127.0.0.1  download.zhongsou.com #[Adware.SearchNet]

127.0.0.1  pig.zhongsou.com #[Adware-PigSearch]

127.0.0.1  zirve100.com

127.0.0.1  counter.zone.ee

127.0.0.1  mp3.zonebg.com #[HJTH.C2Media/LOP variant]

127.0.0.1  images.ztomy.com

127.0.0.1  pics.ztomy.com #[Parking Service]

127.0.0.1  bannerads.zwire.com

#

# [Various Adult Sites]

127.0.0.1  103bees.com

127.0.0.1  www.5000freebanners.com

127.0.0.1  5000freebanners.net

127.0.0.1  ads.6agenten.dk

127.0.0.1  rotator.7x3.net

# [A]

127.0.0.1  log.aebn.net #[WebBug.eluminate]

127.0.0.1  www.accerispartners.com #[[Dialer.Paydial]

127.0.0.1  aconti.net

127.0.0.1  www.aconti.net #[Dialer.Aconti]

127.0.0.1  xml.ad2m.fr

127.0.0.1  www.adcell.de

127.0.0.1  ads.adgenta.com

127.0.0.1  banners.adgoto.com

127.0.0.1  adlimg05.com

127.0.0.1  www.adlimg05.com

127.0.0.1  www.adloader.com

127.0.0.1  ads.admez.com

127.0.0.1  www.adotube.com

127.0.0.1  www.ad-pay.de

127.0.0.1  adprotraffic.com

127.0.0.1  www.adsforadults.com

127.0.0.1  img6.adspirit.de

127.0.0.1  limg.adspirit.de

127.0.0.1  ads.adsuckers.com

127.0.0.1  adultadrevenue.com

127.0.0.1  www.adultadvertising.net

127.0.0.1  adultadtrade.com

127.0.0.1  www.adultbannerexchange.nl

127.0.0.1  www.adultblogtoplist.com

127.0.0.1  www.adultscandy.com #[SiteAdvisor.adultscandy.com]

127.0.0.1  counter.adultcheck.com

127.0.0.1  scripts.adultcheck.com

127.0.0.1  www.adultbanners.co.uk

127.0.0.1  www.adultbannerswap.co.uk

127.0.0.1  www.adultdatelink.com

127.0.0.1  www.adultpagerank.com

127.0.0.1  www.adult-profit-files.com

127.0.0.1  www.adult-profit-files2.com

127.0.0.1  www.adult-tracker.de

127.0.0.1  www.adultwords.eu

127.0.0.1  aff.adventory.com

127.0.0.1  advprotraffic.com

127.0.0.1  cluster.adworldmedia.com

127.0.0.1  results.adworldmedia.com

127.0.0.1  www.adworldmedia.com

127.0.0.1  www.adv-italia.com

127.0.0.1  advert.hu

127.0.0.1  beta.adyea.com

127.0.0.1  delivery.adyea.com

127.0.0.1  dn.adzerver.com

127.0.0.1  temp.adzerver.com

127.0.0.1  banners.affiliatefuture.com

127.0.0.1  err.agava.ru

127.0.0.1  ads1.a-lehdet.fi

127.0.0.1  allniches.com #[Google.Warning]

127.0.0.1  www.allniches.com

127.0.0.1  ads.amateurmatch.com

127.0.0.1  ads2.amateurmatch.com

127.0.0.1  banners.amateurtour.com

127.0.0.1  banners.amfibi.com

127.0.0.1  amhen.com.ru #[Umax]

127.0.0.1  banners.amsterdamcash.com

127.0.0.1  www.appunti-tesine.net #[Trojan.Win32.Dialer.hh]

127.0.0.1  ads.asexstories.com

127.0.0.1  www.attractivesex.com #[Malicious.Links]

127.0.0.1  azkempire.com

127.0.0.1  www.azkempire.com #[Malicious.Links.Codec]

# [B]

127.0.0.1  banners.babylon-x.com

127.0.0.1  promo.badoink.com

127.0.0.1  partners.badongo.com

127.0.0.1  ua.badongo.com

127.0.0.1  www.banner.cz

127.0.0.1  adv.bannercity.ru

127.0.0.1  link.bannersystem.cz

127.0.0.1  baxet.com #[Spamdexing]

127.0.0.1  beam.to #[Spamdexing.Codec]

127.0.0.1  belasninfetas.org

127.0.0.1  www.belasninfetas.org

127.0.0.1  ad.beleveyou.com

127.0.0.1  bestga.biz #[thetraff.com]

127.0.0.1  it.best-top.biz

127.0.0.1  uk.best-top.biz

127.0.0.1  us.best-top.biz

127.0.0.1  www.bigmpegx.com #[Malicious.Links]

127.0.0.1  www.bigpenisguide.com

127.0.0.1  adx.bixee.com

127.0.0.1  www.bluewavelinks.com #[AdWare.Win32.SearchIt.k]

127.0.0.1  ads.bnmedia.com

127.0.0.1  bootylist.com #[HTML/TrojanDownloader.XXXToolbar]

127.0.0.1  fe.brandreachsys.com

127.0.0.1  media.brandreachsys.com

127.0.0.1  ads.brazzers.com

127.0.0.1  ads2.brazzers.com

127.0.0.1  nl.browserupdate.co.uk

127.0.0.1  www.browserupdate.co.uk #[Browserupdate Dialer]

127.0.0.1  buxflow.com

127.0.0.1  www.buxflow.com

127.0.0.1  toplists.buzzsession.lv

# [C]

127.0.0.1  banners.camdough.com

127.0.0.1  p.camsitecash.com

127.0.0.1  s.camsitecash.com

127.0.0.1  ads.host.camz.com

127.0.0.1  logger.cash-media.de

127.0.0.1  ad.cashdorado.de

127.0.0.1  www.cashthat.com

127.0.0.1  adv.casinopays.com

127.0.0.1  ads.cavello.com

127.0.0.1  banners.celebtaboo.com

127.0.0.1  centralcoastihop.net #[Spamdexing]

127.0.0.1  err.chicappa.jp

127.0.0.1  best.clean-porno.com #[Spamdexing]

127.0.0.1  hit.clickaider.com

127.0.0.1  hit.dev.clickaider.com

127.0.0.1  clickbux.ru

127.0.0.1  s.clicktale.net #[g1.panthercdn.com]

127.0.0.1  banners.clickthrucash.com

127.0.0.1  www.clickthruserver.com

127.0.0.1  banners.clips4sale.com

127.0.0.1  www.coolfreehost.com

127.0.0.1  show.communiad.com

127.0.0.1  content-loader.com

127.0.0.1  www.content-loader.com #[SunBelt.Dialer.CCAccess][Win32/Dialer.KS]

127.0.0.1  counter.cnw.cz

127.0.0.1  www.count24.de

127.0.0.1  www.counter4all.de

127.0.0.1  counter4all.dk

127.0.0.1  d.crackedearth.com #[Parasite.CrackedEarth]

127.0.0.1  www.crackedearth.com #[SPYW_SRCHHOOK.A]

127.0.0.1  crazyegg.com

127.0.0.1  www.cybilling.com

127.0.0.1  cyberfind10.info #[Spamdexing]

127.0.0.1  banner.czech-sex.cz

# [D]

127.0.0.1  dan-online.biz #[Spamdexing]

127.0.0.1  www.danworld.net #[content.yieldmanager.com]

127.0.0.1  www.date.se #[SMS Dialer][Date Regon]

127.0.0.1  top.dating.lt #[counter.top.dating.lt]

127.0.0.1  www.dbobs.com #[Spamdexing]

127.0.0.1  banners.deseoasiatico.com

127.0.0.1  dialxs.nl #[HJTH.DialXS]

127.0.0.1  dialxs.com #[DIAL_DIALXS.A]

127.0.0.1  adv.digieros.it

127.0.0.1  w3.dinerotica.com

127.0.0.1  www.dinerotica.com #[HJTH.Adult Content Dialer]

127.0.0.1  www.dikai.com #[HJTH.Adult Content Dialer]

127.0.0.1  www.directoryadult.com

127.0.0.1  www.divx.it

127.0.0.1  banners.dollarmachine.com

127.0.0.1  doublepimp.com

127.0.0.1  ad1.doublepimp.com

127.0.0.1  ad2.doublepimp.com

127.0.0.1  dev.doublepimp.com

127.0.0.1  rts.doublepimp.com

127.0.0.1  tracking.dtiserv2.com

# [E]

127.0.0.1  www.easy-dating.org

127.0.0.1  ad.ecplaza.net

127.0.0.1  cams.enjoy.be

127.0.0.1  clicks.equantum.com

127.0.0.1  top.er.cz

127.0.0.1  www.erostars.de #[Dialer.Erostars]

127.0.0.1  erotizer.info

127.0.0.1  www.eroticdialer.com #[Trojan.Win32.Toras]

127.0.0.1  r.ranking.erotyka.zy.pl

127.0.0.1  gayporn.erotic-place.org

127.0.0.1  pustoaice.erotic-place.org

127.0.0.1  ban.erovideo.ru

# [F]

127.0.0.1  more.fantasti.cc

127.0.0.1  a0e6.ffx23wl.nl #[ConnectSwitch Dialer Variant]

127.0.0.1  www.fickads.net

127.0.0.1  www.mb.fidelity.ru

127.0.0.1  www.filthyadserver.com

127.0.0.1  www.firebanner.com

127.0.0.1  www.flash-stat.com

127.0.0.1  phpads.foundrymusic.com

127.0.0.1  www.freestats.tv

127.0.0.1  www.free-toplisten.at

127.0.0.1  xyz.freeweblogger.com

127.0.0.1  www.fuckteenpussy.net #[Malicious.Links]

# [G]

127.0.0.1  www.gaydemonads.com

127.0.0.1  gaytrafficbroker.com

127.0.0.1  gpads.geniproj.com

127.0.0.1  arsconsole.global-intermedia.com

127.0.0.1  feeds.global-intermedia.com

127.0.0.1  global-netcom.de #[Parasite.GlobalNetcom][Wildcard DNS]

127.0.0.1  install.global-netcom.de

127.0.0.1  software.global-netcom.de

127.0.0.1  www.global-netcom.de #[Dialer.Coder]

127.0.0.1  www.goadult.info

127.0.0.1  godefloration.net #[Malicious.Links.Codec]

127.0.0.1  ads.gofuckyourself.com

127.0.0.1  www.gonorar.com #[Spamdexing]

127.0.0.1  go-porn.to #[Trojan.Codec]

127.0.0.1  banner.greatpokerclub.org #[Adware.Casino]

# [H]

127.0.0.1  banners.hawh.net

127.0.0.1  adserver.hispavista.com

127.0.0.1  adweb1.hornymatches.com

127.0.0.1  adweb2.hornymatches.com

127.0.0.1  hot-porn-clips.com

127.0.0.1  ad3.hornymatches.com

127.0.0.1  gbanners.hornymatches.com

127.0.0.1  ext.host-tracker.com

127.0.0.1  ads3497.hotwords.com.br

127.0.0.1  ads38.hotword.com.br

127.0.0.1  403.hqhost.net

127.0.0.1  404.hqhost.net

127.0.0.1  hqualitysex.com

127.0.0.1  www.hqualitysex.com #[Google.Warning]

127.0.0.1  www.hugetraffic.com

127.0.0.1  humorcash.nl

127.0.0.1  www.humorcash.nl

127.0.0.1  www.humortrade.com

127.0.0.1  hsk.huskymedia.com

127.0.0.1  scrollingads.hustlermegapass.com

# [I]

127.0.0.1  ads.iawsnetwork.com

127.0.0.1  oreo.iawsnetwork.com

127.0.0.1  ii0.us

127.0.0.1  iliky.com

127.0.0.1  ads.imarketservices.com

127.0.0.1  img-video-xxx.com #[Malicious.Links.Codec]

127.0.0.1  stats.industryinc.com

127.0.0.1  exitstitial.infospacehosting.net #[InfoSpace]

127.0.0.1  ads.ipc.to

127.0.0.1  www.iperbanner.com

127.0.0.1  yxcv.is-a-geek.net #[smutserver.com][HJTH.Adult Content Dialer]

127.0.0.1  promotools.islive.nl

127.0.0.1  isralink.net

127.0.0.1  ads.iwangmedia.com

# [J]

127.0.0.1  ads.jewcy.com

127.0.0.1  pagerank.jklir.net

127.0.0.1  ads.jolinko.com

127.0.0.1  errors.jp18.com

127.0.0.1  just-traffic.com

# [K]

127.0.0.1  ads.kaktuz.net

127.0.0.1  www.kickassratios.com

# [L]

127.0.0.1  banners.largecash.com

127.0.0.1  ads.lesbianpersonals.com

127.0.0.1  counter.lgg.ru

127.0.0.1  linkmass.com

127.0.0.1  hostit.liveadulthost.com #[Javascript.Exploit]

127.0.0.1  livecams.nl

127.0.0.1  www.livecams.nl #[Dialer.LiveCams]

127.0.0.1  livebanner.livecamania.com

127.0.0.1  www.livewebstats.net

127.0.0.1  www.logging.to

127.0.0.1  ads.louiesporn.com

127.0.0.1  lolafree.com #[Malicious.Links]

127.0.0.1  partner.loveplanet.ru

127.0.0.1  www.love-world.de #[Troj/Tps]

# [M]

127.0.0.1  rewards.macandbumble.com

127.0.0.1  nub9r.maisonx.com #[BKDR_WOMANIZ.H]

127.0.0.1  ads.maleflixxx.tv

127.0.0.1  masterdialer.de #[Parasite.MasterDialer]

127.0.0.1  www.masterdialer.de

127.0.0.1  www.mediaswitch.nl #[Win32/Trojan.Downloader.VB.FH]

127.0.0.1  mass-traffic.com

127.0.0.1  crtv.mate1.com

127.0.0.1  mature-pussy.us

127.0.0.1  top-fr.mconet.biz

127.0.0.1  top-it.mconet.biz

127.0.0.1  top-us.mconet.biz

127.0.0.1  www.mdexitconsole.com

127.0.0.1  audit.median.hu

127.0.0.1  dialer.medianed.nl #[HJTH.Tintel Dialer]

127.0.0.1  ads.meninpain.com

127.0.0.1  www.megacounter.de

127.0.0.1  smartad.mercadolivre.com.br

127.0.0.1  ads.miarroba.com

127.0.0.1  ads.millionairemate.com

127.0.0.1  adserver.millionairemate.com

127.0.0.1  www.mm26.com

127.0.0.1  ads.mofos.com

127.0.0.1  scripts.mofos.com

127.0.0.1  www.momsbusters.com

127.0.0.1  ads.mrskin.com

127.0.0.1  adserving.muppetism.com

127.0.0.1  muschi-tgp.com #[IFrame.Exploit]

127.0.0.1  ox2.myadslanding.net

127.0.0.1  banners.mynakedweb.com

127.0.0.1  mytraf.info

127.0.0.1  www.mytraf.info

# [N]

127.0.0.1  clicks.nastydollars.com

127.0.0.1  grab.nastydollars.com

127.0.0.1  graphics.nastydollars.com

127.0.0.1  naughtyads.naughtyamerica.com

127.0.0.1  phpadsnew.new.natuurpark.nl

127.0.0.1  tools.naughtyamerica.com

127.0.0.1  aff.naughtyconnect.com

127.0.0.1  www.naughty-traffic.com

127.0.0.1  ncbfarm.com

127.0.0.1  promo.neondollars.com

127.0.0.1  www.netagent.cz

127.0.0.1  www.net-pratique.fr

127.0.0.1  adserver.newsfilter.org

127.0.0.1  www.niggnogs.com

127.0.0.1  counter.nope.dk

127.0.0.1  nudegayvideos.com

127.0.0.1  www.nudegayvideos.com #[Malicious.Links.Zango]

127.0.0.1  www.nzads.net.nz

# [O]

127.0.0.1  www.obanner.net

127.0.0.1  counter.ok.ee

127.0.0.1  www.onlinewebservice3.de

127.0.0.1  onlybestsex.com #[Win32/Adware.Toolbar.WinThirtyTwo]

127.0.0.1  www.onlybestsex.com

# [P]

127.0.0.1  www.pagerank10.co.uk

127.0.0.1  s3.pageranktop.com

127.0.0.1  www.pagerank-gratuit.com

127.0.0.1  banners.partypartners.com

127.0.0.1  promotion.partnercash.de

127.0.0.1  banners.penthouse.com

127.0.0.1  banners.perfectgonzo.com

127.0.0.1  bannershotlink.perfectgonzo.com

127.0.0.1  error.pimproll.com

127.0.0.1  promo.pimproll.com

127.0.0.1  pinkteentop.com #[IFrame.Exploit]

127.0.0.1  www.pinkyellow.com

127.0.0.1  pixyoung.com #[Javascript.Exploit]

127.0.0.1  pei-ads.playboy.com #[RealMedia]

127.0.0.1  as.pmates.com

127.0.0.1  ads.pno.net

127.0.0.1  c.pocitadlo.sk

127.0.0.1  ad.porkolt.com

127.0.0.1  my.porn-info.info #[Spamdexing]

127.0.0.1  www.porncash.de

127.0.0.1  ads.porncash.tv

127.0.0.1  www.porncash.tv

127.0.0.1  www.porndad.com

127.0.0.1  ads.pornfun.com

127.0.0.1  banner1.pornhost.com

127.0.0.1  www.pornmail.com #[CrackedEarth]

127.0.0.1  www.filmy.porno.pl #[Dialer.Connect]

127.0.0.1  www.pornobanner.com

127.0.0.1  www.pornoitalianogratis.com #[NOD32.Win32/Dialer.HZ]

127.0.0.1  www.power-counter.com

127.0.0.1  www.prdirectory.biz

127.0.0.1  baners.pr-models.com

127.0.0.1  adv.protraffic.com

127.0.0.1  ts.protraffic.com

127.0.0.1  ads.publicdisgrace.com

127.0.0.1  banners.publipagos.com

127.0.0.1  purefuck.com

127.0.0.1  ads.purefuck.com

127.0.0.1  site.puritan.com #[WebBug.eluminate]

127.0.0.1  stream.pussyharem.com

127.0.0.1  www.pussyharem.com #[HJTH.Adult Content Dialer]

127.0.0.1  pxporn.com

127.0.0.1  www.pxporn.com #[Google.Warning]

127.0.0.1  banners.pythonvideo.com

127.0.0.1  banners2.pythonvideo.com

127.0.0.1  tracker.pythonvideo.com

# [Q]

127.0.0.1  quickuseronline.com

# [R]

127.0.0.1  www.rabbitsreviews.com

127.0.0.1  radarstats.com

127.0.0.1  www.ranking-charts.de

127.0.0.1  www.rank-guru.com

127.0.0.1  www.rank-power.com

127.0.0.1  www.ranking-links.de

127.0.0.1  www.ranksexo.com

127.0.0.1  gay.rated100.com

127.0.0.1  hostedads.realitykings.com

127.0.0.1  track.realitykings.com

127.0.0.1  adserver.realhomesex.net

127.0.0.1  cdn.redlightcenter.com

127.0.0.1  hit.reference-sexe.com

127.0.0.1  www2.reliablebanners.com

127.0.0.1  www3.reliablebanners.com

127.0.0.1  banners.rexmag.com

127.0.0.1  stats.rhyman.com

127.0.0.1  www.robsxxx.com

127.0.0.1  www.roccomovies.net #[Malicious.Links]

127.0.0.1  ads.rude.com

# [S]

127.0.0.1  adserver.saxonsoft.hu

127.0.0.1  www.scambiobanner.tv

127.0.0.1  pagerank.scambiositi.com

127.0.0.1  www.screamingvideos.com

127.0.0.1  st.seblg.com #[Spamdexing]

127.0.0.1  go.securecasting.com #[DIAL_EXDIAL.A]

127.0.0.1  selluser.ru

127.0.0.1  promo.sensationalcash.com

127.0.0.1  ad.sexcount.de

127.0.0.1  www.sexcount.de

127.0.0.1  adv.sexcounter.com #[Ewido.TrackingCookie.Sexcounter]

127.0.0.1  cs.sexcounter.com #[Panda.Spyware:Cookie/cs.sexcounter]

127.0.0.1  www.sexfiles.nu #[SMS Dialer][Date Regon]

127.0.0.1  www.sexhit.com

127.0.0.1  freeporn.sexhooonline.com #[Spamdexing]

127.0.0.1  www.sexhooonline.com

127.0.0.1  ads.sexinyourcity.com

127.0.0.1  media.sexinyourcity.com

127.0.0.1  www.sexinyourcity.com

127.0.0.1  www1.sexinyourcity.com

127.0.0.1  www.sexleech.com

127.0.0.1  www.sexlinksnow.com #[HJTH.Adult Content Dialer]

127.0.0.1  bannerrotation.sexmoney.com

127.0.0.1  click.sexmoney.com

127.0.0.1  imageads.sexmoney.com

127.0.0.1  pagepeels.sexmoney.com

127.0.0.1  www.sexmoney.com

127.0.0.1  ard.sexplaycam.com

127.0.0.1  shop.sexplorer.it

127.0.0.1  www.sexplorer.it

127.0.0.1  counter.sexsuche.tv

127.0.0.1  sex-toplista.zy.pl

127.0.0.1  r.sex-toplista.zy.pl

127.0.0.1  ads.sextube.si

127.0.0.1  www.sexxxpass.com #[SecurityRisk.SexxPass]

127.0.0.1  members.sexroulette.com

127.0.0.1  sexwave.com #[IFrame.Exploit]

127.0.0.1  www.sexwave.com

127.0.0.1  www.sexyblogtop.com

127.0.0.1  sexyfamouscelebs.com #[Javascript.Exploit]

127.0.0.1  www.sexyfamouscelebs.com

127.0.0.1  logs.sexy-parade.com

127.0.0.1  sexyoung.us

127.0.0.1  www.shinypics.com

127.0.0.1  link.siccash.com

127.0.0.1  click.silvercash.com

127.0.0.1  exit.silvercash.com

127.0.0.1  smc.silvercash.com

127.0.0.1  www.silvercash.com #[SiteAdvisor.silvercash.com]

127.0.0.1  sixsigmatraffic.com

127.0.0.1  www.sixsigmatraffic.com

127.0.0.1  slackernetwork.com

127.0.0.1  www.slackernetwork.com #[Malicious.Links]

127.0.0.1  stats.smartbucks.com

127.0.0.1  ad.smsmovies.net

127.0.0.1  ad.smsmovie.tv

127.0.0.1  www.splem.net

127.0.0.1  www.spookylinks.com

127.0.0.1  ds.starmedia.com

127.0.0.1  statistiq.com

127.0.0.1  statsgold.com

127.0.0.1  ads.stileproject.com

127.0.0.1  moo.stileproject.com

127.0.0.1  www.stockway.net #[Spamdexing]

127.0.0.1  www.storage-tasp.com #[HJTH.Virgilio Dialer]

127.0.0.1  supersexpass.com #[SunBelt.SuperSexPass]

127.0.0.1  www.supersexpass.com

127.0.0.1  www.supertopsites.com

127.0.0.1  superxxxhot.com #[Malicious.Links.Codec]

127.0.0.1  sureads.com

# [T]

127.0.0.1  ads.tarrobads.com

127.0.0.1  traffic.tcmagnet.com

127.0.0.1  www.temisvolti.info #[Trojan.Win32.Dialer.hh]

127.0.0.1  www.thehon.com

127.0.0.1  www.thehun.com #[Win32.Lospad.B]

127.0.0.1  thehun.net

127.0.0.1  www.thehun.net

127.0.0.1  banner.thenudelist.com

127.0.0.1  tracking.the7thchamber.com

127.0.0.1  ads.thetrainingofo.com

127.0.0.1  camz.tintel.nl #[HJTH.Tintel Dialer]

127.0.0.1  hpintermedia.tintel.nl #[HJTH.Tintel Dialer]

127.0.0.1  xenium.tintel.nl #[HJTH.Tintel Dialer]

127.0.0.1  todayshunks.com

127.0.0.1  www.todayshunks.com #[Malicious.Links.Zango]

127.0.0.1  counter.top.dating.lt

127.0.0.1  www.toons-for-adult.com #[Google.Warning]

127.0.0.1  images.top66.ro

127.0.0.1  script.top66.ro

127.0.0.1  www.top66.ro

127.0.0.1  www.topdate.net

127.0.0.1  d.topindex.cz

127.0.0.1  topflist.com

127.0.0.1  toplist.sk

127.0.0.1  toplisted.in

127.0.0.1  topscore.in

127.0.0.1  www.topsites24.de

127.0.0.1  ox.tossoffads.com

127.0.0.1  www.tossoffads.com

127.0.0.1  www.tracker123.com

127.0.0.1  www.trafficcashgold.com

127.0.0.1  www.trafficrank.de

127.0.0.1  ads.trafficjunky.net

127.0.0.1  delivery.trafficjunky.net

127.0.0.1  www.traffic-in.com

127.0.0.1  thumb.trafficroup.com

127.0.0.1  www.traffic-trades.com

127.0.0.1  clicks.traffictrader.net

127.0.0.1  clicks2.traffictrader.net

127.0.0.1  clicks3.traffictrader.net

127.0.0.1  clicks.eutopia.traffictrader.net

127.0.0.1  dialer.tranent.nl

127.0.0.1  pay.tranent.nl

127.0.0.1  affiliates.thrixxx.com

127.0.0.1  content.thrixxx.com

127.0.0.1  bannerexchange.troglod.com

127.0.0.1  tropezitalia.com #[McAfee.Downloader-AVT]

127.0.0.1  banner.tropezitalia.com #[Adware.Casino]

127.0.0.1  www.tropezitalia.com #[Malicious.Links]

127.0.0.1  ads.tube8.com

127.0.0.1  ads01.tube8.com

127.0.0.1  ads02.tube8.com

127.0.0.1  ads03.tube8.com

127.0.0.1  twinklane.com

127.0.0.1  www.twinklane.com #[Malicious.Links]

127.0.0.1  promo.twistyscash.com

# [U]

127.0.0.1  udmserve.net

127.0.0.1  adclient-af.lp.uol.com.br

127.0.0.1  adrequisitor-af.lp.uol.com.br

127.0.0.1  www.urlads.net

# [V]

127.0.0.1  stats.ventivmedia.com

127.0.0.1  ad.pornfuzepremium.videobox.com

127.0.0.1  www.video-porno.cc #[Trojan.Win32.Dialer.hh]

127.0.0.1  banners.virtuagirlhd.com

127.0.0.1  cbanners.virtuagirlhd.com

127.0.0.1  www.virtualsurfer.com

127.0.0.1  count.vivistats.com

127.0.0.1  vote4me.de

127.0.0.1  promotools.vpscash.nl

127.0.0.1  banner.vrs.cz

# [W]

127.0.0.1  www.w3counter.com

127.0.0.1  wanktool.com #[IFrame.Exploit]

127.0.0.1  www.warningpages.com

127.0.0.1  h.waudit.cz #[WebBug]

127.0.0.1  promos.wealthymen.com

127.0.0.1  banners.webcams.com

127.0.0.1  ads.webcamclub.com

127.0.0.1  www.webhostingcounter.com

127.0.0.1  banners.weboverdrive.com

127.0.0.1  www.whatpornsite.com #[Backdoor.Nibu.G]

127.0.0.1  whosread.com

127.0.0.1  www.wickedpictures.com #[Win32/Agent.PA]

127.0.0.1  www.widebanner.com

127.0.0.1  www.wmsonic.com #[Spamdexing]

127.0.0.1  www.worldxchange.com #[Dialer.Paydial]

# [X]

127.0.0.1  amour-xxx-angels.xhostar.com #[Malicious.Links]

127.0.0.1  cocovideo.xhostar.com #[IFrame.Exploit]

127.0.0.1  xkxempire.com

127.0.0.1  www.xkxempire.com #[Malicious.Links.Codec]

127.0.0.1  neorsoft.xost.ru #[Javascript.Exploit]

127.0.0.1  x-road.co.kr

127.0.0.1  www.xstat.pl

127.0.0.1  www.xtrafic.ro

127.0.0.1  adserver1.xtrafficnetworks.com

127.0.0.1  x-videoz.org #[Malicious.Links.Codec]

127.0.0.1  ard.xxxblackbook.com

127.0.0.1  flashbanners.static.ard.xxxblackbook.com

127.0.0.1  geo.xxxblackbook.com

127.0.0.1  www.xxxgamer.net

127.0.0.1  xxxset.net

127.0.0.1  bannerlink.xxxtreams.com

127.0.0.1  xxx-videos.to #[Trojan.Codec]

127.0.0.1  stats.xxxrewards.com

127.0.0.1  benjamin.xww.de #[W32/Kazoa.B]

127.0.0.1  voyour-cams.xww.de #[W32.DSS.Trojan]

# [Y]

127.0.0.1  ads.yankscash.com

127.0.0.1  ads.ynot.com

127.0.0.1  www.youho.com #[Adcycle]

127.0.0.1  youngteenmodel.info

127.0.0.1  tracking.yourfilehost.com

127.0.0.1  ads-dev.youporn.com

127.0.0.1  stats.youporn.com

# [Z]

127.0.0.1  www.zoo-fuck.net #[Win32/Dialer.E]

127.0.0.1  zusojbktvo.cn

# [Misc]

127.0.0.1  www.000000000000000.info

127.0.0.1  banner.0catch.com #[Google.Diagnostic]

127.0.0.1  bannerimages.0catch.com #[dist.belnk.com]

127.0.0.1  stattrack.0catch.com

127.0.0.1  tarjetas.0catch.com #[Win32/Small.JS]

127.0.0.1  www.05168.com.tw #[VBS/TrojanDownloader.Agent.BA]

127.0.0.1  www.060s.com #[Win32/Prosti.C]

127.0.0.1  banner.1and1.com

127.0.0.1  100webads.com

127.0.0.1  www.104bay.com #[JS/Exploit.ADODB.Stream.NAG]

127.0.0.1  www.11468.com #[W32/Startpage.BZU]

127.0.0.1  1traff.ru

127.0.0.1  banner.1und1.com

127.0.0.1  banner.1and1.co.uk

127.0.0.1  www.123banners.com

127.0.0.1  123go.com

127.0.0.1  ns1.123go.net

127.0.0.1  123stat.com

127.0.0.1  13175.com

127.0.0.1  www.13175.com #[JS/TrojanDownloader.Agent]

127.0.0.1  adclient.163.com

127.0.0.1  adgeo.163.com

127.0.0.1  1234.2bro.com #[Adware.Satbo]

127.0.0.1  ads.128b.com

127.0.0.1  www.1800banners.com

127.0.0.1  count.2ch.net

127.0.0.1  www.20dy.cn #[NOD32.NewHeur_PE]

127.0.0.1  adserv.20six.net

127.0.0.1  ads.24.com

127.0.0.1  counter.24log.ru

127.0.0.1  www.241hits.com

127.0.0.1  counter.24log.com

127.0.0.1  tmp6.2ch.net #[Trojan.Sufiage]

127.0.0.1  2z0o.net #[Trojan.Popper]

127.0.0.1  pop1.2z0o.net #[admarketplace.net]

127.0.0.1  pop2.2z0o.net #[TROJ_DLOADER.AGS]

127.0.0.1  pop10.2z0o.net

127.0.0.1  req2.2z0o.net #[McAfee.Downloader-ACV]

127.0.0.1  www.30ds.com

127.0.0.1  imgad1.3conline.com

127.0.0.1  imgad2.3conline.com

127.0.0.1  imgad3.3conline.com

127.0.0.1  www.360ads.com

127.0.0.1  181.365soft.info #[Win32/TrojanDownloader.Tiny.EU]

127.0.0.1  www.369.com #[Adware.LoadEWXD][McAfee.StartPage-JI]

127.0.0.1  www.3d-icons.com #[SiteAdvisor.3d-icons.com]

127.0.0.1  www.3deepspace.com #[SiteAdvisor.3deepspace.com]

127.0.0.1  guannan.3322.net

127.0.0.1  download.35mb.com #[impregnable.net]

127.0.0.1  static.35mb.com #[HJTH.Win32.IstBar.fa]

127.0.0.1  www.35mb.com #[HJTH.MediaTickets Installer]

127.0.0.1  code.363link.com

127.0.0.1  ad.37.com

127.0.0.1  delivery.3rdads.com

127.0.0.1  ads.4tube.com

127.0.0.1  adv.440network.com

127.0.0.1  4affiliate.net

127.0.0.1  adserver.4clicks.org

127.0.0.1  r.4at1.com

127.0.0.1  banners.4d5.net

127.0.0.1  ad.stat.4u.pl

127.0.0.1  adstat.4u.pl

127.0.0.1  stat.4u.pl

127.0.0.1  41m.com #[HJTH.XXXToolbar Variant][Trojan.Clicker.BL]

127.0.0.1  msncheck.41m.com

127.0.0.1  www.41m.com

127.0.0.1  www.4061.it #[Win32/Haxdoor]

127.0.0.1  softads.50webs.com

127.0.0.1  www.51.com #[Backdoor.CVM]

127.0.0.1  js.users.51.la

127.0.0.1  js.a.s35.51.la

127.0.0.1  code.51soo.com

127.0.0.1  u.51soo.com

127.0.0.1  www.ff.iij4u.or.jp #[Trojan.Upchan]

127.0.0.1  a1.65862.com #[Javascript.Exploit]

127.0.0.1  ad.71i.de

127.0.0.1  adserver.71i.de

127.0.0.1  7oo.meibu.com #[McAfee.BackDoor-CKB]

127.0.0.1  www.777tool.com

127.0.0.1  www.7939.com #[TROJ_DELF.CNV]

127.0.0.1  soswxyz.8800.org #[Trojan.Riler.F]

127.0.0.1  888-it.com #[AdWare.Win32.Casino.q]

127.0.0.1  www.888-it.com

127.0.0.1  www.9991.com #[Backdoor.CVM][Adware.PPRich]

127.0.0.1  www.9ringtone.com

127.0.0.1  10000hits.net #[SunBelt.Cookie.10000hits]

# [1&1 Internet][74.208.0.0 - 74.208.191.255]

127.0.0.1  www.adimpact.com

127.0.0.1  www.fish-screensaver.com #[AdWare.Win32.Gator.1008]

127.0.0.1  spyshield.org #[Rogue.Antispyware]

127.0.0.1  www.spyshield.org

127.0.0.1  thecoolpics.com #[W32.Imaut.J]

127.0.0.1  ww1.tongji123.com

127.0.0.1  ww2.tongji123.com

127.0.0.1  ww3.tongji123.com

127.0.0.1  ww4.tongji123.com

# [1-800-hosting][AS33210][69.41.160.0 - 69.41.191.255]

127.0.0.1  www.2cppc.com

127.0.0.1  www.dallas-search.biz

127.0.0.1  www.jadesearch.net

127.0.0.1  justforclickz.com

127.0.0.1  www.kiuprevenue.com #[Spamdexing]

127.0.0.1  www.ineedhits.com

127.0.0.1  onlinedetect.com

127.0.0.1  www.onlinedetect.com

127.0.0.1  www.search-freeek.net

127.0.0.1  www.searchwey.com

127.0.0.1  smarterclickz.com

127.0.0.1  statisfy.net

127.0.0.1  www.values7.com

# [24 interactive][62.75.239.64 - 62.75.239.127]

127.0.0.1  campaigns.de.euserv.adaos-ads.net

127.0.0.1  click.v1.de.euserv.gam.adaos-ads.net

127.0.0.1  cpx.v1.de.euserv.adaos-ads.net

127.0.0.1  img.v1.de.euban.adaos-ads.net

127.0.0.1  js.v1.de.euserv.adaos-ads.net

127.0.0.1  js.v1.de.euserv.fox.adaos-ads.net

127.0.0.1  mailserv.v1.de.euserv.adaos-ads.net

127.0.0.1  static.de.euserv.adaos-ads.net

127.0.0.1  viewcount.v1.de.euserv.adaos-ads.net

# [24 interactive][88.198.207.32 - 88.198.207.63]

# [2x4.ru Network][92.241.164.1 - 92.241.165.255]

127.0.0.1  blowjob.hot-porn-clips.com #[Spamdexing]

127.0.0.1  porn0site.org #[Malicious.Links]

# [2x4.ru Network][92.241.168.0 - 92.241.169.254]

127.0.0.1  ads.2x4.ru

127.0.0.1  googlefastfind.info

# [2xact.com][AS10929][209.44.97.32 - 209.44.97.63]

127.0.0.1  imagescopybetween.com

# [3721.COM][Yahoo]

127.0.0.1  cnsmin.3721.com

127.0.0.1  download.3721.com #[McAfee.Adware-BDSearch]

127.0.0.1  www.3721.com #[Adware.Chinet][ADW_CNSMIN.A]

127.0.0.1  count.3721.yahoo.com

# [411 Web Directory]

127.0.0.1  ad.411web.com

127.0.0.1  adtracker.411web.com

127.0.0.1  hits.411web.com

127.0.0.1  search.411web.com

127.0.0.1  static.411web.com

127.0.0.1  xml.411web.com

127.0.0.1  www.411web.com

127.0.0.1  search.letssearch.com

127.0.0.1  www.letssearch.com #[BrowserAid.LetsSearch]

# [51Yes.com]

127.0.0.1  count3.51yes.com

127.0.0.1  count4.51yes.com

127.0.0.1  count5.51yes.com

127.0.0.1  count8.51yes.com

127.0.0.1  count9.51yes.com

127.0.0.1  count10.51yes.com

127.0.0.1  count11.51yes.com

127.0.0.1  count12.51yes.com

127.0.0.1  count14.51yes.com

127.0.0.1  count15.51yes.com

127.0.0.1  count16.51yes.com

127.0.0.1  count17.51yes.com

127.0.0.1  count18.51yes.com

127.0.0.1  count19.51yes.com

127.0.0.1  count20.51yes.com

127.0.0.1  count22.51yes.com

127.0.0.1  count23.51yes.com

127.0.0.1  count24.51yes.com

127.0.0.1  count25.51yes.com

127.0.0.1  count27.51yes.com

127.0.0.1  count28.51yes.com

127.0.0.1  count29.51yes.com

127.0.0.1  count30.51yes.com

127.0.0.1  count31.51yes.com

127.0.0.1  count32.51yes.com

127.0.0.1  count33.51yes.com

127.0.0.1  count35.51yes.com

127.0.0.1  count37.51yes.com

127.0.0.1  count46.51yes.com

127.0.0.1  count47.51yes.com

127.0.0.1  count48.51yes.com

127.0.0.1  count49.51yes.com

# [7Search.com Networks][EMERgency 24, Inc][208.237.254.0 - 208.237.254.255]

127.0.0.1  7search.com #[Adware.7FaSSt]

127.0.0.1  conversion.7search.com

127.0.0.1  ia1.7search.com

127.0.0.1  img.7search.com

127.0.0.1  meta.7search.com

127.0.0.1  impression.7search.com

127.0.0.1  www.7search.com #[Spyware.SevenSearch]

127.0.0.1  77search.com

127.0.0.1  img.7meta.com

127.0.0.1  www.7metasearch.com

127.0.0.1  www.a1fax.com

127.0.0.1  advertisingagent.com

127.0.0.1  ajokeaday.com

127.0.0.1  bannersxchange.com

127.0.0.1  img.bannersxchange.com

127.0.0.1  www.bannersxchange.com

127.0.0.1  bestsearch.com

127.0.0.1  scripts.bestsearch.com

127.0.0.1  www.bestsearch.com

127.0.0.1  browseraccelerator.com #[Tenebril.Spyware.BrowserAccel]

127.0.0.1  data.browseraccelerator.com #[Trackware.BrowserAccel]

127.0.0.1  download.browseraccelerator.com

127.0.0.1  client.browseraccelerator.com #[Trackware.BrowserAccel]

127.0.0.1  www.browseraccelerator.com

127.0.0.1  www.buscamundo.com

127.0.0.1  internetsecurity.com

127.0.0.1  www.internetsecurity.com

127.0.0.1  www.payperranking.com

127.0.0.1  www.pay-per-search.com

127.0.0.1  paypertext.com

127.0.0.1  predictivesearch.com

127.0.0.1  seal.ranking.com

127.0.0.1  www.ranking.com

127.0.0.1  tracking.roispy.com

127.0.0.1  www.roispy.com #[SunBelt.Cookie.ROISpy]

127.0.0.1  ftp.sevenmetasearch.com

127.0.0.1  www.sevenmetasearch.com

127.0.0.1  tracking.spiderbait.com

127.0.0.1  www.spiderbait.com

127.0.0.1  www.textadvertising.com

127.0.0.1  www.thetop10.com

127.0.0.1  trustgauge.com

127.0.0.1  www.trustgauge.com

127.0.0.1  seal.validatedsite.com

127.0.0.1  www.validatedsite.com

127.0.0.1  www.watch24.com

# [Aarons.Net][AS19969][204.27.56.0 - 204.27.63.255]

127.0.0.1  scan4note.info

127.0.0.1  top4scan.info

# [Abovenet Communications][209.66.64.0 - 209.66.127.255]

127.0.0.1  a7find.com

127.0.0.1  a7search.com

127.0.0.1  www.a7search.com

127.0.0.1  findmore.name

127.0.0.1  free-movies.ws #[Malicious.Links.Codec]

127.0.0.1  www.free-movies.ws

127.0.0.1  opsex.com

127.0.0.1  www.opsex.com

127.0.0.1  adblocks.xmlscope.net

127.0.0.1  yellow-pages.ws

# [Abovenet via Coloquest][AS6461][209.249.220.0 - 209.249.223.255]

127.0.0.1  malwarescanner20.com

# [Admis via various][77.91.228.180 - 77.91.228.189]

# [About Inc][207.241.144.0 - 207.241.159.255]

127.0.0.1  clicks.about.com

127.0.0.1  f.about.com

127.0.0.1  home.about.com

127.0.0.1  images.about.com

127.0.0.1  lunafetch.about.com

127.0.0.1  pixel3.about.com

127.0.0.1  sprinks-clicks.about.com

# [Accoona Corp][208.84.132.0 - 208.84.135.255]

127.0.0.1  www.accoona.cn

127.0.0.1  www.accoona.com #[Adware-Accoona][Adware.Atoolb][Panda.Accoona]

127.0.0.1  www.accoonachess.com

# [Accretive Technology Group][Flying Crocodile][207.246.128.0 - 207.246.159.255]

127.0.0.1  2001positions.com

127.0.0.1  ifa.empflixlive.com

127.0.0.1  static.ifa.empflixlive.com

127.0.0.1  www.flyingcroc.com

127.0.0.1  ifa.hardsexmate.com

127.0.0.1  ifa.maxpornlive.com

127.0.0.1  clicktraq.mtree.com

127.0.0.1  counter.mtree.com

127.0.0.1  dyntraq.mtree.com

127.0.0.1  mtree.com #[Parasite.MoneyTree]

127.0.0.1  mt1.mtree.com

127.0.0.1  mt2.mtree.com

127.0.0.1  mt4.mtree.com #[xxxtoolbar.com]

127.0.0.1  mt10.mtree.com

127.0.0.1  mt12.mtree.com

127.0.0.1  mt15.mtree.com

127.0.0.1  mt32.mtree.com

127.0.0.1  mt34.mtree.com #[Google.Diagnostic]

127.0.0.1  mt35.mtree.com

127.0.0.1  mt37.mtree.com

127.0.0.1  mt55.mtree.com #[Troj/Istbar-BL]

127.0.0.1  mt58.mtree.com

127.0.0.1  mt83.mtree.com

127.0.0.1  mt94.mtree.com

127.0.0.1  mt103.mtree.com

127.0.0.1  mt113.mtree.com

127.0.0.1  mt124.mtree.com #[SiteAdvisor.mtree.com]

127.0.0.1  mt127.mtree.com

127.0.0.1  porn.mtree.com #[Dialer.Moneytree]

127.0.0.1  psy.mtree.com

127.0.0.1  ss.mtree.com

127.0.0.1  the.mtree.com #[SpySweeper.Adware.moneytree]

127.0.0.1  wm.mtree.com #[McAfee.Adware-Nsupdate]

127.0.0.1  xbs.mtree.com #[Downloader.Dyfica.N][Troj/NSUpdate-A]

127.0.0.1  xbs.pao.mtree.com #[TROJ_DYFUCA.X]

127.0.0.1  xbs.sea.mtree.com #[MoneyTree Dialer][SiteAdvisor.mtree.com]

127.0.0.1  www.mtree.com

127.0.0.1  mtreexxx.net

127.0.0.1  freelivesex.cf.mtreexxx.net

127.0.0.1  freeticketcash.cf.mtreexxx.net

127.0.0.1  join4free.cf.mtreexxx.net

127.0.0.1  image2000.mtreexxx.net

127.0.0.1  megaporn.cf.mtreexxx.net

127.0.0.1  xxx.mtreexxx.net

127.0.0.1  www7.mtreexxx.net

127.0.0.1  www.mtreexxx.net #[eTrust.Sex Cams]

127.0.0.1  banners.outster.com #[SpySweeper.Spy.Cookie]

127.0.0.1  c1.outster.com

127.0.0.1  c2.outster.com #[Panda.Spyware:Cookie/Outster]

127.0.0.1  c3.outster.com

127.0.0.1  clit50.outster.com

127.0.0.1  clit120.outster.com

127.0.0.1  links.outster.com

127.0.0.1  refer1.outster.com

127.0.0.1  refer25.outster.com

127.0.0.1  refer46.outster.com

127.0.0.1  refer85.outster.com

127.0.0.1  refer100.outster.com

127.0.0.1  refer102.outster.com

127.0.0.1  rr1.outster.com

127.0.0.1  start.outster.com

127.0.0.1  stats.outster.com

127.0.0.1  ct.sexadnet.com

127.0.0.1  cgi.sexlist.com #[Ewido.TrackingCookie.Sexlist]

127.0.0.1  cgi1.sexlist.com

127.0.0.1  enter.sexlist.com

127.0.0.1  images.sexlist.com

127.0.0.1  links.sexlist.com

127.0.0.1  lobby.sexlist.com #[Panda.Spyware:Cookie/SexList]

127.0.0.1  vis.sexlist.com #[Tenebril.Tracking.Cookie]

127.0.0.1  vis5.sexlist.com

127.0.0.1  xit.sexlist.com #[SunBelt.SexList.com]

127.0.0.1  sextracker.com

127.0.0.1  the.sextracker.com

127.0.0.1  adserver.sextracker.com #[SunBelt.SexTracker.com]

127.0.0.1  banners.sextracker.com

127.0.0.1  counter1.sextracker.com

127.0.0.1  clit.sextracker.com

127.0.0.1  clit1.sextracker.com #[Tenebril.Tracking.Cookie]

127.0.0.1  clit2.sextracker.com

127.0.0.1  clit3.sextracker.com

127.0.0.1  clit4.sextracker.com

127.0.0.1  clit5.sextracker.com

127.0.0.1  clit6.sextracker.com

127.0.0.1  clit7.sextracker.com

127.0.0.1  clit8.sextracker.com

127.0.0.1  clit9.sextracker.com

127.0.0.1  clit10.sextracker.com

127.0.0.1  clit11.sextracker.com

127.0.0.1  clit12.sextracker.com

127.0.0.1  clit13.sextracker.com

127.0.0.1  clit14.sextracker.com

127.0.0.1  clit15.sextracker.com

127.0.0.1  clit16.sextracker.com

127.0.0.1  elite.sextracker.com

127.0.0.1  graphics1.sextracker.com

127.0.0.1  graphics2.sextracker.com

127.0.0.1  hosting.sextracker.com

127.0.0.1  links.sextracker.com

127.0.0.1  mau.sextracker.com

127.0.0.1  moneytree.sextracker.com

127.0.0.1  ranks.sextracker.com

127.0.0.1  search.sextracker.com

127.0.0.1  start.sextracker.com

127.0.0.1  stats.sextracker.com

127.0.0.1  stx.sextracker.com

127.0.0.1  stx0.sextracker.com

127.0.0.1  stx1.sextracker.com

127.0.0.1  stx2.sextracker.com

127.0.0.1  stx3.sextracker.com

127.0.0.1  stx4.sextracker.com

127.0.0.1  stx5.sextracker.com

127.0.0.1  stx6.sextracker.com

127.0.0.1  stx7.sextracker.com

127.0.0.1  stx8.sextracker.com

127.0.0.1  stx9.sextracker.com

127.0.0.1  stx10.sextracker.com

127.0.0.1  stx11.sextracker.com

127.0.0.1  stx12.sextracker.com

127.0.0.1  stx13.sextracker.com

127.0.0.1  stx14.sextracker.com

127.0.0.1  stx15.sextracker.com

127.0.0.1  stxbans.sextracker.com

127.0.0.1  webmasters.sextracker.com

127.0.0.1  stx.banners.sextracker.com

127.0.0.1  wm.banners.sextracker.com

127.0.0.1  www.sextracker.com

127.0.0.1  ads.sexspaces.com

127.0.0.1  ifa.slutloadlive.com

127.0.0.1  static.ifa.slutloadlive.com

127.0.0.1  www.startsurfing.com #[McAfee.Adware-StartSurfing]

127.0.0.1  static.gfx.streamen.com

127.0.0.1  www.streamen.com

127.0.0.1  streamate.com

127.0.0.1  static.gfx.streamate.com

127.0.0.1  teen.streamate.com

127.0.0.1  www.streamate.com

127.0.0.1  ifa.streamateaccess.com

127.0.0.1  static.ifa.streamateaccess.com

127.0.0.1  www.streamatelive.com

127.0.0.1  www.streamsexcam.com #[Spamdexing]

127.0.0.1  www.thesexcinema.com #[McAfee.Cookie-TheSexCinema]

127.0.0.1  ifa.tnaflixlive.com

127.0.0.1  c1.xxxcounter.com #[SunBelt.XXXCounter.com]

127.0.0.1  c2.xxxcounter.com

127.0.0.1  c3.xxxcounter.com

127.0.0.1  free.xxxcounter.com

127.0.0.1  grafix.xxxcounter.com

127.0.0.1  links.xxxcounter.com

127.0.0.1  rr1.xxxcounter.com

127.0.0.1  start.xxxcounter.com

# [Accretive Technology Group][Flying Crocodile][216.127.32.0 - 216.127.63.255]

127.0.0.1  track.adultdialersolution.com

127.0.0.1  adrevservice.com #[SpySweeper.Spy.Cookie]

127.0.0.1  adult.adrevservice.com

127.0.0.1  stats.adrevservice.com #[Linkzilla Control]

127.0.0.1  www.adrevservice.com #[TROJ_STARTPAG.X]

127.0.0.1  adultrevenueservice.com #[SpySweeper.Spy.Cookie]

127.0.0.1  byot.adultrevenueservice.com

127.0.0.1  stats.adultrevenueservice.com

127.0.0.1  www.adultrevenueservice.com

127.0.0.1  banners.adzones.com

127.0.0.1  clicks.adzones.com

127.0.0.1  feeds.adzones.com

127.0.0.1  www.adzones.com

127.0.0.1  stats.ars4real.com

127.0.0.1  www.arscounter.com

127.0.0.1  ifa.keezlive.com

127.0.0.1  ifa.pornhublive.com

127.0.0.1  aphrodite.porntrack.com

127.0.0.1  stats1.porntrack.com

127.0.0.1  stats3.porntrack.com

127.0.0.1  www.seehits.com

127.0.0.1  counter2.sextracker.com

127.0.0.1  counter3.sextracker.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  counter4.sextracker.com

127.0.0.1  counter5.sextracker.com

127.0.0.1  counter6.sextracker.com

127.0.0.1  counter7.sextracker.com

127.0.0.1  counter8.sextracker.com

127.0.0.1  counter9.sextracker.com

127.0.0.1  counter10.sextracker.com

127.0.0.1  counter11.sextracker.com

127.0.0.1  counter12.sextracker.com

127.0.0.1  counter13.sextracker.com

127.0.0.1  counter14.sextracker.com

127.0.0.1  counter15.sextracker.com

127.0.0.1  counter16.sextracker.com

127.0.0.1  www.smutgod.com #[JS/TrojanDownloader.Agent.AB]

127.0.0.1  adserver.spankaway.com

127.0.0.1  adserver.spctl.com

127.0.0.1  asian.streamate.com

127.0.0.1  broadcaster.streamate.com

127.0.0.1  ebony.streamate.com

127.0.0.1  ifa.tube8live.com

127.0.0.1  banners.weselltraffic.com

127.0.0.1  clicks.weselltraffic.com

127.0.0.1  feeds.weselltraffic.com

# [Accretive Technology via Innovative Ideas]

127.0.0.1  counter.adultrevenueservice.com #[Wildcard DNS]

127.0.0.1  counterimg1.adultrevenueservice.com

# [Accretive Technology via Sparklit Networks]

127.0.0.1  imgserv.adbutler.com #[eTrust.Tracking.Cookie]

127.0.0.1  servedbyadbutler.com

127.0.0.1  adrotator.com

127.0.0.1  www.adrotator.com

127.0.0.1  counter.sparklit.com

127.0.0.1  vote.sparklit.com

127.0.0.1  webpoll.sparklit.com

# [AdBrite, Inc]

127.0.0.1  adbrite.com #[Ewido.TrackingCookie.Adbrite]

127.0.0.1  1.adbrite.com

127.0.0.1  2.adbrite.com #[SiteAdvisor.findwhatevernow.com]

127.0.0.1  3.adbrite.com

127.0.0.1  4.adbrite.com

127.0.0.1  ads.adbrite.com

127.0.0.1  b1.adbrite.com

127.0.0.1  bstats.adbrite.com

127.0.0.1  click.adbrite.com

127.0.0.1  files.adbrite.com

127.0.0.1  pic.adbrite.com

127.0.0.1  vid.adbrite.com

127.0.0.1  site.www.adbrite.com

127.0.0.1  stats.adbrite.com

127.0.0.1  www.adbrite.com

127.0.0.1  www.britepic.com

127.0.0.1  1.marketbanker.com

127.0.0.1  2.marketbanker.com

127.0.0.1  www.marketbanker.com

# [AdEngage][72.172.67.0 - 72.172.67.63]

127.0.0.1  adcode.adengage.com

127.0.0.1  stats2.adengage.com

127.0.0.1  www.adengage.com

127.0.0.1  adcode.technoratimedia.com

127.0.0.1  ads.technoratimedia.com

127.0.0.1  images.technoratimedia.com

127.0.0.1  stats.technoratimedia.com

# [Ad Gardener][216.52.175.128 - 216.52.175.159]

127.0.0.1  harvest.adgardener.com

127.0.0.1  harvest6.adgardener.com

127.0.0.1  harvest7.adgardener.com

127.0.0.1  harvest8.adgardener.com

127.0.0.1  harvest11.adgardener.com

127.0.0.1  harvest12.adgardener.com

127.0.0.1  harvest13.adgardener.com

127.0.0.1  harvest100.adgardener.com

127.0.0.1  harvest163.adgardener.com

127.0.0.1  harvest176.adgardener.com

127.0.0.1  harvest254.adgardener.com

127.0.0.1  harvest255.adgardener.com

127.0.0.1  harvest256.adgardener.com

127.0.0.1  harvest257.adgardener.com

127.0.0.1  seeds.adgardener.com

# [Adify][AS12182][74.201.118.0 - 74.201.118.255]

127.0.0.1  beacon.afy11.net

127.0.0.1  feed.afy11.net

# [Adify][74.201.118.0 - 74.201.118.255]

127.0.0.1  ad.afy11.net

# [Adknowledge][216.21.208.0 - 216.21.223.255]

127.0.0.1  accusearch.org

127.0.0.1  adsvr.adknowledge.com

127.0.0.1  bidsystem.adknowledge.com

127.0.0.1  bsclick.adknowledge.com

127.0.0.1  web.adknowledge.com #[McAfee.Cookie-Adknowledge]

127.0.0.1  ak1.cc

127.0.0.1  dyn.ak1.cc

127.0.0.1  app.desktop.ak-networks.com #[aklsp.dll][TrojanDownloader.Win32.Agent.br]

127.0.0.1  updates.desktop.ak-networks.com

127.0.0.1  vlogic.ak-networks.com #[lspak.dll]

127.0.0.1  social.bidsystem.com

127.0.0.1  tagline.bidsystem.com

# [Admob][AS22577][165.193.245.0 - 165.193.245.255]

127.0.0.1  analytics.admob.com

127.0.0.1  p.admob.com #[Mobile.Advertising]

127.0.0.1  r.admob.com

# [AdOrigin Corp]

127.0.0.1  ads.adorigin.com #[SpySweeper.Spy.Cookie]

127.0.0.1  dev.adorigin.com

127.0.0.1  www.adorigin.com #[Ewido.TrackingCookie.Adorigin]

127.0.0.1  blowsearch.com #[SunBelt.BlowSearch.com]

127.0.0.1  msxml.blowsearch.com

127.0.0.1  web.blowsearch.com #[infospace.com]

127.0.0.1  www.blowsearch.com #[Tenebril.Tracking.Cookie]

# [ADSoft][Hot Lab][ADSoft-Development]

127.0.0.1  www.all-lyrics.org

127.0.0.1  www.spycounter.net

127.0.0.1  www-start-page.com #[Adware.HalfLemon]

127.0.0.1  www.www-start-page.com #[Trojan.Win32.StartPage.ya]

127.0.0.1  www.start-page.net

127.0.0.1  www.start-page.org

# [Adsolutions][Webads Europe][80.79.200.0 - 80.79.200.63]

127.0.0.1  storage.adsolutions.nl

127.0.0.1  telgids.adsolutions.nl

127.0.0.1  adserver.webads.it

127.0.0.1  images.webads.it

127.0.0.1  adserver.webads.nl

127.0.0.1  images.webads.nl

127.0.0.1  adserver.webads.co.uk

127.0.0.1  images.webads.co.uk #[ne.edgecastcdn.net]

# [Adtegrity.com, Inc]

127.0.0.1  adtegrity.com

127.0.0.1  www.adtegrity.com

127.0.0.1  webalize.com #[SearchCentrix][VisiCom.SearchCentric]

127.0.0.1  www.webalize.com #[Visicom Media Toolbar]

127.0.0.1  webalize.net

127.0.0.1  www.webalize.net

# [Adteractive]

127.0.0.1  cb.adprofile.net

127.0.0.1  content.adprofile.net

127.0.0.1  tx.adprofile.net

127.0.0.1  w2-ver.adprofile.net #[SpySweeper.Spy.Cookie]

127.0.0.1  adteractive.com

127.0.0.1  www.adteractive.com

# [Advanced Colocation][66.220.9.64 - 66.220.9.95]

127.0.0.1  stat001.mylivepage.com

127.0.0.1  stat002.mylivepage.com

127.0.0.1  stat003.mylivepage.com

127.0.0.1  stat004.mylivepage.com

127.0.0.1  stat005.mylivepage.com

127.0.0.1  stat006.mylivepage.com

127.0.0.1  stat007.mylivepage.com

127.0.0.1  stat008.mylivepage.com

127.0.0.1  stat009.mylivepage.com

127.0.0.1  stat010.mylivepage.com

# [Advancedhosters-net][][213.174.136.0 - 213.174.139.255]

# [Advancedhosters Limited][][88.208.0.0 - 88.208.7.255]

127.0.0.1  braix.net #[Spamdexing][server down?]

# [AdvertPro][Renegade Internet]

127.0.0.1  aalbc.advertserve.com

127.0.0.1  bayoubuzz.advertserve.com

127.0.0.1  cdn.advertserve.com

127.0.0.1  circuit.advertserve.com

127.0.0.1  d2.advertserve.com

127.0.0.1  divavillage.advertserve.com

127.0.0.1  ecnext.advertserve.com

127.0.0.1  endi.advertserve.com

127.0.0.1  findbliss.advertserve.com

127.0.0.1  foreignpolicy.advertserve.com

127.0.0.1  gazetteextra.advertserve.com

127.0.0.1  himss.advertserve.com

127.0.0.1  iklipz.advertserve.com #[server down?]

127.0.0.1  imagevenue.advertserve.com

127.0.0.1  ipt.advertserve.com

127.0.0.1  ipt-ltd.advertserve.com

127.0.0.1  iresources.advertserve.com

127.0.0.1  jra.advertserve.com

127.0.0.1  medbanner.advertserve.com

127.0.0.1  nursingcenter2.advertserve.com

127.0.0.1  oppknocks.advertserve.com

127.0.0.1  pridesource.advertserve.com

127.0.0.1  projectorreviews.advertserve.com

127.0.0.1  raisingkids.advertserve.com

127.0.0.1  tradearabia.advertserve.com

127.0.0.1  trucking.advertserve.com

127.0.0.1  www.advertserve.com

# [Adverserve Pa][77.72.164.0 - 77.72.164.31]

127.0.0.1  austria1.adverserve.net #[Ad-Aware.Tracking.Cookie]

127.0.0.1  werbung.diepresse.com #[austria1.adverserve.net]

# [Advida Media][83.244.139.32 - 83.244.139.63]

127.0.0.1  adviva.com

127.0.0.1  www.adviva.com

127.0.0.1  adstats.adviva.net

# [Advida Media][83.245.41.80 - 83.245.41.95]

127.0.0.1  ads.adviva.net #[Panda.Spyware:Cookie/Adviva]

127.0.0.1  de.ads.adviva.net

# [AdWorld Media Corp]

127.0.0.1  ads.adultadworld.com

127.0.0.1  ads3.adultadworld.com

127.0.0.1  ads6.adultadworld.com

127.0.0.1  cluster.adultadworld.com

127.0.0.1  cluster3.adultadworld.com

127.0.0.1  hippo.adultadworld.com

127.0.0.1  newt1.adultadworld.com

127.0.0.1  partners.adultadworld.com

127.0.0.1  textads.adultadworld.com #[AdEngage]

127.0.0.1  tigershark.adultadworld.com

# [Afrinic][AS33777][196.2.198.240 - 196.2.198.255]

# [Agavacompany][AS39561][89.108.72.0 - 89.108.72.255]

127.0.0.1  blogicar.com

127.0.0.1  c0unt.com

127.0.0.1  fdafhj2djd.ru

127.0.0.1  worldtraffic.ru

127.0.0.1  xxx-chick.com #[Fake.PornTube.Codec]

# [Airlinereservations.com][206.125.40.0 - 206.125.47.255]

127.0.0.1  rts.revfusion.net

# [Airlinereservations.com][AS7796][208.70.72.0 - 208.70.79.255]

127.0.0.1  domdex.com

127.0.0.1  qjex.net

# [Airlinereservations.com][AS7796][64.27.5.0 - 64.27.5.255]

127.0.0.1  404e.com

127.0.0.1  clubzot.com #[Spamdexing.Codec]

127.0.0.1  topisis.info

# [Aims-my-dia-net][116.0.0.0 - 116.255.255.255]

127.0.0.1  ad.wretch.cc

# [Alex Novih][AS41665][78.109.25.216 - 78.109.25.223]

127.0.0.1  www.bronotak.cn

# [Alex Walter][Spectre][4F8 Networks][Xyfex]

127.0.0.1  install.007guard.com

127.0.0.1  download.007guard.com #[Adware.007Guard]

127.0.0.1  the.007guard.com

127.0.0.1  www.007guard.com #[SiteAdvisor.007guard.com]

127.0.0.1  bardownload.com

127.0.0.1  download.bardownload.com

127.0.0.1  www.bardownload.com #[MHTMLRedir.Exploit][SiteAdvisor.bardownload.com]

127.0.0.1  hotmsnnames.com #[Adware bundler][server down?]

127.0.0.1  emoticons.hotmsnnames.com

127.0.0.1  www.hotmsnnames.com

127.0.0.1  www.im-names.com #[Adware.IMNames]

127.0.0.1  www.msgr-names.com #[Win32/Adware.2Search]

127.0.0.1  www.xyfex.com

# [Alibaba][AS37963][119.42.224.0 - 119.42.239.255]

127.0.0.1  acookie.alimama.com

127.0.0.1  hz.mmstat.com

# [AlmondNet Ltd Group][Zeno Tecnico S.A][Think-Adz]

127.0.0.1  ads.pro-market.net #[SpySweeper.Spy.Cookie][a1947.x.akamai.net]

127.0.0.1  pbid.pro-market.net

127.0.0.1  www.think-adz2.com

# [Alpha Red][69.80.224.0 - 69.80.255.255]

127.0.0.1  gem-inc.com

127.0.0.1  lustler.com

127.0.0.1  www.lustler.com

127.0.0.1  www.myxratedlinks.com

127.0.0.1  adserver.n9nedegrees.com

127.0.0.1  adserver2.n9nedegrees.com

127.0.0.1  blue.sexer.com

127.0.0.1  hello.sexer.com

127.0.0.1  white.sexer.com

127.0.0.1  adserver.weakgame.com

# [Altnet][66.186.13.128 - 66.186.13.191]

127.0.0.1  altnet.com

127.0.0.1  www.altnet.com #[ADW_ALTNET.A]

127.0.0.1  b3d.com

127.0.0.1  bde3d.com

127.0.0.1  www.b3d.com

127.0.0.1  brilliantdigital.com #[Parasite.BDE]

127.0.0.1  www.brilliantdigital.com #[TROJ_KREPPER.Y]

# [Altnet via Performance Systems][38.118.139.20 - 38.118.139.22]

127.0.0.1  www.altnetp2p.com

# [Alyrica Networks][AS32915][204.13.8.0 - 204.13.8.255]

127.0.0.1  leads.demandbase.com #[leads.demandbase.com.re.getclicky.com]

127.0.0.1  getclicky.com

127.0.0.1  pmetrics.getclicky.com

127.0.0.1  static.getclicky.com

127.0.0.1  pmetrics.performancing.com #[pmetrics.getclicky.com]

# [Amazon.com]

127.0.0.1  rcm.amazon.com

127.0.0.1  rcm-images.amazon.com

127.0.0.1  alexa-sitestats.s3.amazonaws.com

127.0.0.1  ecommstats.s3.amazonaws.com

127.0.0.1  www.assoc-amazon.com

127.0.0.1  ads.smowtion.com #[s3-1-w.amazonaws.com]

# [Amazon.com][174.129.0.0 - 174.129.255.255]

127.0.0.1  l.sharethis.com

# [Amazon.com][75.101.128.0 - 75.101.255.255]

127.0.0.1  pixel.invitemedia.com

127.0.0.1  www.othersonline.com

127.0.0.1  r.sharethis.com #[WebBug]

127.0.0.1  theu.net

# [Ampr Network][62.213.81.0 - 62.213.81.255]

127.0.0.1  katelyn-model.com #[Spamdexing.Codec]

127.0.0.1  little-models.biz #[Malicious.Links.Codec]

127.0.0.1  lolita-models.org #[Spamdexing.Codec]

127.0.0.1  models-art.biz

127.0.0.1  www.models-art.biz

# [AOL via Advertising.com]

127.0.0.1  cdn1.adsdk.com

127.0.0.1  cdn2.adsdk.com #[a1906.g.akamai.net][VirtualBouncer]

127.0.0.1  bannerfarm.ace.advertising.com #[Tenebril.Tracking.Cookie]

127.0.0.1  demo.advertising.com

127.0.0.1  leadback.advertising.com #[adv.service.mirror-image.net]

127.0.0.1  secure.leadback.advertising.com #[adv.service.mirror-image.net]

127.0.0.1  uac.advertising.com

# [AOL via Advertising.com][209.225.0.0 - 209.225.0.127]

127.0.0.1  dbs.advertising.com

127.0.0.1  opera1-servedby.advertising.com

127.0.0.1  rd.advertising.com

127.0.0.1  servedby.advertising.com #[eTrust.Tracking.Cookie]

# [AOL via Advertising.com][209.225.4.64 - 209.225.4.95]

127.0.0.1  www.myemessenger.com

127.0.0.1  spyblast.com #[SiteAdvisor.spyblast.com]

127.0.0.1  www.spyblast.com #[Rogue/Suspect]

# [AOL via Advertising.com][209.225.5.224 - 209.225.5.255]

127.0.0.1  bf.mocda1.com

# [AOL via Advertising.com][209.225.6.64 - 209.225.6.95]

127.0.0.1  adserve.advertising.com

# [AOL via Advertising.com][209.225.11.224 - 209.225.11.255]

127.0.0.1  wap.advertising.com

127.0.0.1  www.contextualclicks.com

127.0.0.1  fastseeker.com #[Adware.FastSeek]

127.0.0.1  www.fastseeker.com

127.0.0.1  www.thesearchster.com

# [AOL via Advertising.com][AS3561][209.225.34.96 - 209.225.34.127]

127.0.0.1  clk4.com

127.0.0.1  dev.clk4.com

127.0.0.1  www.clk4.com

# [AOL via AD TECH AG][Adtech.de]

127.0.0.1  img-pcdn.adtech.de #[g1.panthercdn.com]

# [AOL via AD TECH][194.117.224.0 - 194.117.225.255]

127.0.0.1  ad.dc2.adtech.de

127.0.0.1  img-dc2.adtech.de

127.0.0.1  im.adtech.de

127.0.0.1  ads.aol.co.uk

127.0.0.1  adserver.aol.fr #[ads.aol.fr.adtech.de]

# [AOL via AD TECH][AS8939][194.126.131.0 - 194.126.132.255]

127.0.0.1  adtech.de #[Ad-Aware.Tracking.Cookie]

127.0.0.1  adforce.adtech.de

127.0.0.1  ad-dc2.adtech.de

127.0.0.1  adserver.adtech.de #[ADTECH Group JavaScript TAG]

127.0.0.1  aka-cdn-ns.adtech.de

127.0.0.1  imageserv.adtech.de

127.0.0.1  livingnet.adtech.de #[McAfee.Cookie-Adtech]

127.0.0.1  adserver.adremedy.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  adserver.adtechus.com

127.0.0.1  aka-cdn.adtechus.com

127.0.0.1  aka-cdn-ns.adtechus.com

127.0.0.1  adserver.easyad.info

127.0.0.1  at.ontargetjobs.com #[adserver.adtech.de]

# [AOL via Quigo][AS39988][208.68.56.0 - 208.68.59.255]

127.0.0.1  37.adsonar.com

127.0.0.1  ads.adsonar.com

127.0.0.1  ads.tw.adsonar.com

127.0.0.1  foxnews.adsonar.com

127.0.0.1  js.adsonar.com

127.0.0.1  newsletter.adsonar.com

127.0.0.1  redir.adsonar.com

# [America Online][AS1668][205.188.0.0 - 205.188.255.255]

127.0.0.1  free.aol.com

127.0.0.1  ar.atwola.com

127.0.0.1  ar7.atwola.com #[McAfee.Cookie-Atwola]

# [America Online][AS1668][64.12.0.0 - 64.12.255.255]

127.0.0.1  ads.web.aol.com

127.0.0.1  affiliate.aol.com

127.0.0.1  dynamic.aol.com

127.0.0.1  ads.newline.aol.com

127.0.0.1  ar1.atwola.com

127.0.0.1  ar9.atwola.com

127.0.0.1  pr.atwola.com #[SpySweeper.Spy.Cookie]

# [America Online][64.236.0.0 - 64.236.255.255]

127.0.0.1  ads.cartoonnetwork.com

127.0.0.1  gdyn.cnn.com #[WebBug]

127.0.0.1  gdyn.nascar.com

127.0.0.1  gdyn.nba.com

127.0.0.1  ads.tnt.tv

127.0.0.1  ng3.ads.warnerbros.com

127.0.0.1  advertising.com

127.0.0.1  ace-lb.advertising.com

127.0.0.1  www.advertising.com #[Ewido.Spyware.Cookie.Advertising]

# [AOL via various]

127.0.0.1  cdn.atwola.com

# [Applied Technologies Internet]

127.0.0.1  hit-parade.com

127.0.0.1  loga.hit-parade.com

127.0.0.1  logp.hit-parade.com

127.0.0.1  xiti.com

127.0.0.1  loga.xiti.com #[SpySweeper.Spy.Cookie]

127.0.0.1  logc1.xiti.com

127.0.0.1  logc2.xiti.com

127.0.0.1  logc7.xiti.com

127.0.0.1  logc8.xiti.com

127.0.0.1  logc13.xiti.com

127.0.0.1  logc14.xiti.com

127.0.0.1  logc15.xiti.com

127.0.0.1  logc16.xiti.com

127.0.0.1  logc19.xiti.com

127.0.0.1  logc22.xiti.com

127.0.0.1  logc31.xiti.com

127.0.0.1  logc32.xiti.com

127.0.0.1  logc35.xiti.com

127.0.0.1  logc142.xiti.com

127.0.0.1  logi5.xiti.com

127.0.0.1  logi6.xiti.com

127.0.0.1  logi7.xiti.com

127.0.0.1  logi8.xiti.com

127.0.0.1  logi9.xiti.com

127.0.0.1  logi10.xiti.com

127.0.0.1  logi11.xiti.com

127.0.0.1  logi12.xiti.com

127.0.0.1  logi13.xiti.com

127.0.0.1  logi141.xiti.com

127.0.0.1  logp.xiti.com

127.0.0.1  logp3.xiti.com

127.0.0.1  logv1.xiti.com

127.0.0.1  logv2.xiti.com

127.0.0.1  logv3.xiti.com #[Panda.Spyware:Cookie/Xiti]

127.0.0.1  logv4.xiti.com

127.0.0.1  logv5.xiti.com

127.0.0.1  logv6.xiti.com

127.0.0.1  logv7.xiti.com

127.0.0.1  logv8.xiti.com

127.0.0.1  logv9.xiti.com

127.0.0.1  logv10.xiti.com

127.0.0.1  logv11.xiti.com

127.0.0.1  logv12.xiti.com

127.0.0.1  logv13.xiti.com

127.0.0.1  logv14.xiti.com

127.0.0.1  logv15.xiti.com

127.0.0.1  logv16.xiti.com

127.0.0.1  logv17.xiti.com

127.0.0.1  logv18.xiti.com #[SecuritySpace.WebBug]

127.0.0.1  logv19.xiti.com

127.0.0.1  logv20.xiti.com

127.0.0.1  logv21.xiti.com

127.0.0.1  logv22.xiti.com

127.0.0.1  logv23.xiti.com

127.0.0.1  logv24.xiti.com

127.0.0.1  logv25.xiti.com

127.0.0.1  logv26.xiti.com

127.0.0.1  logv27.xiti.com

127.0.0.1  logv28.xiti.com

127.0.0.1  logv29.xiti.com

127.0.0.1  logv30.xiti.com

127.0.0.1  logv31.xiti.com

127.0.0.1  logv32.xiti.com

127.0.0.1  logv143.xiti.com

127.0.0.1  logv145.xiti.com

127.0.0.1  www.xiti.com

# [Appserve Technologies][AS23376][66.101.58.0 - 66.101.58.255]

# [Aps Communication][][209.66.120.0 - 209.66.120.255]

# [Aps Communication][][64.124.84.0 - 64.124.84.255]

# [Aps Telecom][AS6461][216.195.32.0 - 216.195.63.255]

# [Aps Telecom via Hayter Merchants][AS6461][216.195.42.0 - 216.195.42.255]

# [Aps Telecom via Zentech][AS6461][216.195.40.0 - 216.195.40.255]

# [Argeweb Network][AS8315][193.34.150.0 - 193.34.151.255]

127.0.0.1  b.ds1.nl

127.0.0.1  k1s.nl #[Daisycon]

127.0.0.1  affiliates.kliks.nl

127.0.0.1  servlets.kliks.nl

127.0.0.1  www1.kliks.nl

127.0.0.1  www2.kliks.nl

127.0.0.1  www.kliks.nl

# [Arizonaenterprisesllc.com][AS36434][64.194.221.33]

# [Artergo International][AS29686][85.197.104.0 - 85.197.104.255]

127.0.0.1  www.adult-models.org #[JS/Exploit.MS05-013]

127.0.0.1  web16.saturn101.art-customer.net #[JS/Exploit.MS05-013]

127.0.0.1  www.kidzilla.info #[JS/Exploit.MS05-013]

127.0.0.1  www.maxxxhits.com

# [Arundel Group][Harris Digital Publishing]

127.0.0.1  www.affiliatesuccess.net #[System Detective]

127.0.0.1  www.systemdetective.com #[Rogue/Suspect]

127.0.0.1  ztrack.net

# [Assertivenet][AS22298][66.154.96.0 - 66.154.127.255]

127.0.0.1  www.acmexxx.com

127.0.0.1  adchimp.com

127.0.0.1  stats.awms-network.com

127.0.0.1  adserver.fuckaroo.org

# [Atmlink Inc][AS7796][216.240.128.0 - 216.240.159.255]

127.0.0.1  18teenact.com #[Google.Diagnostic]

127.0.0.1  26sexforced.com

127.0.0.1  alfseo.com #[Spamdexing]

127.0.0.1  amateurgoodgirl.com

127.0.0.1  amateurparadiz.org

127.0.0.1  analmovieslove.com

127.0.0.1  asiansexgangers.com

127.0.0.1  asspardon.com

127.0.0.1  best25teen.com

127.0.0.1  bestsexactcity.com

127.0.0.1  bestsexyteenshow.com

127.0.0.1  bestwerry.com

127.0.0.1  bestxxxbest.com

127.0.0.1  camtubeact.com

127.0.0.1  celebs-home-portal.com

127.0.0.1  celebritymovact.com

127.0.0.1  cityactpornamateur.com

127.0.0.1  cityvspornteen.com

127.0.0.1  cockvspussy.com

127.0.0.1  coupleactteen.com

127.0.0.1  coupleteenvsmen.com

127.0.0.1  dampjerry.com

127.0.0.1  fantasticpornfine.com

127.0.0.1  firstlessonsex.com

127.0.0.1  firstsexyteen.com

127.0.0.1  firsttrafdns.com

127.0.0.1  freeactporn.com

127.0.0.1  freecuteamateur.com

127.0.0.1  freepornshare.net

127.0.0.1  freese-x.net

127.0.0.1  ads.fuzzster.com

127.0.0.1  girlvsboysfack.com

127.0.0.1  globalhardsex.com

127.0.0.1  hardcorematurehot.com

127.0.0.1  hardcorepornovids.net

127.0.0.1  hotosgirlsvids.com

127.0.0.1  image-big-library.com #[TrojanDownloader:Win32/Renos.EN]

127.0.0.1  interracialpornovids.net

127.0.0.1  lesbianmashaact.com

127.0.0.1  lovemp3world.cn

127.0.0.1  magicanal.com

127.0.0.1  megahotinfo.net #[klikadvertising]

127.0.0.1  movteenhard.com

127.0.0.1  myredir.org

127.0.0.1  nonteensex.com

127.0.0.1  nudenano.com

127.0.0.1  nudenonporn.com

127.0.0.1  onlinetubeaction.com

127.0.0.1  pornlivehotmodels.com

127.0.0.1  realtubegirl.com

127.0.0.1  relax-site.name #[Spamdexing]

127.0.0.1  sexbombinanal.com

127.0.0.1  sexgeneration.org

127.0.0.1  sextubepornonline.com

127.0.0.1  showsexymore.com

127.0.0.1  sweetmeass.com

127.0.0.1  tinyproff.com

127.0.0.1  tinyworld18.com

127.0.0.1  tubes-portal.com #[server down?]

127.0.0.1  tube-storages.com #[server down?]

127.0.0.1  videosexorgies.com

127.0.0.1  xlovevspornx.com

127.0.0.1  xxxbigsexpornxxx.com

127.0.0.1  xxxhardpornteenxxx.com

127.0.0.1  xxxpornhard.com

127.0.0.1  youngbestanal.com

127.0.0.1  yourfucking.net

# [Avguro Technologies][217.107.34.0 - 217.107.34.255]

# [Axill][72.3.140.224 - 72.3.140.231]

127.0.0.1  www.axill.com

# [Axill Europe][84.45.70.0 - 84.45.70.255]

127.0.0.1  images.axill.in

127.0.0.1  www.beautyscreens.com #[AdWare.Win32.BHO.aey]

127.0.0.1  www.globe7.com

# [Axill Europe][84.45.63.0 - 84.45.63.255]

127.0.0.1  www.axill.in

# [Axxa Commerce][AS3491][207.226.176.128 - 207.226.176.191]

127.0.0.1  klikvip.com

127.0.0.1  www.klikvip.com

# [Axxa Commerce][209.8.237.136 - 209.8.237.143]

127.0.0.1  klikadvertising.com

127.0.0.1  klik.klikadvertising.com

# [Azoogle.com INC][Impulse Leads][Epic Advertising]

127.0.0.1  i.1100i.com

127.0.0.1  images.1100i.com

127.0.0.1  c.azjmp.com #[SpySweeper.Spy.Cookie][Adware-Fizzle]

127.0.0.1  i.azjmp.com

127.0.0.1  x.azjmp.com

127.0.0.1  www.azjmp.com

127.0.0.1  images.azoogleads.com

127.0.0.1  images1.azoogleads.com

127.0.0.1  images-cdn.azoogleads.com

127.0.0.1  www.azoogleads.com

127.0.0.1  www.bluetime.com

127.0.0.1  images.hostimages.net

127.0.0.1  images.imgehost.com

127.0.0.1  impulseleads.com

127.0.0.1  www.impulseleads.com

127.0.0.1  www.merchantportal.com

127.0.0.1  www.mport.com

127.0.0.1  noadware.biz

127.0.0.1  www.noadware.biz #[hop.clickbank.net]

127.0.0.1  c.qckjmp.com

127.0.0.1  visit-link.com

# [Aztec Marketing][West Frontier Holdings][Offshorefleet Holdings S.A]

127.0.0.1  artella.biz #[AdWare.Win32.BHO.bh]

127.0.0.1  home.artella.biz

127.0.0.1  www.artella.biz

127.0.0.1  www2.click2begin.com

127.0.0.1  www3.click2begin.com

127.0.0.1  clickfast.biz #[SunBelt.Ezula.ClickFast]

127.0.0.1  www.clickfast.biz

127.0.0.1  iconads.biz

127.0.0.1  www.iconads.biz #[SunBelt.AdRotator/IconAds][trafficsector.com]

127.0.0.1  www.pops-stop.com #[Spyware.SafeSurfing][trafficsector.com]

127.0.0.1  www1.pops-stop.com

127.0.0.1  popupsearches.com

127.0.0.1  www2.popupsearches.com

127.0.0.1  www.popupsearches.com #[SunBelt.PopUpSearches.com]

127.0.0.1  superiorads.biz #[Adware.Superiorads]

127.0.0.1  www.superiorads.biz

127.0.0.1  trafficsector.com #[Adware.Webext][SunBelt.SafeSurfing.RsyncMon]

127.0.0.1  new.trafficsector.com #[McAfee.Adware-Iconads]

127.0.0.1  www.trafficsector.com #[McAfee.Adware-BitLocker]

# [Aztec via Actif Oiseau Alerte S.A.][Janerus, Inc][Mnetpower LTD]

127.0.0.1  www.eaffiliateinc.com

127.0.0.1  www.ewebadserver.com #[Begin2Search]

127.0.0.1  gpstool.globaladserver.com #[Win32/Adware.Beginto]

127.0.0.1  www.globaladserver.com

127.0.0.1  globalwebsearch.com #[Parasite.ILookup]

127.0.0.1  www.globalwebsearch.com #[Adware.ILookup]

127.0.0.1  goldmembersarea.com

127.0.0.1  www.goldmembersarea.com

127.0.0.1  gophersearch.com #[McAfee.Adware-WorldAnywhere]

127.0.0.1  www.gophersearch.com

127.0.0.1  secure.ivirtualcard.com

127.0.0.1  secure.memberareaplus.com

127.0.0.1  www.mnetpower.com

127.0.0.1  secure.pinkpays.com

127.0.0.1  www.pinkpays.com

127.0.0.1  vroomsearch.com

127.0.0.1  www.vroomsearch.com

# [BackBeat Media][207.58.150.192 - 207.58.150.223]

127.0.0.1  adserver1.backbeatmedia.com

127.0.0.1  adserver1-images.backbeatmedia.com

127.0.0.1  bullseye.backbeatmedia.com

# [Bangladesh][115.126.5.0 - 115.126.5.255]

# [Banking Systems][AS42993][91.194.10.0 - 91.194.11.255]

127.0.0.1  tvcodec.net

127.0.0.1  www.tvcodec.net

# [Bariscloth INC][Daniel Wesley]

127.0.0.1  www.buddy-icons.us

127.0.0.1  www.funnyjoke.net

127.0.0.1  www.imbuddy.net #[Trojan-Dropper.Win32.ExeBundle.286]

127.0.0.1  www.ratepic.com

# [Belcaro Group][eTrust.Spyware.Belcaro GoldenRetriever]

127.0.0.1  1cat.com

127.0.0.1  i.1cat.com

127.0.0.1  www.1cat.com

127.0.0.1  selectbonus.com

127.0.0.1  www.selectbonus.com

127.0.0.1  www.shopathome.com

127.0.0.1  shopathomeselect.com #[AdWare.Win32.Sahat.ad]

127.0.0.1  downloads.shopathomeselect.com #[Win32/Adware.SAHAgent]

127.0.0.1  www.shopathomeselect.com #[Adware.SAHAgent]

# [Bell Globemedia Interactive Inc][199.246.60.0 - 199.246.71.255]

127.0.0.1  adcounter.theglobeandmail.com

127.0.0.1  adrates.theglobeandmail.com

127.0.0.1  ads.globeandmail.com

127.0.0.1  ads1.theglobeandmail.com

127.0.0.1  visit.theglobeandmail.com

127.0.0.1  www1.theglobeandmail.com

# [Bestofmedia LLC]

127.0.0.1  www.ad.denguru.com

127.0.0.1  www.ad.mobilityguru.com

127.0.0.1  ad.tomshardware.com

127.0.0.1  www.ad.tomshardware.com

127.0.0.1  tamtam.tomshw.it

127.0.0.1  www.ad.twitchguru.com

# [Beyond The Network][AS3491][205.252.0.0 - 205.252.255.255]

127.0.0.1  advancesoftpc.com

127.0.0.1  clicktrace.info

127.0.0.1  easynetsearch.com

127.0.0.1  freeskivideo.info #[Malicious.Links]

127.0.0.1  protect-x.com

127.0.0.1  searchclickbuy.com

# [Beyond The Network][206.161.0.0 - 206.161.255.255]

127.0.0.1  0ml.net

127.0.0.1  allsexvids.net

127.0.0.1  www.allsexvids.net #[Malicious.Links]

127.0.0.1  amazing-gals.com 

127.0.0.1  www.amazing-gals.com #[Malicious.Links.Codec]

127.0.0.1  b0o.net

127.0.0.1  z.dataseeq.com #[Spamdexing]

127.0.0.1  extreme-juggs.com #[Malicious.Links.Codec]

127.0.0.1  www.extreme-juggs.com

127.0.0.1  www.phallosdei.com #[Malicious.Links]

127.0.0.1  www.sexproper.com #[Malicious.Links]

127.0.0.1  smashingvids.com

127.0.0.1  www.smashingvids.com #[Malicious.Links.Codec]

127.0.0.1  www.yummyclips.com #[Malicious.Links]

# [Beyond The Network][AS3491][207.226.0.0 - 207.226.255.255]

127.0.0.1  1directory.ru

127.0.0.1  1se.org

127.0.0.1  bestworldsearch.net

127.0.0.1  blacksnake.com

127.0.0.1  www.blacksnake.com #[IRC.Trojan.Fgt]

127.0.0.1  comparting.net

127.0.0.1  cytron.com #[DailyWinner][eTrust.Cytron]

127.0.0.1  www.cytron.com

127.0.0.1  www.dailybestoffers.com

127.0.0.1  friendlyfiles.net #[Win32/Adware.BHO.DE][ADSTechnology]

127.0.0.1  www.friendlyfiles.net

127.0.0.1  www.ifileforum.com

127.0.0.1  mentolix.info #[Malicious.Links]

127.0.0.1  www.myfirstdating.com

127.0.0.1  www.nicesinema.com

127.0.0.1  nudegalleries.org #[Malicious.Links.Codec]

127.0.0.1  www.nudegalleries.org

127.0.0.1  www.offersbest.com

127.0.0.1  onlinetube.net

127.0.0.1  pussybabes.net

127.0.0.1  www.pussybabes.net

127.0.0.1  sexfreetube.net #[Fake.PornTube.Codec]

127.0.0.1  sextubenow.com #[Fake.PornTube.Codec]

127.0.0.1  sexualblondes.net

127.0.0.1  www.sexualblondes.net

127.0.0.1  special-movies.com #[Malicious.Links]

127.0.0.1  spunkyvids.com

127.0.0.1  www.spunkyvids.com #[Malicious.Links.Codec]

127.0.0.1  suggestsnow.com #[klikadvertising]

127.0.0.1  tsprotraffic.com

127.0.0.1  banners.truecash.com

127.0.0.1  usefulday.com

127.0.0.1  nm.xxxeuropean.com

127.0.0.1  xxxfreemovs.com

# [Beyond The Network][209.8.0.0 - 209.9.255.255]

127.0.0.1  all3xxx.com #[Malicious.Links]

127.0.0.1  secure.best-internet-payments.com #[Fraudware.Pandora-Software]

127.0.0.1  xxx.dataseeq.com

127.0.0.1  esearchmaster.info

127.0.0.1  extremevideoz.net #[Malicious.Links]

127.0.0.1  extreme-tranny.extremevideoz.net #[IFrame.Exploit]

127.0.0.1  stat-counter.fabrica.net.ua

127.0.0.1  hotloveonline.org

127.0.0.1  just-vids.com #[Google.Warning]

127.0.0.1  img.just-vids.com

127.0.0.1  secure.pnm-software.com

127.0.0.1  searchmeup.biz #[Trojan.Downloader.Small.CML]

127.0.0.1  searchspice.com

127.0.0.1  www.searchspice.com

127.0.0.1  secure-plus-payments.com

127.0.0.1  secure.softwaresecuredbilling.com #[Fraudware.Pandora-Software]

127.0.0.1  ads.svnt.com

127.0.0.1  thetrafficcontrol.net

# [Beyond The Network][63.216.0.0 - 63.223.255.255]

127.0.0.1  bornaz.com #[klikadvertising]

127.0.0.1  drunkporn.us

127.0.0.1  www.searchebuy.com

# [Beyond The Network via Sentris Network][AS19194][63.223.64.0 - 63.223.127.255]

# [Beyond The Network via Robert Dimasov]

127.0.0.1  www.enormousdating.com

127.0.0.1  www.giantdating.com #[Spamdexing.adultfriendfinder]

127.0.0.1  www.worldbestdate.com

127.0.0.1  www.worlddatinghere.com

# [Beyond The Network via Ross Morriss][DMC MEDIA GROUP]

127.0.0.1  1-se.com #[CWS.Aboutblank][W32.Tuoba.Trojan]

127.0.0.1  www.1-se.com #[VBS.Startpage.C]

127.0.0.1  ie-search.com #[CWS.Loadbat][umaxsearch.com]

127.0.0.1  www.ie-search.com

127.0.0.1  search-ing.com

127.0.0.1  www.search-ing.com

127.0.0.1  findloss.com #[umaxsearch.com]

127.0.0.1  www.findloss.com

# [Beyond The Network via UmaxSearch Group][Leos Rousek]

127.0.0.1  www.foxseek.com

127.0.0.1  www.lookuplive.com

127.0.0.1  searchadv.com

127.0.0.1  www.searchadv.com #[Spamdexing]

127.0.0.1  searchmeup.com #[CWS.Svcinit.3]

127.0.0.1  www.searchmeup.com #[SunBelt.SearchMeUp Hijacker]

127.0.0.1  topadult10.com

127.0.0.1  www.topadult10.com

127.0.0.1  www.topauto10.com #[Spamdexing][Microsoft.Strider]

127.0.0.1  topcasino10.com

127.0.0.1  www.topcasino10.com

127.0.0.1  topmeds10.com

127.0.0.1  www.topmeds10.com

127.0.0.1  www.topmobile10.com

127.0.0.1  www.topsearch10.com #[Spamdexing]

127.0.0.1  www.toptravel10.com

127.0.0.1  xml.umaxfeed.com

127.0.0.1  www.umaxlogin.com

127.0.0.1  umaxsearch.com #[TROJ_ESEPOR.A][CWS.Xplugin]

127.0.0.1  www.umaxsearch.com #[Adware.Umaxsearch]

# [Big Pipe][66.244.192.0 - 66.244.255.255]

127.0.0.1  www.juicyads.com

# [Bigpoint-net][62.146.190.0 - 62.146.191.255]

127.0.0.1  ad.bigpoint.net

127.0.0.1  adin.bigpoint.com

127.0.0.1  ad.e-sport.com

# [bill pip]

127.0.0.1  nastyyoungass.com

127.0.0.1  www.pixyoung.com #[Javascript.Exploit]

# [BIT bv][87.251.53.64 - 87.251.53.127]

# [Bitgravity Inc][208.67.232.0 - 208.67.239.255]

127.0.0.1  ads.devicebondage.com

127.0.0.1  ads.fuckingmachines.com

127.0.0.1  ads.hogtied.com

127.0.0.1  ads.sexandsubmission.com

127.0.0.1  ads.ultimatesurrender.com

127.0.0.1  ads.waterbondage.com

127.0.0.1  ads.whippedass.com

127.0.0.1  ads.wiredpussy.com

# [Bit Wise Publishing]

127.0.0.1  www.bitwisepublishing.com #[myglobalsearch.com]

127.0.0.1  www.free-patriotic-screensavers.com #[tafmaster.com]

127.0.0.1  www.my247eshop.com #[eShopper Search Bar]

127.0.0.1  www.scenicreflections.com #[SiteAdvisor.scenicreflections.com]

# [Blinkx Inc][AS14743][69.25.102.0 - 69.25.102.255]

127.0.0.1  bbtv.blinkx.com #[Trojan.Win32.Agent.wif]

127.0.0.1  streamstats1.blinkx.com

# [BlueConnex via Poundhost][92.48.117.218 - 92.48.117.219]

127.0.0.1  123appz.com

127.0.0.1  2009filez.com

127.0.0.1  softkillerz.com

127.0.0.1  z-downz.com

# [BlueConnex][AS29550][94.76.208.0 - 94.76.208.63]

# [BlueConnex via Eukhost][AS29550][94.76.212.241 - 94.76.212.241]

127.0.0.1  deleteallspyware.com

# [BlueConnex][AS29550][94.76.213.192 - 94.76.213.255]

127.0.0.1  crustat.com

127.0.0.1  tldst.com #[server down?]

# [BlueConnex][AS29550][94.76.229.192 - 94.76.229.255]

127.0.0.1  uk.myiframe.com

127.0.0.1  code.richtraffic.ru

127.0.0.1  disp.richtraffic.ru

127.0.0.1  disp-1.richtraffic.ru

127.0.0.1  disp-2.richtraffic.ru

127.0.0.1  disp-3.richtraffic.ru

127.0.0.1  disp-4.richtraffic.ru

127.0.0.1  disp-5.richtraffic.ru

127.0.0.1  go.richtraffic.ru

127.0.0.1  tds.richtraffic.ru

127.0.0.1  www.yamdix.ru

# [Bluehost][69.89.16.0 - 69.89.31.255]

127.0.0.1  www.fix-my-pc.org #[Rogue/Suspect Affiliate.sites]

127.0.0.1  leythosthestalker.com

127.0.0.1  www.leythosthestalker.com

# [Bluehost][74.220.192.0 - 74.220.223.255]

# [Bluepark Solutions][AS29131][78.129.199.0 - 78.129.199.255]

127.0.0.1  hastalavista.it #[Trojan.Win32.Dialer.hz]

127.0.0.1  www.hastalavista.it #[Trojan.TrustedZones]

127.0.0.1  www.pornoitalia.it #[NOD32.Win32/Dialer.HZ]

# [Bluestreak][12.130.12.0 - 12.130.12.255]

127.0.0.1  bluestreak.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  fr.bluestreak.com #[McAfee.Cookie-Bluestreak]

127.0.0.1  ion.bluestreak.com #[Tenebril.Tracking.Cookie]

127.0.0.1  s0.bluestreak.com #[Ewido.TrackingCookie.Bluestreak]

127.0.0.1  s0b.bluestreak.com #[SiteAdvisor.aim.com]

127.0.0.1  www.bluestreak.com

# [Bluestreak via various]

127.0.0.1  ak.bluestreak.com #[Panda.Spyware:Cookie/Bluestreak]

127.0.0.1  ca1.bluestreak.com #[SunBelt.Bluestreak.com][a2.x.akamai.net]

# [Bluetide Software][DeluxeCommunications]

127.0.0.1  dxcdirect.com

127.0.0.1  dl.dxcdirect.com

127.0.0.1  media.dxcdirect.com #[server down?]

127.0.0.1  search.dxcdirect.com

127.0.0.1  www.dxcdirect.com

127.0.0.1  www.mycustomersdirect.com #[server down?]

# [Brad Shelly]

127.0.0.1  www.bootylist.com #[Malicious.Links]

127.0.0.1  www.britneysbookmarks.com

127.0.0.1  www.dollyslist.com #[Google Warning]

127.0.0.1  www.xxxpornfiles.com

# [BraveNet][Tracking Service]

127.0.0.1  bravenet.com #[Tenebril.Tracking.Cookie]

127.0.0.1  adserv.bravenet.com #[McAfee.Cookie-Bravenet]

127.0.0.1  counter1.bravenet.com

127.0.0.1  counter2.bravenet.com

127.0.0.1  counter3.bravenet.com

127.0.0.1  counter4.bravenet.com

127.0.0.1  counter5.bravenet.com

127.0.0.1  counter6.bravenet.com

127.0.0.1  counter7.bravenet.com

127.0.0.1  counter8.bravenet.com

127.0.0.1  counter9.bravenet.com

127.0.0.1  counter10.bravenet.com

127.0.0.1  counter11.bravenet.com

127.0.0.1  counter12.bravenet.com

127.0.0.1  counter13.bravenet.com

127.0.0.1  counter14.bravenet.com

127.0.0.1  counter15.bravenet.com

127.0.0.1  counter16.bravenet.com

127.0.0.1  counter17.bravenet.com

127.0.0.1  counter18.bravenet.com #[Panda.Spyware:Cookie/bravenetA]

127.0.0.1  counter19.bravenet.com

127.0.0.1  counter20.bravenet.com

127.0.0.1  counter21.bravenet.com

127.0.0.1  counter22.bravenet.com

127.0.0.1  counter23.bravenet.com

127.0.0.1  counter24.bravenet.com

127.0.0.1  counter25.bravenet.com

127.0.0.1  counter26.bravenet.com

127.0.0.1  counter27.bravenet.com

127.0.0.1  counter28.bravenet.com

127.0.0.1  counter29.bravenet.com

127.0.0.1  counter30.bravenet.com

127.0.0.1  counter31.bravenet.com

127.0.0.1  counter32.bravenet.com

127.0.0.1  counter33.bravenet.com

127.0.0.1  counter34.bravenet.com

127.0.0.1  counter35.bravenet.com

127.0.0.1  counter36.bravenet.com

127.0.0.1  counter37.bravenet.com

127.0.0.1  counter38.bravenet.com

127.0.0.1  counter39.bravenet.com

127.0.0.1  counter40.bravenet.com

127.0.0.1  counter41.bravenet.com

127.0.0.1  counter42.bravenet.com

127.0.0.1  counter43.bravenet.com

127.0.0.1  counter44.bravenet.com

127.0.0.1  counter45.bravenet.com

127.0.0.1  counter46.bravenet.com

127.0.0.1  counter47.bravenet.com

127.0.0.1  counter48.bravenet.com

127.0.0.1  counter49.bravenet.com

127.0.0.1  counter50.bravenet.com

127.0.0.1  images.bravenet.com #[SecuritySpace.WebBug]

127.0.0.1  linktrack.bravenet.com #[SunBelt.Bravenet.com]

127.0.0.1  pub2.bravenet.com #[Bravenet.com Service Code]

127.0.0.1  pub7.bravenet.com

127.0.0.1  pub9.bravenet.com

127.0.0.1  pub12.bravenet.com

127.0.0.1  pub13.bravenet.com

127.0.0.1  pub16.bravenet.com

127.0.0.1  pub23.bravenet.com

127.0.0.1  pub26.bravenet.com

127.0.0.1  pub27.bravenet.com

127.0.0.1  pub28.bravenet.com

127.0.0.1  pub29.bravenet.com

127.0.0.1  pub30.bravenet.com

127.0.0.1  pub31.bravenet.com

127.0.0.1  pub39.bravenet.com

127.0.0.1  pub40.bravenet.com

127.0.0.1  pub42.bravenet.com

127.0.0.1  pub43.bravenet.com

127.0.0.1  pub45.bravenet.com

127.0.0.1  pub49.bravenet.com

127.0.0.1  xml.bravenet.com #[Ad-Aware.Tracking.Cookie]

# [BrowserMedia / BuyDomains.com][Parking Service]

127.0.0.1  bannerx.seeq.com

127.0.0.1  images.sitesense-oo.com

127.0.0.1  smds.seeq.com

# [Bullseye Media][64.8.54.0 - 64.8.54.255]

127.0.0.1  redemption.bullseye-media.net

127.0.0.1  users.bullseye-media.net

127.0.0.1  www.bullseye-media.net

# [BUDS Inc. Ad Network][SPYW_SOFTOMATE.A]

127.0.0.1  www.addfreegames.com

127.0.0.1  affiliate.budsinc.com #[directtrack.com]

127.0.0.1  content.budsinc.com

127.0.0.1  show.budsinc.com

127.0.0.1  www.budsinc.com

127.0.0.1  www.musicfeet.com

127.0.0.1  www.noadnetwork.com

# [BurstMedia]

127.0.0.1  ads.addesktop.com #[McAfee.Cookie-Addesktop]

127.0.0.1  www.burstbeacon.com #[Panda.Spyware:Cookie/BurstBeacon]

127.0.0.1  burstmedia.com

127.0.0.1  roscoe.burstmedia.com #[SunBelt.BurstMedia]

127.0.0.1  survey.burstmedia.com

127.0.0.1  web.burstmedia.com

127.0.0.1  websurvey.burstmedia.com

127.0.0.1  ads.burstnet.com #[SpySweeper.Spy.Cookie]

127.0.0.1  bet.burstnet.com

127.0.0.1  gifs.burstnet.com

127.0.0.1  sj.burstnet.com #[SunBelt.BurstNet]

127.0.0.1  te.burstnet.com

127.0.0.1  text.burstnet.com

127.0.0.1  www.burstnet.com #[eTrust.Tracking.Cookie]

127.0.0.1  www2.burstnet.com

127.0.0.1  www3.burstnet.com #[Tenebril.Tracking.Cookie]

127.0.0.1  www4.burstnet.com

127.0.0.1  www5.burstnet.com

127.0.0.1  www6.burstnet.com

127.0.0.1  www.burstnet.akadns.net

# [c2 Media Group][Circle Developement][66.220.17.0 - 66.220.17.255]

127.0.0.1  www.adserver5.com

127.0.0.1  cidhelp.com

127.0.0.1  dns-look-up.com

127.0.0.1  ads.dns-look-up.com #[Win32/TrojanDownloader.Swizzor]

127.0.0.1  ayb.dns-look-up.com #[TR/Swizzor.A][AdWare.Win32.Lop.ag]

127.0.0.1  nb.dns-look-up.com

127.0.0.1  upd.dns-look-up.com

127.0.0.1  o21343.nb.host-domain-lookup.com #[McAfee.Swizzor!hv.j!87ad9031ef7d]

127.0.0.1  lop.com #[Wildcard DNS]

127.0.0.1  ao.lop.com

127.0.0.1  ayb.lop.com #[McAfee.Swizzor]

127.0.0.1  bins.lop.com

127.0.0.1  i.stealfrommvps.lop.com

127.0.0.1  k17177.bins.lop.com

127.0.0.1  img.lop.com

127.0.0.1  sue.lop.com

127.0.0.1  srch.lop.com

127.0.0.1  d4308.upd.lop.com #[McAfee.Swizzor]

127.0.0.1  r25407.upd.lop.com

127.0.0.1  upd.lop.com

127.0.0.1  www1.lop.com

127.0.0.1  www.lop.com

127.0.0.1  maxexp.com

127.0.0.1  ayb.maximumexperience.com #[McAfee.Swizzor]

127.0.0.1  netbios-wait.com

127.0.0.1  ads.netbios-wait.com

127.0.0.1  ayb.netbios-wait.com

127.0.0.1  upd.netbios-wait.com #[Trojan.Win32.Obfuscated.en]

127.0.0.1  www.netbios-wait.com #[Adware.Memini]

127.0.0.1  spawnet.com

127.0.0.1  www.spawnet.com

127.0.0.1  ayb.trinityacquisitions.com #[McAfee.Swizzor][Wildcard DNS]

127.0.0.1  ads.zone-media.com #[Troj/Swizzor-CN][TROJ_SWIZZOR.EJ]

127.0.0.1  ayb.zone-media.com

127.0.0.1  www.zone-media.com

# [Cash4Downloads][CidHelp Group][67.15.107.168]

127.0.0.1  www.3wplayer.com #[Symantec.3wPlayer]

127.0.0.1  bitdownload.org

127.0.0.1  www.bitdownload.org

127.0.0.1  www.bitgrabber.com

127.0.0.1  www.bitroll.com #[AdWare.Win32.Lop.bo]

127.0.0.1  c4dl.com

127.0.0.1  www.c4dl.com

127.0.0.1  www.cash4downloads.com

127.0.0.1  divoplayer.com

127.0.0.1  www.divoplayer.com #[Symantec.DivoPlayer]

127.0.0.1  download.domplayer.com #[Wildcard DNS]

127.0.0.1  playon.domplayer.com

127.0.0.1  www.get-torrent.com #[AdWare.Win32.Lop.bo]

127.0.0.1  download.netpumper.com

127.0.0.1  www.netpumper.com #[Symantec.NetPumper][SiteAdvisor.NetPumper]

127.0.0.1  download.play3w.com

127.0.0.1  go.play3w.com

127.0.0.1  playon.play3w.com #[Trojan.Dldr.Swizzor.C]

127.0.0.1  plugindl.com

127.0.0.1  www.plugindl.com

127.0.0.1  www.torrent101.com #[Trojan.Win32.Obfuscated.en]

127.0.0.1  www.torrentq.com

127.0.0.1  www.winzix.com #[Symantec.WinZix][FraudTool.Win32.WinZix.a]

# [Calpop.com ][AS7796][64.27.0.0 - 64.27.31.255]

127.0.0.1  allseeq.com #[Google.Diagnostic][server down.all]

127.0.0.1  pornofeeder.com #[Fake.PornTube.Codec]

# [Camea Ltd][AS48180][91.209.48.0 - 91.209.48.255]

127.0.0.1  mens-medication.com #[Spamdexing]

127.0.0.1  professional-meds-online.com #[ScamFraudAlert.Pharmacy]

# [Canadawebhosting][64.34.132.0 - 64.34.132.255]

127.0.0.1  echtegratisproben.de

127.0.0.1  1.ofsnetwork.com

127.0.0.1  temp.ourfreestuff.net

# [Canadawebhosting][AS13768][65.39.254.0 - 65.39.254.255]

127.0.0.1  www.cpalist.com

# [Caravan][AS15756][212.158.160.0 - 212.158.175.255]

# [Caravan Joint Stock][62.213.72.0 - 62.213.79.255]

127.0.0.1  hqfreevideo.com #[Malicious.Links.Codec]

# [Carmen Media][66.212.235.192 - 66.212.235.255]

127.0.0.1  clickedyclick.com #[McAfee.Cookie-Clickedyclick]

127.0.0.1  www.clickedyclick.com #[SunBelt.ClickedyClick]

127.0.0.1  trax.inspectorclick.com

127.0.0.1  v2.inspectorclick.com

# [Caronet][AS13618][69.59.16.0 - 69.59.31.255]

127.0.0.1  adult-xxl-tube-teen.com

127.0.0.1  antivir-av-toolz.net

127.0.0.1  antivir-scan-for-4.net #[Google.Diagnostic]

127.0.0.1  av-scan-here.net

127.0.0.1  av-scan-soft.net

127.0.0.1  bestmyscanneronilne2.com

127.0.0.1  bestmyscanneronilne3.com

127.0.0.1  bestmytubeonilne1.com

127.0.0.1  bestmytubeonilne2.com

127.0.0.1  bestmytubeonilne3.com

127.0.0.1  freenonline-scanner.com

127.0.0.1  freenonline-scannera.com #[Google.Diagnostic]

127.0.0.1  my-bestpov-tube.com

127.0.0.1  mybest-pov-tube.com

127.0.0.1  mybestpov-tube.com

127.0.0.1  scanner-pc-toolz.net

127.0.0.1  tube-free-4-adult.net

127.0.0.1  tube-hu.com

# [Casale Media][Comspec Communications]

127.0.0.1  casalemedia.com #[McAfee.Cookie-Casalemedia]

127.0.0.1  as.casalemedia.com #[Ewido.TrackingCookie.Casalemedia]

127.0.0.1  b.casalemedia.com #[a1083.g.akamai.net][McAfee.Adware-SrchExplorer]

127.0.0.1  c.casalemedia.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  i.casalemedia.com #[Tenebril.Tracking.Cookie]

127.0.0.1  img.casalemedia.com #[SunBelt.casalemedia.com]

127.0.0.1  js.casalemedia.com #[a883.g.akamai.net]

127.0.0.1  lb01.casalemedia.com #[SpySweeper.Spy.Cookie]

127.0.0.1  r.casalemedia.com #[Symantec.SpywareStormer]

127.0.0.1  www.casalemedia.com

127.0.0.1  www.oofun.com

127.0.0.1  00fun.com #[Tenebril.Tracking.Cookie]

127.0.0.1  www.00fun.com

# [Cassava Enterprises]

127.0.0.1  chat.888.com #[SiteAdvisor.888.com]

127.0.0.1  free.888.com #[Panda.Spyware:Cookie/888]

127.0.0.1  images.888.com

127.0.0.1  setupspcp1.888.com #[Symantec.CasinoOnNet]

127.0.0.1  www.888.com #[McAfee.Adware-CasOnline]

127.0.0.1  casino-on-net.com

127.0.0.1  demogwa.casino-on-net.com

127.0.0.1  images.casino-on-net.com

127.0.0.1  java2.casino-on-net.com

127.0.0.1  www.casino-on-net.com #[SunBelt.CasinoOnNet]

127.0.0.1  www.casinoonnet.com #[eTrust.CasinoOnNet]

127.0.0.1  download1.pacificpoker.com

127.0.0.1  free.pacificpoker.com

127.0.0.1  images.pacificpoker.com #[SunBelt.PacificPoker]

127.0.0.1  playersclub.reefclubcasino.com

127.0.0.1  www.pacificpoker.com #[AdWare.Win32.Casino.m]

127.0.0.1  www.reefclubcasino.com

# [Cayman British Islands][AS29131][78.129.166.0 - 78.129.166.255]

127.0.0.1  free-tube-video-central.net

127.0.0.1  hot-tube-tuberzzz.net

127.0.0.1  niche-tube-videos-here.net #[Google.Warning]

127.0.0.1  tubezzz-boobezzz.net

# [CBS Interactive via CNET Networks]

127.0.0.1  adinterax.cnet.com.edgesuite.net

127.0.0.1  stat.fengniao.com

127.0.0.1  ads.webshots.com

127.0.0.1  tracker.zdnet.com.au #[WebBug]

127.0.0.1  adserver.zdnet.co.kr

# [CBS Interactive via CNET Networks][216.239.112.0 - 216.239.127.255]

127.0.0.1  bwp.builderau.com.au

127.0.0.1  mads.bnet.com

127.0.0.1  ocp.bnet.com

127.0.0.1  adimg.chow.com

127.0.0.1  mads.chow.com

127.0.0.1  bwp.chowhound.com

127.0.0.1  adimg.cnet.com

127.0.0.1  bwp.cnet.com

127.0.0.1  bwp.cnet.com.au

127.0.0.1  mads.cnet.com

127.0.0.1  remotead-internal.cnet.com

127.0.0.1  remotead.cnet.com

127.0.0.1  mads.cnettv.com

127.0.0.1  ads.com.com

127.0.0.1  adimg.com.com

127.0.0.1  adlog.com.com

127.0.0.1  mads.com.com

127.0.0.1  ocp.com.com

127.0.0.1  rok.com.com

127.0.0.1  adimg.download.com

127.0.0.1  bwp.download.com

127.0.0.1  mads.download.com

127.0.0.1  bwp.filmspot.com

127.0.0.1  adimg.gamefaqs.com

127.0.0.1  bwp.gamefaqs.com

127.0.0.1  mads.gamefaqs.com

127.0.0.1  mads.gamespot.com

127.0.0.1  adimg.news.com

127.0.0.1  bwp.news.com

127.0.0.1  bwp.techrepublic.com.com

127.0.0.1  adimg.tv.com

127.0.0.1  mads.tv.com

127.0.0.1  bwp.versiontracker.com

127.0.0.1  adimg.webware.com

127.0.0.1  bwp.webware.com

127.0.0.1  mads.webware.com

127.0.0.1  ads.zdnet.com

127.0.0.1  adimg.zdnet.com

127.0.0.1  bwp.zdnet.com.au

127.0.0.1  bwp.zdnet.co.uk

127.0.0.1  bwp.zdnet.com

127.0.0.1  bwp.zdnet.fr

127.0.0.1  mads.zdnet.com

# [Cernel / Internet Path][AS36445][64.28.176.0 - 64.28.191.255]

127.0.0.1  gilmoursmedia.com

# [Chinanet][114.80.0.0 - 114.95.255.255]

127.0.0.1  managesystem32.com

# [Chinanet][116.8.0.0 - 116.11.255.255]

# [Chinanet][117.0.0.0 - 117.255.255.255]

# [Chinanet][121.8.0.0 - 121.15.255.255]

127.0.0.1  www.borlander.cn #[Adware.Borlan]

# [Chinanet-zj][AS4134][122.224.0.0 - 122.224.31.255]

127.0.0.1  www.spyware-systems.info #[Google.Warning]

# [Chinanet][AS4808][123.0.0.0 - 123.123.255.255]

127.0.0.1  exe-2009-ok.com

127.0.0.1  hot-exe-area.com

127.0.0.1  main-exe-home.com

# [Chinanet][124.74.0.0 - 124.75.255.255]

127.0.0.1  a.ads99.cn

# [Chinanet][218.13.0.0 - 218.18.255.255]

# [Chinanet][218.90.0.0 - 218.94.255.255]

127.0.0.1  counnter.cn

127.0.0.1  bl4ckst4r.cn

127.0.0.1  y18032009.com

# [Chinanet][219.128.0.0 - 219.137.255.255]

# [Chinanet][219.151.128.0 - 219.153.255.255]

127.0.0.1  code.is686.com #[code.onetad.com]

127.0.0.1  code.51link.com #[code.onetad.com]

# [Chinanet][202.103.64.0 - 202.103.127.255]

127.0.0.1  adware-spyware-removal.net

127.0.0.1  adware-killer.adware-spyware-removal.net

127.0.0.1  spyware-defender.adware-spyware-removal.net

# [Chinanet][222.216.0.0 - 222.218.255.255]

# [Chinanet][222.208.0.0 - 222.215.255.255]

127.0.0.1  www2.md80.cn

127.0.0.1  www.md80.cn #[W32.Validin]

# [Chinanet][222.64.0.0 - 222.73.255.255]

127.0.0.1  www.askyaya.com #[SunBelt.AskYaya]

127.0.0.1  cxss358.com #[HTML/TrojanDownloader.Agent.BP]

127.0.0.1  ajim.delphibbs.com #[Trojan.PSW.Ajim_bbs]

127.0.0.1  ad.t2t2.com

127.0.0.1  bookmark.t2t2.com

127.0.0.1  iebar.t2t2.com #[Adware.Iebar]

127.0.0.1  jump.t2t2.com #[AdWare.ToolBar.Iebar.c]

127.0.0.1  stat.t2t2.com

127.0.0.1  vip2.t2t2.com

127.0.0.1  vip3.t2t2.com

127.0.0.1  vip5.t2t2.com

127.0.0.1  vip6.t2t2.com

127.0.0.1  www.t2t2.com

127.0.0.1  stat1.vipstat.com

# [Chinanet][222.76.0.0 - 222.79.255.255]

127.0.0.1  www.fjjyjy.net #[Win32/Hipigon][W32.Fijjy]

127.0.0.1  pckill.com #[JS/TrojanDownloader.Agent.BWP]

127.0.0.1  www.pckill.com

# [Chinanet][58.208.0.0 - 58.223.255.255]

127.0.0.1  tmp.farfly.org #[Trojan.Farfli][server down?]

# [Chinanet][59.32.0.0 - 59.42.255.255]

127.0.0.1  www.4slllj.cn

127.0.0.1  www.abcaef.cn

127.0.0.1  www.cbcdef.cn

127.0.0.1  www.hryspan.cn

127.0.0.1  www.sll9026.cn

127.0.0.1  www.zdq004.cn

# [Chinanet][59.56.0.0 - 59.61.255.255]

127.0.0.1  tom.oookkkkk.cn

127.0.0.1  www.qq886.com #[Backdoor.Semes]

# [Chinanet][59.62.0.0 - 59.63.255.255]

127.0.0.1  yrwap.cn #[Google.Diagnostic]

# [Chinanet][60.166.0.0 - 60.175.255.255]

# [Chinanet][61.139.0.0 - 61.139.127.255]

127.0.0.1  www.mbspro6uic.com #[Win32/TrojanDownloader.Ani.Gen]

# [Chinanet][61.152.0.0 - 61.152.255.255]

127.0.0.1  www.3241.com #[Troj/Zikdow-B]

127.0.0.1  www.textlink.cn

127.0.0.1  goldbye.vicp.net

# [Chinanet][61.191.0.0 - 61.191.255.255]

127.0.0.1  iengli.cn #[Google.Warning]

# [China Network Communications][221.12.0.0 - 221.12.191.255]

# [China Railcom][AS8206][61.235.117.0 - 61.235.117.255]

127.0.0.1  celebnudestars.net #[JS/TrojanDownloader.Zlob.B]

127.0.0.1  your-guide-online.com

# [China United Telecommunications][AS9800][211.90.0.0 - 211.97.255.255]

127.0.0.1  lufwhtelkadvrtaukqjo.cn

127.0.0.1  rich-traffic.com

# [China United Telecommunications][220.192.0.0 - 220.207.255.255]

127.0.0.1  jiaozhu100.9966.org #[CVE-2009-0075]

127.0.0.1  reddii.ru #[PDF/Exploit.Pidief.JR]

# [Chitika]

127.0.0.1  ads.chitika.net

127.0.0.1  ads1.chitika.net

127.0.0.1  blogads.chitika.net

127.0.0.1  ca.chitika.net

127.0.0.1  mm.chitika.net

127.0.0.1  parking.chitika.net

127.0.0.1  scripts.chitika.net

# [Choopa][AS20473][208.167.224.0 - 208.167.255.255]

127.0.0.1  www.celebritaemodelle.com #[Win32/Dialer.HZ]

127.0.0.1  www.filminiporno.net #[Win32/Dialer.HZ]

127.0.0.1  ads.gameservers.com

127.0.0.1  www.mistersesso.com #[Win32/Dialer.HZ]

127.0.0.1  banners.movieprofits.com

127.0.0.1  banners.videosz.com

# [Choopa][216.155.128.0 - 216.155.159.255]

127.0.0.1  ad.abum.com

127.0.0.1  adserv01.com

127.0.0.1  js.peepfinder.com

127.0.0.1  www.peepfinder.com

127.0.0.1  ads.redtube.com

127.0.0.1  ad.slutload.com

127.0.0.1  banners.thirdmovies.com

127.0.0.1  ads.videosz.com

127.0.0.1  whoisonline.net

127.0.0.1  www.whoisonline.net

127.0.0.1  404.xxxymovies.com

127.0.0.1  ads.ztod.com

127.0.0.1  banners.ztod.com

# [Choopa via PowerNetX][Trojan.PornDownloaderMCC]

127.0.0.1  www.18access.com

127.0.0.1  www.hentaidatabase.com

127.0.0.1  support.sextronix.com #[Wildcard DNS]

127.0.0.1  www.sextronix.com

# [Choopa via Jane Gerhart][64.237.52.112 - 64.237.52.127]

127.0.0.1  doctorcleaner.com #[SunBelt.Doctor Cleaner]

127.0.0.1  www.doctorcleaner.com

127.0.0.1  regsort.com

127.0.0.1  www.regsort.com #[Symantec.RegSort]

# [Choopa][66.55.128.0 - 66.55.159.255]

127.0.0.1  promotion.jpds.com

127.0.0.1  www.mysexfolder.com

# [Choopa / BlueSky][AS20473][66.55.134.64 - 66.55.134.79]

127.0.0.1  fuelbuck.com

127.0.0.1  pussygreen.com

# [Choopa][66.55.139.0 - 66.55.139.255]

127.0.0.1  ads.asredas.com

# [Chunkybreakfast][Robert Davidson]

127.0.0.1  elitemediagroup.net #[Trojan.TrustedZone]

127.0.0.1  affiliates.elitemediagroup.net

127.0.0.1  bins.elitemediagroup.net

127.0.0.1  cabs.elitemediagroup.net #[Win32/Adware.MediaMotor]

127.0.0.1  logs.elitemediagroup.net

127.0.0.1  mmm.elitemediagroup.net

127.0.0.1  www.elitemediagroup.net #[SpySweeper.elitemediagroup-mediamotor]

# [City Telecom][203.186.128.0 - 203.186.255.255]

# [CJB Management][AS13911][216.194.70.0 - 216.194.70.255]

127.0.0.1  bannerexchange.cjb.net

127.0.0.1  coder3862004.cjb.net #[Trojan.Bansap]

127.0.0.1  dialer.cjb.net #[HJTH.DirectPlugin Dialer]

127.0.0.1  crashtest.cjb.net

# [ClearBlue Technologies via Connors Communications][168.75.0.0 - 168.75.255.255]

127.0.0.1  314.hittail.com

127.0.0.1  815.hittail.com

127.0.0.1  922.hittail.com

127.0.0.1  1262.hittail.com

127.0.0.1  3241.hittail.com

127.0.0.1  3415.hittail.com

127.0.0.1  3463.hittail.com

127.0.0.1  3918.hittail.com

127.0.0.1  3933.hittail.com

127.0.0.1  3957.hittail.com

127.0.0.1  4134.hittail.com

127.0.0.1  4560.hittail.com

127.0.0.1  4612.hittail.com

127.0.0.1  8260.hittail.com

127.0.0.1  8959.hittail.com

127.0.0.1  9394.hittail.com

127.0.0.1  9446.hittail.com

127.0.0.1  9547.hittail.com

127.0.0.1  9563.hittail.com

127.0.0.1  9571.hittail.com

127.0.0.1  10006.hittail.com

127.0.0.1  10168.hittail.com

127.0.0.1  12877.hittail.com

127.0.0.1  13223.hittail.com

127.0.0.1  14228.hittail.com

127.0.0.1  15141.hittail.com

127.0.0.1  15694.hittail.com

127.0.0.1  16565.hittail.com

127.0.0.1  19097.hittail.com

127.0.0.1  19500.hittail.com

127.0.0.1  21807.hittail.com

127.0.0.1  22537.hittail.com

127.0.0.1  23315.hittail.com

127.0.0.1  23837.hittail.com

127.0.0.1  24725.hittail.com

127.0.0.1  24809.hittail.com

127.0.0.1  25057.hittail.com

127.0.0.1  26288.hittail.com

127.0.0.1  30001.hittail.com

127.0.0.1  31335.hittail.com

127.0.0.1  34673.hittail.com

127.0.0.1  117.mylongtail.com

127.0.0.1  317.mylongtail.com

127.0.0.1  327.mylongtail.com

127.0.0.1  373.mylongtail.com

127.0.0.1  505.mylongtail.com

127.0.0.1  582.mylongtail.com

# [Clearspring Technologies]

127.0.0.1  s3.addthis.com

127.0.0.1  s7.addthis.com

127.0.0.1  s9.addthis.com

127.0.0.1  as.clearspring.com #[spring.adbureau.net]

127.0.0.1  bin.clearspring.com

# [Clickability][208.184.224.64 - 208.184.224.95]

127.0.0.1  btn.clickability.com

127.0.0.1  button.clickability.com

127.0.0.1  cas.clickability.com

127.0.0.1  imp.clickability.com

127.0.0.1  ri.clickability.com #[SunBelt.Clickability.com]

127.0.0.1  s.clickability.com

127.0.0.1  sftp.clickability.com #[Tenebril.Tracking.Cookie]

127.0.0.1  stats.clickability.com #[eTrust.Tracking.Cookie]

# [clickXchange Corporation][216.23.185.96 - 216.23.185.127]

127.0.0.1  clickxchange.com #[SunBelt.Clickxchange.com]

127.0.0.1  caweb1.clickxchange.com

127.0.0.1  caweb2.clickxchange.com #[Tenebril.Tracking.Cookie]

127.0.0.1  www.clickxchange.com

# [ClickSpring LLC][Daniel Houston][63.251.135.0 - 63.251.135.63]

127.0.0.1  www.adparatus.com

127.0.0.1  www.clicklinks.net

127.0.0.1  jimmysurf.com #[JimmySurf][SurfProtect]

127.0.0.1  www.jimmysurf.com

127.0.0.1  www2.jimmysurf.com

127.0.0.1  www.marketprecision.net

127.0.0.1  www.mediaprecision.net

127.0.0.1  outerinfo.com

127.0.0.1  campaigns.outerinfo.com #[ADW_PURITYSCAN.I]

127.0.0.1  campaigns2.outerinfo.com #[ADW_VALUEAD.M]

127.0.0.1  cu.outerinfo.com

127.0.0.1  nf.outerinfo.com

127.0.0.1  update.outerinfo.com

127.0.0.1  update2.outerinfo.com #[McAfee.Adware-ClickSpring]

127.0.0.1  www.outerinfo.com

127.0.0.1  ad.outerinfoads.com

127.0.0.1  tizzletalk.com

127.0.0.1  www2.tizzletalk.com

127.0.0.1  www3.tizzletalk.com

127.0.0.1  www6.tizzletalk.com

127.0.0.1  www7.tizzletalk.com

127.0.0.1  www.tizzletalk.com

127.0.0.1  yazzle.net #[NOD32.Win32/Adware.MediaTickets]

127.0.0.1  ads.yazzle.net

127.0.0.1  partners.yazzle.net

127.0.0.1  yax-download.yazzle.net #[AdWare.Win32.MediaTickets.w]

127.0.0.1  www.yazzle.net #[SunBelt.Adw.Yazzle.Sudoku][Adware.Yazzle]

# [Client Intellect][75.126.0.0 - 75.126.255.255]

127.0.0.1  download.angleinteractive.net #[Symantec.RegistryDefender]

127.0.0.1  www.angleinteractive.net

# [Clivland Brian][216.195.41.0 - 216.195.41.255]

# [CMP Media][66.77.24.0 - 66.77.27.255]

127.0.0.1  as.cmpnet.com #[DartRichMedia]

127.0.0.1  datapop.cmpnet.com

127.0.0.1  cookies.cmpnet.com

# [Cncgroup Network][218.60.0.0 - 218.61.255.255]

127.0.0.1  masturr.cn

# [Cncgroup Network][61.135.0.0 - 61.135.255.255]

127.0.0.1  pingback.cpushpop.com

127.0.0.1  proxy.cpushpop.com

127.0.0.1  push.cpushpop.com #[push.cpushpop.a.sohu.com]

127.0.0.1  update.cpushpop.com #[Win32/Adware.Cinmus]

127.0.0.1  xiazai.cpushpop.com #[Adware.Sogou]

# [Cncgroup Network][125.40.0.0 - 125.47.255.255]

# [Cncgroup Network][202.99.128.0 - 202.99.191.255]

# [Cnc Group][58.240.0.0 - 58.241.255.255]

# [Cnc Group via Ningbo][AS9929][210.83.85.64 - 210.83.85.127]

# [Cnc-fj-xiruowangluo-corp][58.22.101.108 - 58.22.101.112]

# [Cnzz]

127.0.0.1  icon.cnzz.com

127.0.0.1  s1.cnzz.com

127.0.0.1  s3.cnzz.com

127.0.0.1  s4.cnzz.com

127.0.0.1  s10.cnzz.com

127.0.0.1  s11.cnzz.com

127.0.0.1  s12.cnzz.com

127.0.0.1  s14.cnzz.com

127.0.0.1  s18.cnzz.com

127.0.0.1  s19.cnzz.com

127.0.0.1  s20.cnzz.com

127.0.0.1  s23.cnzz.com

127.0.0.1  s24.cnzz.com

127.0.0.1  s26.cnzz.com

127.0.0.1  s28.cnzz.com

127.0.0.1  s29.cnzz.com

127.0.0.1  s30.cnzz.com

127.0.0.1  s33.cnzz.com

127.0.0.1  s34.cnzz.com

127.0.0.1  s37.cnzz.com

127.0.0.1  s38.cnzz.com

127.0.0.1  s47.cnzz.com

127.0.0.1  s48.cnzz.com

127.0.0.1  s50.cnzz.com

127.0.0.1  s51.cnzz.com

127.0.0.1  s54.cnzz.com

127.0.0.1  s55.cnzz.com

127.0.0.1  s62.cnzz.com

127.0.0.1  s63.cnzz.com

127.0.0.1  s65.cnzz.com

127.0.0.1  s66.cnzz.com

127.0.0.1  s68.cnzz.com

127.0.0.1  s69.cnzz.com

127.0.0.1  s70.cnzz.com

127.0.0.1  s76.cnzz.com

127.0.0.1  s80.cnzz.com

127.0.0.1  s83.cnzz.com

127.0.0.1  s88.cnzz.com

127.0.0.1  s89.cnzz.com

127.0.0.1  s92.cnzz.com

127.0.0.1  s94.cnzz.com

127.0.0.1  s99.cnzz.com

127.0.0.1  s101.cnzz.com

127.0.0.1  s102.cnzz.com

127.0.0.1  s103.cnzz.com

127.0.0.1  s105.cnzz.com

127.0.0.1  s106.cnzz.com

127.0.0.1  s108.cnzz.com

127.0.0.1  s109.cnzz.com

127.0.0.1  s110.cnzz.com

127.0.0.1  s111.cnzz.com

127.0.0.1  s112.cnzz.com

127.0.0.1  s113.cnzz.com

127.0.0.1  s115.cnzz.com

127.0.0.1  s116.cnzz.com

127.0.0.1  s118.cnzz.com

127.0.0.1  s120.cnzz.com

127.0.0.1  s130.cnzz.com

127.0.0.1  s131.cnzz.com

127.0.0.1  s132.cnzz.com

127.0.0.1  s137.cnzz.com

127.0.0.1  s142.cnzz.com

127.0.0.1  v1.cnzz.com

127.0.0.1  v3.cnzz.com

127.0.0.1  v4.cnzz.com

127.0.0.1  v5.cnzz.com

127.0.0.1  v7.cnzz.com

127.0.0.1  v9.cnzz.com

127.0.0.1  w.cnzz.com

# [College Publisher][Viacom International]

127.0.0.1  stats.broadbandpublisher.com

127.0.0.1  admanager2.broadbandpublisher.com

127.0.0.1  admanager3.collegepublisher.com

127.0.0.1  localads.collegepublisher.com

127.0.0.1  ad.flux.com

# [Colobase via various][83.216.216.0 - 83.216.219.255]

127.0.0.1  adoutfer.net

127.0.0.1  adpopups.net

127.0.0.1  adxrnet.net #[Trojan.Virtumod.240]

127.0.0.1  www.ddload.net

127.0.0.1  edonkey2000.at

127.0.0.1  snipernet.biz

127.0.0.1  snipernet.us #[MHTMLRedir.Exploit][paretologic.com]

# [Colocation Clients][AS8262][85.14.6.0 - 85.14.6.255]

127.0.0.1  addobeflashplayer.com

127.0.0.1  trafficgateway.org

# [Colocation Subnet][92.243.64.0 - 92.243.67.0]

127.0.0.1  adfun.ru

127.0.0.1  ad1.adfun.ru

# [Colocation And Virtual][77.221.156.0 - 77.221.159.255]

# [Co-location Customers][AS44997][91.203.93.1 - 91.203.93.128]

127.0.0.1  boyhome.ru

127.0.0.1  busyhere.ru

127.0.0.1  lovelypornovideo.net #[Win32/TrojanDownloader.Zlob.CTM]

# [Colosseum Online][AS19842][209.47.169.0 - 209.47.169.255]

127.0.0.1  textad.passionsearch.com

127.0.0.1  banners.sexsearch.com

127.0.0.1  textad.sexsearch.com

127.0.0.1  wt.sexsearch.com #[WebTrends]

127.0.0.1  wt.sexsearchcom.com #[WebTrends]

# [Columbus Network Access][209.190.0.0 - 209.190.127.255]

127.0.0.1  allantivirus.net

127.0.0.1  www.allantivirus.net

127.0.0.1  tlal.exelator.net

# [Commercial Media][AS209][63.146.2.0 - 63.146.2.255]

127.0.0.1  goscanatom.com

127.0.0.1  goscanstep.com

127.0.0.1  gosidescan.com

# [CommonName Limited][87.84.219.64 - 87.84.219.95]

127.0.0.1  commonname.com

127.0.0.1  www.commonname.com #[AdWare.CommonName.l]

127.0.0.1  www.kpsn.com

127.0.0.1  xpsn.com #[McAfee.Adware-CommonName.dll]

127.0.0.1  search.xpsn.com

127.0.0.1  www.xpsn.com

# [Compic Ltd][195.5.116.0 - 195.5.117.255]

# [Comscore Network via various][Relevant Knowledge]

127.0.0.1  siterecruit.comscore.com

127.0.0.1  oss-content.securestudies.com

127.0.0.1  www2.survey-poll.com

# [Comscore Network][66.119.33.128 - 66.119.33.159]

# [Comscore Network][666.119.33.160 - 66.119.33.191]

127.0.0.1  beacon.securestudies.com

127.0.0.1  ar.voicefive.com

# [Comscore Network][66.119.34.32 - 66.119.34.63]

127.0.0.1  rules.securestudies.com

# [Comscore Network][66.119.41.0 - 66.119.41.127]

127.0.0.1  www.e-trends.com #[Proxy-OSS]

127.0.0.1  www.permissionresearch.com

127.0.0.1  relevantknowledge.com

127.0.0.1  www.relevantknowledge.com #[SunBelt.Marketscore.RelevantKnowledge]

127.0.0.1  web.survey-poll.com

127.0.0.1  www.surveysite.com

# [Conduit Ltd][Effective-i][AS209][66.77.197.0 - 66.77.197.255]

127.0.0.1  www.conduit-banners.com

127.0.0.1  users.effectivebrand.com

127.0.0.1  www.effectivebrand.com

127.0.0.1  search.effectivebrand.com

127.0.0.1  pcbutts1.ourtoolbar.com

# [Conducive]

127.0.0.1  bridge.admarketplace.net

127.0.0.1  bridge1.admarketplace.net

127.0.0.1  bridge2.admarketplace.net

127.0.0.1  www.admarketplace.net

# [Consonus][AS14825][67.208.128.0 - 67.208.143.255]

127.0.0.1  tracking.gajmp.com

127.0.0.1  tracking.profitsource.net

127.0.0.1  www.rgjmp.com

127.0.0.1  www.xy7track.com

# [Contextu Ads]

127.0.0.1  bigapple.contextuads.com

127.0.0.1  cowboy.contextuads.com

127.0.0.1  www.contextuads.com #[F-Secure.ContextuAd]

127.0.0.1  bh.contextweb.com

127.0.0.1  tag.contextweb.com

127.0.0.1  www2.contextweb.com

127.0.0.1  www3.contextweb.com

127.0.0.1  www7.contextweb.com

127.0.0.1  www.nicheseek.com

127.0.0.1  www2.nicheseek.com

# [Conversis Gmbh][AS25074][213.131.252.0 - 213.131.252.255]

127.0.0.1  libereco.net

127.0.0.1  www.libereco.net #[Parasite.OnlineDialer]

127.0.0.1  ads.mmania.com

# [Coreexpress][AS7796][64.69.32.0 - 64.69.47.255]

127.0.0.1  antispywarechecker-2009.com

127.0.0.1  antivir-pro-check.com

127.0.0.1  comm1.digits.com

127.0.0.1  counter.digits.com

127.0.0.1  scan-anti-vir-pro.com

127.0.0.1  trafanetonline.cn #[Fake.PornTube.Codec]

127.0.0.1  www.trafanetonline.cn #[Fake.PornTube.Codec]

127.0.0.1  trafestonline.com

127.0.0.1  tubemov.com #[Google.Diagnostic]

127.0.0.1  uniqtds2.com

127.0.0.1  ya-hooj.com

# [Crazy Protocol]

127.0.0.1  ads.adultcash.com

127.0.0.1  exits.adultcash.com

127.0.0.1  exits2.adultcash.com

127.0.0.1  home.adultcash.com

127.0.0.1  popfree.adultcash.com

127.0.0.1  www.adultcash.com

127.0.0.1  www.cheatingromance.com

127.0.0.1  www.crazyprotocol.com

127.0.0.1  www.lonelycheatingwives.com

# [Cronosit Network][195.3.144.0 - 195.3.147.255]

# [Crown Solution Gaming][209.200.162.192 - 209.200.162.223]

127.0.0.1  banner.ambercoastcasino.com

127.0.0.1  crbanner.casinopays.com

127.0.0.1  banner.cdpoker.com

127.0.0.1  banner.eurogrand.com

127.0.0.1  banner.usacasino.com

# [Cust-denit-id][81.93.57.128 - 81.93.57.255]

127.0.0.1  rotator.tradetracker.net

127.0.0.1  ti.tradetracker.net

127.0.0.1  rotator.tradetracker.nl

127.0.0.1  ti.tradetracker.nl

# [CWIE / iGlobal][AS19181][64.38.237.0 - 64.38.237.255]

127.0.0.1  promo.lonelywifehookup.com

127.0.0.1  promo.ulust.com

# [CWIE LLC][64.38.192.0 - 64.38.255.255]

127.0.0.1  bill.ccbill.com

127.0.0.1  images.ccbill.com

127.0.0.1  refer.ccbill.com #[SpySweeper.Spy.Cookie]

127.0.0.1  www.ccbill.com #[Panda.Spyware:Cookie/Ccbill]

127.0.0.1  www.ccbillcs.com

127.0.0.1  www.ccbilleu.com

127.0.0.1  bill.ecsuite.com

127.0.0.1  ads.klixxx.com

127.0.0.1  resources.maxcash.com

127.0.0.1  stats.maximumcash.com #[SunBelt.MaximumCash.com]

127.0.0.1  www.maximumcash.com #[Tenebril.Tracking.Cookie]

127.0.0.1  processor.netmgt.com #[Backdoor.Hackdoor]

127.0.0.1  www.psbbanners.com

127.0.0.1  tv69.com

127.0.0.1  streaming.tv69.com

127.0.0.1  www.tv69.com #[JS/NoClose-G]

127.0.0.1  xlocator.com #[PcTools.XLocator]

127.0.0.1  www.xlocator.com #[HJTH.Xlocator/WinLocator Adware]

# [Cyber Technology][82.98.193.0 - 82.98.193.255]

127.0.0.1  tds1.onlineredirsystem.com

127.0.0.1  www.traficmax.fr

# [Cyberwebhosting][AS8893][212.72.183.0 - 212.72.183.255]

127.0.0.1  www.deltahost.de

127.0.0.1  www.gratis-toplist.de

# [Cyber Wurx via various][66.154.0.0 - 66.154.95.255]

127.0.0.1  www.adultadbroker.com

127.0.0.1  adultwebmastersonline.com #[MHTMLRedir.Exploit][traffnew.biz]

127.0.0.1  www.adultwebmastersonline.com #[SiteAdvisor.adultwebmastersonline.com]

127.0.0.1  www.itrackpages.com

127.0.0.1  iwantporn.info

127.0.0.1  www.iwantporn.info

127.0.0.1  shemaletoplists.com #[JS/TrojanDownloader.Agent.NFZ]

127.0.0.1  www.shemaletoplists.com

# [Cyber World][AS30340][66.206.0.0 - 66.206.31.255]

127.0.0.1  gomixscan.com

# [Cyber Wurx via Aligned Acquisitions][Beano Pubishing]

127.0.0.1  authorizedsearchagents.com

127.0.0.1  domainplayersclub.com

127.0.0.1  reviews.domainplayersclub.com

127.0.0.1  ebtmarketing.com

127.0.0.1  www.ebtmarketing.com

127.0.0.1  www.freeezinebucks.com #[SiteAdvisor.freeezinebucks.com]

127.0.0.1  freeticketcash.com

127.0.0.1  www.freeticketcash.com

127.0.0.1  www.searchape.com #[Adware.DailyToolbar]

127.0.0.1  www.topsearchdog.com #[Adware.DailyToolbar]

# [Cyber Wurx via Waveflow Inc]

127.0.0.1  www.buy404s.com

127.0.0.1  www.exitforcash.com

127.0.0.1  popunder.fpctraffic.com

127.0.0.1  www.fpctraffic.com

127.0.0.1  fpctraffic2.com

127.0.0.1  www.fpctraffic2.com

127.0.0.1  frontpagecash.com

127.0.0.1  www.frontpagecash.com

# [Cyberfuse Technologies]

127.0.0.1  adultplex.com

127.0.0.1  aff.adultplex.com

127.0.0.1  clicks.adultplex.com

127.0.0.1  dialer.adultplex.com #[wc2.mvl.powerhosting.com]

127.0.0.1  exit.adultplex.com #[wc2.powerhosting.com]

127.0.0.1  images.adultplex.com

127.0.0.1  movies.adultplex.com

127.0.0.1  stats.adultplex.com

127.0.0.1  signup.adultplex.com

# [Cyberheat, Inc]

127.0.0.1  www.adwareremovergold.com #[Rogue/Suspect]

127.0.0.1  ares.chinoc.net

127.0.0.1  chinoc.net

127.0.0.1  dev138.chinoc.net

127.0.0.1  j5.chinoc.net

127.0.0.1  kw15.chinoc.net

127.0.0.1  kw17.chinoc.net

127.0.0.1  kw29.chinoc.net

127.0.0.1  kw40.chinoc.net

127.0.0.1  kw46.chinoc.net

127.0.0.1  kw62.chinoc.net

127.0.0.1  kw79.chinoc.net

127.0.0.1  kw80.chinoc.net

127.0.0.1  kw82.chinoc.net

127.0.0.1  kw83.chinoc.net

127.0.0.1  kw85.chinoc.net

127.0.0.1  kw107.chinoc.net

127.0.0.1  kw122.chinoc.net

127.0.0.1  kw123.chinoc.net

127.0.0.1  v5.chinoc.net

127.0.0.1  www.clients-support.com

127.0.0.1  os.cyberheatinc.com

127.0.0.1  www.datashreddergold.com

127.0.0.1  iblockpopups.com #[SiteAdvisor.iblockpopups.com]

127.0.0.1  www.iblockpopups.com #[ZeroPopUpBar]

127.0.0.1  iquicksearch.com #[eTrust.IQuickSearch]

127.0.0.1  www.iquicksearch.com

127.0.0.1  members-access.com

127.0.0.1  www.movieaccess.com

127.0.0.1  www.pcspeedbooster.com #[TheWatcher List]

127.0.0.1  www.searchbuckz.com

127.0.0.1  seekio.com

127.0.0.1  sureseeker.com #[JS.Trojan.Seeker.b]

127.0.0.1  www.sureseeker.com

127.0.0.1  avalon.topbucks.com

127.0.0.1  botw.topbucks.com

127.0.0.1  clickheat.topbucks.com

127.0.0.1  cluster-03.topbucks.com

127.0.0.1  mainstream.topbucks.com

127.0.0.1  rainbow.topbucks.com

127.0.0.1  referral.topbucks.com

127.0.0.1  vod.topbucks.com

127.0.0.1  referral.vod.topbucks.com

127.0.0.1  www.topbucks.com

127.0.0.1  www.topcash.com

127.0.0.1  twink4cash.com

127.0.0.1  www.twinkforcash.com

127.0.0.1  www.twinksforcash.com

# [Cybernet Quest]

127.0.0.1  cqcounter.com #[SecuritySpace.WebBug]

127.0.0.1  img.cqcounter.com

127.0.0.1  nl.cqcounter.com

127.0.0.1  no.2.cqcounter.com

127.0.0.1  se.cqcounter.com

127.0.0.1  xxx.cqcounter.com

127.0.0.1  zz.cqcounter.com

127.0.0.1  ar.2.cqcounter.com

127.0.0.1  au.2.cqcounter.com

127.0.0.1  bg.2.cqcounter.com

127.0.0.1  ca.2.cqcounter.com

127.0.0.1  de.2.cqcounter.com

127.0.0.1  fr.2.cqcounter.com

127.0.0.1  nz.2.cqcounter.com

127.0.0.1  si.2.cqcounter.com

127.0.0.1  th.2.cqcounter.com

127.0.0.1  tr.2.cqcounter.com

127.0.0.1  uk.2.cqcounter.com

127.0.0.1  us.2.cqcounter.com #[Wildcard DNS]

127.0.0.1  us.cqcounter.com

127.0.0.1  1au.cqcounter.com

127.0.0.1  1bm.cqcounter.com

127.0.0.1  1ca.cqcounter.com

127.0.0.1  1de.cqcounter.com

127.0.0.1  1es.cqcounter.com

127.0.0.1  1fr.cqcounter.com

127.0.0.1  1in.cqcounter.com

127.0.0.1  1it.cqcounter.com

127.0.0.1  1jo.cqcounter.com

127.0.0.1  1nl.cqcounter.com

127.0.0.1  1pt.cqcounter.com

127.0.0.1  1se.cqcounter.com

127.0.0.1  1si.cqcounter.com

127.0.0.1  1th.cqcounter.com

127.0.0.1  1tr.cqcounter.com

127.0.0.1  1ua.cqcounter.com

127.0.0.1  1uk.cqcounter.com

127.0.0.1  1us.cqcounter.com

127.0.0.1  1xxx.cqcounter.com

127.0.0.1  www2.cqcounter.com

127.0.0.1  www.cqcounter.com

127.0.0.1  counter.w3open.com

127.0.0.1  ns2.w3open.com

# [Cyberware LTD][Parasite.SVAPlayer]

127.0.0.1  internetwasher.com

127.0.0.1  alerts.internetwasher.com #[a349.g.akamai.net]

127.0.0.1  download.internetwasher.com

127.0.0.1  www.internetwasher.com

127.0.0.1  systemsoap.com #[Parasite.Zipclix and Httper]

127.0.0.1  alerts.systemsoap.com #[a536.g.akamai.net]

127.0.0.1  secure.systemsoap.com

127.0.0.1  www.systemsoap.com

# [Cyprushostingnetworks][200.63.48.195]

# [Danilo Rodrigo]

127.0.0.1  adultfreeware.net

127.0.0.1  www.adultfreeware.net #[TrojanDownloader.Win32.VB.fi]

127.0.0.1  www.fregamnet.com #[McAfee.Adware-AdultBox][TROJ_TL.A]

127.0.0.1  gamentw.com

127.0.0.1  srvfrgm.com

# [Dedibox Sas][88.191.3.0 - 88.191.248.255]

127.0.0.1  www.netmastering2.net

# [Defender Technologies][AS14383][74.200.64.0 - 74.200.95.255]

127.0.0.1  ads.cdrinfo.com

127.0.0.1  stats.cdrinfo.com #[WebBug]

127.0.0.1  toptramadolonline.com

# [Defender Technologies][AS14383][74.204.160.0 - 74.204.191.255]

127.0.0.1  coreman.info

# [Denit Internet Services via various][81.93.48.0 - 81.93.63.255]

# [DigitalNames]

127.0.0.1  digitalnames.net

127.0.0.1  dnplugin.digitalnames.net #[Spyware.DigitalNames]

127.0.0.1  download.digitalnames.net

127.0.0.1  hanafos.digitalnames.net

127.0.0.1  search.digitalnames.net

127.0.0.1  service.digitalnames.net

127.0.0.1  service1.digitalnames.net

127.0.0.1  service2.digitalnames.net

127.0.0.1  service3.digitalnames.net

127.0.0.1  update.digitalnames.net #[SPYW_DIGITALNM.A]

127.0.0.1  upgrade.digitalnames.net #[AdWare.DigitalNames.g]

127.0.0.1  www.digitalnames.net #[McAfee.Adware-DigitalNames]

# [Digital River][Direct Response Technologies]

127.0.0.1  affiliates.adfinity.com #[adfinity.wip.directresponsetech.com]

127.0.0.1  login.adoptim.com #[adoptim.wip.directresponsetech.com]

127.0.0.1  partners.clear-link.com

127.0.0.1  clickauditor.net

127.0.0.1  affiliates.copeac.com #[intermarkmedia.wip.directresponsetech.com]

127.0.0.1  directcoupons.com

127.0.0.1  directleads.com #[Whois.Blacklisted]

127.0.0.1  directtrack.com

127.0.0.1  adultadworld.directtrack.com

127.0.0.1  affiliace.directtrack.com

127.0.0.1  asseenonpc.directtrack.com

127.0.0.1  battleon.directtrack.com

127.0.0.1  bingorevenue.directtrack.com

127.0.0.1  cpacampaigns.directtrack.com

127.0.0.1  dcsmarketing.directtrack.com

127.0.0.1  doubleyourdating.directtrack.com

127.0.0.1  gozing.directtrack.com

127.0.0.1  images.directtrack.com

127.0.0.1  imagecache.directtrack.com

127.0.0.1  img.directtrack.com

127.0.0.1  latin3.directtrack.com

127.0.0.1  maxxaffiliate.directtrack.com

127.0.0.1  mysavings.directtrack.com

127.0.0.1  niteflirt.directtrack.com

127.0.0.1  nitropayouts.directtrack.com

127.0.0.1  offersquest.directtrack.com

127.0.0.1  rapidresponse.directtrack.com #[SpySweeper.Spy.Cookie]

127.0.0.1  revenuegateway.directtrack.com

127.0.0.1  secure.directtrack.com #[SpySweeper.Spy.Cookie]

127.0.0.1  sideshow.directtrack.com

127.0.0.1  trafficneeds.directtrack.com

127.0.0.1  varsityads.directtrack.com #[MVPS.Criteria]

127.0.0.1  www.directtrack.com

127.0.0.1  partners.dmoglobal.com #[dmoglobal.wip.directresponsetech.com]

127.0.0.1  eajmp.com

127.0.0.1  www.eajmp.com #[MVPS.Criteria]

127.0.0.1  tracking.fathomseo.com #[kwm-fathomseo.wip.directresponsetech.com]

127.0.0.1  123.fluxads.com #[TrekEight]

127.0.0.1  ad1.gamezone.com #[RealMedia]

127.0.0.1  keywordmax.com

127.0.0.1  www.keywordmax.com

127.0.0.1  affiliates.millnicmedia.com #[millnicmedia.wip.directresponsetech.com]

127.0.0.1  show.onenetworkdirect.net

127.0.0.1  ourfreestuff.net

127.0.0.1  1.sharkadnetwork.com

# [Dimago Overseas][216.195.51.0 - 216.195.51.255]

# [Direct Information Group][Parking Service]

127.0.0.1  parking.ad3.com

127.0.0.1  images.bmnq.com

127.0.0.1  cnomy.com

127.0.0.1  images.cnomy.com

127.0.0.1  pics.cnomy.com

127.0.0.1  images.skenzo.com

127.0.0.1  img.skenzo.com

127.0.0.1  pics.skenzo.com

127.0.0.1  www.theuniquesearch.com

127.0.0.1  ads.webhosting.info

# [Dmitriy Gerasimov]

127.0.0.1  www.dimkus.com

127.0.0.1  info.mytrix.cz #[Wildcard DNS]

127.0.0.1  stats.mytrix.cz

127.0.0.1  www.mytrix.cz #[SPYW_MORWILBAR.A]

127.0.0.1  www.netcross.cz #[Adware.MWSearch][SiteAdvisor.netcross.cz]

127.0.0.1  www.netcross.info #[SPYW_MORWILBAR.A]

127.0.0.1  www.pragueline.com #[coolwebsearch.com]

127.0.0.1  www.webseek.cz

# [DomainSpa LLC][Parking Service]

127.0.0.1  hus.parkingspa.com #[Microsoft.Typo-Patrol]

127.0.0.1  zoo.parkingspa.com

127.0.0.1  zoo-a.parkingspa.com

# [Doteasy Technology][Hitstation Communication]

127.0.0.1  adserve.doteasy.com

127.0.0.1  pbg2cs01.doteasy.com

127.0.0.1  hitcounter01.xspp.com

# [Dotster Inc][AS14744][66.11.230.0 - 66.11.230.255]

127.0.0.1  www.cyberzine.com #[PcTools.CamGirlsLive ToolBar]

# [Dynamic Network Services]

127.0.0.1  cxoadfarm.dyndns.info #[Ad-Aware.Tracking.Cookie]

127.0.0.1  cxoreport.dnsalias.net

# [Eastnet-ua-net][AS40965][195.95.151.0 - 195.95.151.255]

127.0.0.1  av-plus-pay-online.com

127.0.0.1  megaantivirusplus.com #[Win32/Kryptik.D]

# [Easy Online Solutions][208.122.192.0 - 208.122.223.255]

127.0.0.1  adserver.gallerytrafficservice.com

127.0.0.1  www.gallerytrafficservice.com

127.0.0.1  clicks.globaltrafficservice.com

127.0.0.1  feeds.globaltrafficservice.com #[Spamdexing]

127.0.0.1  www.wtfmedia.com

# [Easy Online Solutions][64.59.64.0 - 64.59.127.255]

127.0.0.1  popit.mediumpimpin.com

# [Easy Online Solutions][AS27589][74.206.160.0 - 74.206.191.255]

127.0.0.1  ads.gtsads.com

127.0.0.1  engine.gtsads.com

127.0.0.1  geoip.gtsads.com

127.0.0.1  images.gtsads.com

127.0.0.1  mobileadspots.com

127.0.0.1  hitx.xxxstatistics.com

# [Easyspeedy via various][82.103.128.0 - 82.103.143.255]

127.0.0.1  100-celebrities.com

127.0.0.1  best-video-2008.com

127.0.0.1  www.livewebstats.dk

# [Ecatel Ltd][89.248.168.0 - 89.248.168.255]

127.0.0.1  antispyalerts.com

127.0.0.1  antispywarecommunity.com

127.0.0.1  antispywaremore.com #[Vivids Media GmbH]

127.0.0.1  www.antispywaremore.com

127.0.0.1  antispysotware.com

127.0.0.1  clearantispyware.com #[Win32/Adware.Antivirus2008]

127.0.0.1  www.clearantispyware.com

127.0.0.1  internetsafebrowsing.com

127.0.0.1  myrelevantsearch.com

127.0.0.1  safetywebspace.com

127.0.0.1  topringtonesworld.com #[Vivids Media GmbH]

# [Ecatel Ltd][As29073][93.174.93.0 - 93.174.93.255]

127.0.0.1  outtds.com

127.0.0.1  tgptraffictrades.com

# [Ecatel Ltd][94.102.48.0 - 94.102.48.255]

127.0.0.1  bestvideogalleries.com

127.0.0.1  bigpornvideo.ru

127.0.0.1  homepornvideotube.com

127.0.0.1  porno-movie-galleries.com

# [Ecatel via Infinite Technologies][94.102.48.0 - 94.102.63.255]

127.0.0.1  www.search-adultsex.com

# [Ecommerce Corporation][AS32392][71.18.0.0 - 71.18.255.255]

127.0.0.1  errorkillers.net

127.0.0.1  intelinet-antispyware.com #[Win32/Adware.IntelinetSmartSecurity]

127.0.0.1  www.intelinet-antispyware.com

# [Ecommerce Corporation][76.162.0.0 - 76.163.255.255]

127.0.0.1  www.adshuh.com

127.0.0.1  traffloads.com

127.0.0.1  traffloads.in

127.0.0.1  www.videomv.com #[Spamdexing.Codec]

# [Edrs Technologies][Effective-i][AS8584][62.90.166.224 - 62.90.166.255]

127.0.0.1  download.ucmore.com #[Adware.UCMore]

127.0.0.1  users.ucmore.com #[Adware-UCMore.dr][F-Secure.UCmore]

127.0.0.1  sponsor2.ucmore.com #[IEMenuExtension Toolbar]

127.0.0.1  www.ucmore.com #[ADW_IMENEXT.A][Win32/Adware.UCmore]

# [Eltel][85.249.0.0 - 85.249.255.255]

# [Ely][81.222.139.0 - 81.222.139.255]

# [EnBrowser]

127.0.0.1  www.enbrowser.com #[Adware.WinBo]

127.0.0.1  www.nbrowser.com #[Trojan.Agent.winbo32]

# [Endurance International][65.254.224.0 - 65.254.255.255]

127.0.0.1  amare.softwaregarden.com #[Win32/TrojanDownloader.Small.AWA]

127.0.0.1  www.trafficflame.com

127.0.0.1  best-sellers.vegnews.com

127.0.0.1  consultive.vegnews.com

127.0.0.1  glo.vegnews.com

127.0.0.1  lance.vegnews.com #[Win32/TrojanDownloader.Small.AWA]

127.0.0.1  margara.vegnews.com

# [Endurance International][AS29873][66.96.128.0 - 66.96.191.255]

127.0.0.1  halfstyles-1.com

# [Enom Incorporated][69.64.144.0 - 69.64.159.255]

127.0.0.1  video.dmtracker.com #[WebBug]

127.0.0.1  vs.dmtracker.com

# [Enom Incorporated][98.124.192.0 - 98.124.255.255]

127.0.0.1  www.blogfaces.com

127.0.0.1  www.blogvisitors.com

127.0.0.1  hi5-photo.org

127.0.0.1  www.link2blogs.com

127.0.0.1  prodigy-antivirus.com

# [Equinoxe Media][80.89.112.0 - 80.89.118.127]

127.0.0.1  www.film-x-gratos.com #[Malicious.Links]

# [Equinoxe Media via EdenCast BV]

127.0.0.1  bonass.net #[Malicious.Links.winantispyware.com]

127.0.0.1  www.bonass.net

127.0.0.1  banners.direction-x.com

127.0.0.1  599.stats.misstrends.com

127.0.0.1  602.stats.misstrends.com

127.0.0.1  604.stats.misstrends.com

127.0.0.1  606.stats.misstrends.com

127.0.0.1  654.stats.misstrends.com

127.0.0.1  671.stats.misstrends.com

127.0.0.1  680.stats.misstrends.com

127.0.0.1  699.stats.misstrends.com

127.0.0.1  726.stats.misstrends.com

127.0.0.1  750.stats.misstrends.com

127.0.0.1  803.stats.misstrends.com

127.0.0.1  879.stats.misstrends.com

127.0.0.1  986.stats.misstrends.com

127.0.0.1  1559.stats.misstrends.com

127.0.0.1  1800.stats.misstrends.com

127.0.0.1  1867.stats.misstrends.com

127.0.0.1  2278.stats.misstrends.com

127.0.0.1  4184.stats.misstrends.com

# [ESD Technologies][Mark Jackson][Digital Delivery LLC]

127.0.0.1  1stsoftwaredownloads.com #[Adware/NewtonKnows]

127.0.0.1  www.1stsoftwaredownloads.com

127.0.0.1  www.crazaa.com

127.0.0.1  digital-delivery.us #[SecurityRisk.MatrixSS]

127.0.0.1  netwebsearch.com

127.0.0.1  www.netwebsearch.com #[adblaster2.info][SysIdle]

# [Essential Services][216.150.64.0 - 216.150.95.255]

# [Essential Services][216.169.96.0 - 216.169.127.255]

# [Eukhost Ltd][AS29131][78.129.158.0 - 78.129.158.255]

127.0.0.1  olinredr2.com

# [Eukhost-ltd][91.186.31.0 - 91.186.31.255]

127.0.0.1  ads.uknetguide.co.uk

# [Euroaccess][193.138.220.0 - 193.138.231.255]

127.0.0.1  www.dialerfactory.com

127.0.0.1  the-exit.com

127.0.0.1  www.the-exit.com

127.0.0.1  www.hostedbanners.com

127.0.0.1  banner.sextorrent.to

127.0.0.1  landingpages.sunnytoolz.com

# [Euroaccess via D&D Internet Services]

127.0.0.1  cluster.blingblingcontent.com

127.0.0.1  gb.blingblingcontent.com

127.0.0.1  s7.blingblingcontent.com #[HJTH.EasyWebSearch Hijacker]

127.0.0.1  www.easywebsearch.nl #[Easywebinstaller Control]

127.0.0.1  www.waypointcash.com

# [Eurohost][AS48841][91.212.65.0 - 91.212.65.255]

127.0.0.1  4-open-davinci.com

127.0.0.1  advanced-virusremover2009.com

127.0.0.1  alltubesfun.us #[Fake.PornTube.Codec]

127.0.0.1  www.alltubesfun.us

127.0.0.1  alltubesplace.com #[Win32/Kryptik.AA]

127.0.0.1  antiawarepro.com

127.0.0.1  antivirus-xppro2009.com

127.0.0.1  antivirusxppro-2009.com

127.0.0.1  antivirus-xppro-2009.com

127.0.0.1  bowselaf.cn

127.0.0.1  cuzlumif.cn

127.0.0.1  dastrealworld.ru

127.0.0.1  downloadmax.org

127.0.0.1  elantrasantrope.ru

127.0.0.1  free-web-scaners.biz

127.0.0.1  free-webscaners.net #[server down?]

127.0.0.1  hayboxiw.cn

127.0.0.1  hex-programmers.com #[server down?]

127.0.0.1  hifgejig.cn #[server down?]

127.0.0.1  ifmon.in

127.0.0.1  moricons.in

127.0.0.1  oeimport.in

127.0.0.1  onlinescanxppro.com

127.0.0.1  onlinescanxp.com

127.0.0.1  onlinescanxpp.com

127.0.0.1  onlinescanxppp.com

127.0.0.1  osguardpro.com

127.0.0.1  panmap.in

127.0.0.1  pclxl.in

127.0.0.1  peskufex.cn

127.0.0.1  popyodiw.cn

127.0.0.1  ralcofic.cn

127.0.0.1  ridmoyey.cn

127.0.0.1  sandiiegoexpo.ru #[Google.Diagnostic]

127.0.0.1  sehmadac.cn

127.0.0.1  silzefos.cn

127.0.0.1  sipcojeq.cn

127.0.0.1  topsale2.ru

127.0.0.1  trucount3000.com #[Google.Diagnostic]

127.0.0.1  trucount3001.com

127.0.0.1  trucount3002.com

127.0.0.1  trucount3005.com

127.0.0.1  usualwe.com

127.0.0.1  vscodec-pro.com

127.0.0.1  vs-codec-pro.com

127.0.0.1  webtopsearch.com

127.0.0.1  welovemovie.com #[Google.Diagnostic]

127.0.0.1  xidsasuc.cn

127.0.0.1  xpdeluxeprotector.com

127.0.0.1  hd.youpornz.net

# [Eurohost via Bastion Trade][AS48841][94.232.248.0 - 94.232.255.255]

127.0.0.1  nicevideo44.com #[Win32/Koobface.NBQ][server down?]

127.0.0.1  nicevideo44.net

127.0.0.1  pornotvnetwork.us

127.0.0.1  www.pornotvnetwork.us

# [Eurotivity B.v][213.189.25.0 - 213.189.26.255]

127.0.0.1  ads.memberarea.cc

127.0.0.1  access.passwordbyphone.com

127.0.0.1  banners.passwordbyphone.com

127.0.0.1  gfx.passwordbyphone.com

127.0.0.1  interface.passwordbyphone.com

127.0.0.1  www.passwordbyphone.com

127.0.0.1  ads.webmasterprofitcenter.com

127.0.0.1  gfx.webmasterprofitcenter.com

127.0.0.1  peel.webmasterprofitcenter.com

127.0.0.1  promo.webmasterprofitcenter.com

127.0.0.1  adlink.worldprofitcenter.com

127.0.0.1  promo.worldprofitcenter.com

# [Eu-zz][AS48511][91.211.64.0 - 91.211.67.255]

# [Eu-zz][AS48841][91.212.65.0 - 91.212.65.255]

127.0.0.1  3-antispyware3000.net

127.0.0.1  free-web-scaners.com

127.0.0.1  tozxiqud.cn #[Google.Diagnostic]

127.0.0.1  usacaaugb.cn #[Google.Diagnostic]

# [Eu-zz][AS12553][94.247.2.0 - 94.247.3.255]

# [eventures NV][Netthink Media]

127.0.0.1  direct.combocash.com

127.0.0.1  www.eventuresnv.com

# [Everyones Internet][209.85.0.0 - 209.85.127.255]

# [Everyones Internet][216.12.192.0 - 216.12.223.255]

127.0.0.1  ads.desktopscans.com

127.0.0.1  stats.ircfast.com

127.0.0.1  stats.spyware-browser.com

# [Everyones Internet][216.40.192.0 - 216.40.255.255]

# [Everyones Internet via Alex Korsakoff]

127.0.0.1  7art-screensavers.com #[Trojan-Downloader.Win32.PurityScan.eg]

127.0.0.1  www.7art-screensavers.com

127.0.0.1  silveragesoftware.com #[SiteAdvisor.silveragesoftware.com]

127.0.0.1  www.silveragesoftware.com

# [Everyones Internet via SwankSoft][Danilo Ladendorf]

127.0.0.1  www.historykill.com

127.0.0.1  www.killercash.com

127.0.0.1  www.surfmask.com

127.0.0.1  www.swanksoft.com

127.0.0.1  www.trustsoft.com

# [Everyones Internet][75.125.0.0 - 75.125.255.255]

# [Evolution World Wide Limited]

127.0.0.1  ads.dropspam.com #[HJTH.IEPlugin]

127.0.0.1  my.dropspam.com

127.0.0.1  mysearch.dropspam.com #[McAfee.Adware-DropSpam]

127.0.0.1  sidesearch.dropspam.com

127.0.0.1  www.dropspam.com #[PcTools.DropSpam ToolBar]

# [eXact Advertising LLC][Innovation Interactive][360i LLC]

127.0.0.1  ct.360i.com #[McAfee.Cookie-360i][Panda.Spyware:Cookie/360i]

127.0.0.1  bargain-buddy.net #[Adware.BargainBuddy]

127.0.0.1  download.bargain-buddy.net #[Adware.IEHost][TROJ_DLOADER.MG]

127.0.0.1  service.bargain-buddy.net #[W32/BargainBuddy.AO.dropper]

127.0.0.1  service1.bargain-buddy.net #[McAfee.Adware-BB]

127.0.0.1  service2.bargain-buddy.net

127.0.0.1  service3.bargain-buddy.net

127.0.0.1  service4.bargain-buddy.net

127.0.0.1  service5.bargain-buddy.net

127.0.0.1  service6.bargain-buddy.net

127.0.0.1  service7.bargain-buddy.net

127.0.0.1  www.bargain-buddy.net #[AdWare.BargainBuddy.n]

127.0.0.1  images.brainfox.com

127.0.0.1  search.brainfox.com

127.0.0.1  www.brainfox.com

127.0.0.1  results.cafefind.net

127.0.0.1  www.exactadvertising.com

127.0.0.1  www.instantnavigation.com

127.0.0.1  leadgenetwork.com

127.0.0.1  www.leadgenetwork.com

127.0.0.1  www.link-popularity.info

127.0.0.1  track.searchignite.com

127.0.0.1  www.searchignite.com

127.0.0.1  www.searchfish.com

127.0.0.1  domain.siteparker.com

127.0.0.1  search.siteparker.com

127.0.0.1  www.xctrk.com #[SiteAdvisor.bargain-buddy.net]

# [Experian Interactive][Thermo Media]

127.0.0.1  banners.affiliatefuel.com #[SpySweeper.Spy.Cookie]

127.0.0.1  r1.affiliatefuel.com

127.0.0.1  www.affiliatefuel.com #[McAfee.Cookie-Affiliatefuel]

127.0.0.1  aftrk.com

127.0.0.1  banners.aftrk.com

127.0.0.1  ads.roundads.com

# [Extended Host][194.110.160.0 - 194.110.163.255]

127.0.0.1  a-a-access.com

127.0.0.1  www.adult2006.com

127.0.0.1  azeok.com

127.0.0.1  batva.net

127.0.0.1  hit.click2006.com

127.0.0.1  okayaccess.com

127.0.0.1  search-daily.com #[TROJ_CLICKER.E]

127.0.0.1  www.search-daily.com

127.0.0.1  yournewstime.net

# [eXTReMe digital][213.244.183.192 - 213.244.183.223]

127.0.0.1  extreme-dm.com #[SecuritySpace.WebBug]

127.0.0.1  e0.extreme-dm.com

127.0.0.1  e1.extreme-dm.com

127.0.0.1  e2.extreme-dm.com

127.0.0.1  nht-2.extreme-dm.com #[eXTReMe Non Public Tracker Code]

127.0.0.1  nht-3.extreme-dm.com

127.0.0.1  reports.extreme-dm.com

127.0.0.1  t.extreme-dm.com

127.0.0.1  t0.extreme-dm.com

127.0.0.1  t1.extreme-dm.com

127.0.0.1  u.extreme-dm.com

127.0.0.1  u0.extreme-dm.com

127.0.0.1  u1.extreme-dm.com #[SunBelt.Extreme-DM.com]

127.0.0.1  v.extreme-dm.com

127.0.0.1  v0.extreme-dm.com

127.0.0.1  v1.extreme-dm.com

127.0.0.1  w.extreme-dm.com

127.0.0.1  w0.extreme-dm.com

127.0.0.1  w1.extreme-dm.com

127.0.0.1  x3.extreme-dm.com

127.0.0.1  y.extreme-dm.com #[Tenebril.Tracking.Cookie]

127.0.0.1  y0.extreme-dm.com

127.0.0.1  y1.extreme-dm.com

127.0.0.1  z.extreme-dm.com

127.0.0.1  z0.extreme-dm.com

127.0.0.1  z1.extreme-dm.com

127.0.0.1  extremetracking.com

# [Ezer Ratchaga][EzerNet]

127.0.0.1  www.adultfriendsearch.com

127.0.0.1  ads.advertisingz.com

127.0.0.1  logo.affiliatebot.com

127.0.0.1  link.affiliatebot.com

127.0.0.1  affiliate.friendsearch.com

127.0.0.1  dating.friendsearch.com

127.0.0.1  partner.friendsearch.com

127.0.0.1  www.friendsearch.com

127.0.0.1  ads.free-banners.com

127.0.0.1  affiliate.free-banners.com

127.0.0.1  home.free-banners.com

127.0.0.1  www.free-banners.com

127.0.0.1  ads.freevisits.com

127.0.0.1  search.hotplugins.com

127.0.0.1  www.hotplugins.com

127.0.0.1  toolbar.push.com #[searchv2.dll]

# [Ezprovider Inc][216.187.79.0 - 216.187.79.255]

127.0.0.1  www.hentaicounter.com

# [Ezprovider Inc][216.187.86.0 - 216.187.86.255]

127.0.0.1  www.hentaibanners.com

127.0.0.1  www.hentaicashmachine.com

127.0.0.1  www.hentaiclicks.com

127.0.0.1  www.hentaihits.com

127.0.0.1  www.hentaipop.com #[Electronic Group Dialer]

127.0.0.1  www.hentaiseeker.com

# [Ezzi.net][66.199.224.0 - 66.199.255.255]

127.0.0.1  servicebuys.com

# [Faelix Limited][][193.142.244.0 - 193.142.244.255]

127.0.0.1  protectionimage.com

# [Fast Internet][89.185.234.0 - 89.185.234.255]

127.0.0.1  lustadult.com

# [Fastit-de-dus1-colo][AS24961][85.114.140.0 - 85.114.143.255]

127.0.0.1  fullhourinternet.com

127.0.0.1  www.fullhourinternet.com

127.0.0.1  guarddog2009.com

127.0.0.1  dl.guarddog2009.com

127.0.0.1  www.guarddog2009.com

# [Favorit-master][AS25532][87.242.90.128 - 87.242.90.159]

127.0.0.1  www.navi-recherche.com

127.0.0.1  www.navi-search.com

127.0.0.1  fp.pc-on-internet.com

# [Favorit Network][AS48445][91.209.163.0 - 91.209.163.255]

127.0.0.1  updates.advert-network.com

127.0.0.1  www.backstripgirls.com

127.0.0.1  www.official-emule.com

127.0.0.1  adserving.favorit-network.com

127.0.0.1  download.favorit-network.com #[updates.advert-network.com]

127.0.0.1  www.funkyemoticons.com

127.0.0.1  www.go-turf.com

127.0.0.1  www.gomusic.com

127.0.0.1  www.gomusic.net

127.0.0.1  www.hot-tv.com #[Win32/Skintrim!][Symantec.HotTv]

127.0.0.1  live-player.com #[Symantec.LivePlayer]

127.0.0.1  download.live-player.com

127.0.0.1  www.live-player.com

127.0.0.1  www.navinetwork.com

127.0.0.1  em.pc-on-internet.com

127.0.0.1  www.pc-on-internet.com

127.0.0.1  www.sudoplanet.com #[Win32/Skintrim!][Symantec.SudoPlanet]

127.0.0.1  www.web-mediaplayer.com #[Backdoor.Win32.Iroffer.Z][Symantec.WebMediaPlayer]

# [Fdcservers.net][AS30058][208.53.128.0 - 208.53.191.255]

127.0.0.1  playofsex.com

127.0.0.1  www.playofsex.com

# [Fdcservers.net via Acceas Partners][66.90.64.0 - 66.90.127.255]

127.0.0.1  www.adsurfer.net

127.0.0.1  www.affiliateleader.com

127.0.0.1  www.crazymusic.com

127.0.0.1  downloaditnow.com

127.0.0.1  www.membershome.org

127.0.0.1  www.moviescentral.com

127.0.0.1  pspmusicdownloads.com

# [Fdcservers.net][74.63.64.0 - 74.63.95.255]

# [Fedora-Hosting][88.85.81.0 - 88.85.81.255]

127.0.0.1  coolnetsearch.com #[SiteAdvisor.coolnetsearch.com]

127.0.0.1  nemo-movies.com #[Malicious.Links]

127.0.0.1  page-x.com

127.0.0.1  picsandmovs.com #[Trojan.Codec]

127.0.0.1  www.picsandmovs.com

127.0.0.1  transparty.net #[searchanyway.com]

127.0.0.1  www.transparty.net

127.0.0.1  vstaet.info

127.0.0.1  xxx-mom.com #[IFrame.Exploit][Malicious.Links.Codec]

127.0.0.1  www.xxx-mom.com

# [Feelitaly Llc][78.129.166.0 - 78.129.166.255]

# [Firm Vision][91.206.10.0 - 91.206.11.255]

127.0.0.1  forbidden-clips.com #[Google.Diagnostic]

127.0.0.1  see-and-jerk.com

127.0.0.1  wild-lust.com #[Malicious.Links.Codec]

# [Fiber Hosting][AS46176][207.126.166.0 - 207.126.166.255]

127.0.0.1  goscanbay.com

127.0.0.1  linescan6.com

127.0.0.1  scan6ever.com

127.0.0.1  scangate6.com

127.0.0.1  scanlog6.com

# [First Cash Reserve][IBIS LLC][Xacti Group]

127.0.0.1  www.404-errorpage.com

127.0.0.1  as.adwave.com #[Parasite.HuntBar][Panda.Adware/WinTools]

127.0.0.1  search.adwave.com #[McAfee.Adware-IEHost]

127.0.0.1  sr.adwave.com

127.0.0.1  www.bestjobsguide.com

127.0.0.1  www.bestphonesguide.com

127.0.0.1  www.funscreensaverscentral.com

127.0.0.1  www.globalwebpass.com

127.0.0.1  www.ibis.com

127.0.0.1  www.ibisit.com #[SiteAdvisor.ibisit.com]

127.0.0.1  www.ibis.cz

127.0.0.1  www.myscreensaverlink.com

127.0.0.1  www.spyterm.com

127.0.0.1  www.spywarelinkcentral.com

127.0.0.1  adserver.trafficsyndicate.com #[SunBelt.trafficsyndicate.com]

127.0.0.1  search.trafficsyndicate.com

127.0.0.1  xml.trafficsyndicate.com

127.0.0.1  xml2.trafficsyndicate.com

127.0.0.1  ads.crawler.com

127.0.0.1  senkypl.com

127.0.0.1  websearch.com #[Adware.Huntbar][TRUSTe.Violator]

127.0.0.1  download.websearch.com #[SPYW_WEBSEARCH.A][Downloader-TH]

127.0.0.1  games.websearch.com

127.0.0.1  is1.websearch.com

127.0.0.1  is2.websearch.com

127.0.0.1  ranking.websearch.com

127.0.0.1  rs.websearch.com

127.0.0.1  skins.websearch.com

127.0.0.1  sr.websearch.com

127.0.0.1  ws.websearch.com

127.0.0.1  www.websearch.com #[WebSearch Toolbar.Emailplug][ADW_DOWNLOADER.E]

127.0.0.1  www.websearch.net

127.0.0.1  win-tools.com #[ADW_WSEARCH.109]

127.0.0.1  www.win-tools.com

# [First Network Communications][115.126.2.0 - 115.126.2.255]

# [Fluent Ltd][AS39779][195.78.94.0 - 195.78.95.255]

127.0.0.1  uk.ads.hexus.net

127.0.0.1  adserver4.fluent.ltd.uk

127.0.0.1  hexusads.fluent.ltd.uk

# [Focalex Inc][64.95.65.0 - 64.95.65.127]

127.0.0.1  focalex.com #[SiteAdvisor.focalex.com]

127.0.0.1  img.focalex.com

127.0.0.1  load.focalex.com

127.0.0.1  pluto.focalex.com

127.0.0.1  solutions.focalex.com

127.0.0.1  webgames.focalex.com

127.0.0.1  webgames-a.focalex.com

127.0.0.1  webgames-v1.focalex.com

127.0.0.1  tafmaster.com

127.0.0.1  image.tafmaster.com #[tafmaster-i.focalex.com]

127.0.0.1  public.tafmaster.com

127.0.0.1  www.tafmaster.com

# [Fordale Investment][66.186.17.192 - 66.186.17.223]

127.0.0.1  downloadware.net

127.0.0.1  www.downloadware.net #[eTrust.DownloadWare]

127.0.0.1  fordaleltd.com

127.0.0.1  config.fordaleltd.com

127.0.0.1  download.fordaleltd.com #[Adware.Dware][Netbroadcaster]

127.0.0.1  www.fordaleltd.com

# [Fortressitx][AS25653][69.72.128.0 - 69.72.255.255]

127.0.0.1  buttandass.net

127.0.0.1  www.buttandass.net

127.0.0.1  buttview.net

127.0.0.1  www.buttview.net

127.0.0.1  www.gogoshemales.com

127.0.0.1  onlinecount.com

127.0.0.1  playqames.com #[HJTH.NetVenda Dialer]

127.0.0.1  www.starptp.com

# [Fortunecity]

127.0.0.1  ads.fortunecity.com #[SpySweeper.Spy.Cookie]

127.0.0.1  oascentral.fortunecity.com #[RealMedia]

127.0.0.1  www2.fortunecity.com #[SunBelt.FortuneCity.com]

127.0.0.1  ads.v3.com

# [Fortune Science][AS47434][195.242.161.0 - 195.242.161.255]

# [Fox Interactive Media / News Corp]

127.0.0.1  ads.americanidol.com

127.0.0.1  ads.ign.com #[McAfee.Cookie-IGN]

127.0.0.1  de.ign.com

127.0.0.1  t.ign.com

127.0.0.1  tracker.ign.com

127.0.0.1  dartimg.intermix.com

127.0.0.1  nb.myspace.com #[WebBug]

127.0.0.1  a.photobucket.com #[photobkt.adbureau.net]

127.0.0.1  adserver.snowball.com

127.0.0.1  t.snowball.com

# [Fox Interactive via MySpace][216.178.32.0 - 216.178.47.255]

127.0.0.1  cache.opt.fimserve.com

127.0.0.1  debr.opt.fimserve.com

127.0.0.1  deeb.opt.fimserve.com

127.0.0.1  dehp.opt.fimserve.com

127.0.0.1  delb.opt.fimserve.com

127.0.0.1  demr.opt.fimserve.com

127.0.0.1  desb.opt.fimserve.com

127.0.0.1  desk.opt.fimserve.com

127.0.0.1  dewb.opt.fimserve.com

127.0.0.1  p.opt.fimserve.com

127.0.0.1  delb.myspace.com #[ad.yieldmanager.com]

127.0.0.1  delb2.myspace.com #[media.fimnetwork.com]

127.0.0.1  demr.myspace.com #[media.fimnetwork.com]

127.0.0.1  fimserve.myspace.com

127.0.0.1  fimserve.rottentomatoes.com

# [Fox Interactive via Ign Entertainment][207.38.8.0 - 207.38.15.255]

127.0.0.1  ads.gamespy.com #[SpySweeper.Spy.Cookie]

127.0.0.1  adcontent.gamespy.com

127.0.0.1  ads.gamespyid.com

# [Fox Interactive via Ign Entertainment][69.10.16.0 - 69.10.31.255]

127.0.0.1  atax.askmen.com

127.0.0.1  wrapper.askmen.com

127.0.0.1  wrapper.rottentomatoes.com

# [FriendFinder Inc.]

127.0.0.1  adultfriendfinder.com #[McAfee.Cookie-Adultfriend]

127.0.0.1  ads.adultfriendfinder.com #[SpySweeper.Spy.Cookie][a841.x.akamai.net]

127.0.0.1  adserver.adultfriendfinder.com

127.0.0.1  banners.adultfriendfinder.com

127.0.0.1  cover9.adultfriendfinder.com

127.0.0.1  guest.adultfriendfinder.com

127.0.0.1  iframe.adultfriendfinder.com #[McAfee.Adware-Redalert]

127.0.0.1  option9.adultfriendfinder.com

127.0.0.1  tgp.adultfriendfinder.com #[cams.com]

127.0.0.1  www.adultfriendfinder.com #[Troj/Small-AG][Adware-Adroar.dll]

127.0.0.1  ads.alt.com

127.0.0.1  banners.alt.com

127.0.0.1  ads.amigos.com

127.0.0.1  banners.amigos.com

127.0.0.1  ads.asiafriendfinder.com

127.0.0.1  adserver.asiafriendfinder.com #[banners.friendfinder.com]

127.0.0.1  banners.asiafriendfinder.com

127.0.0.1  ads.bondage.com

127.0.0.1  adserver.bondage.com

127.0.0.1  ads.breakthru.com

127.0.0.1  adserver.cams.com

127.0.0.1  banners.cams.com #[banners.adultfriendfinder.com]

127.0.0.1  promo.cams.com

127.0.0.1  ads.friendfinder.com #[a841.x.akamai.net]

127.0.0.1  adserver.friendfinder.com

127.0.0.1  banners.friendfinder.com

127.0.0.1  e89.friendfinder.com

127.0.0.1  openads.friendfinder.com

127.0.0.1  banners.gayfriendfinder.com

127.0.0.1  banners.germanfriendfinder.com

127.0.0.1  ads.jewishfriendfinder.com

127.0.0.1  banners.jewishfriendfinder.com

127.0.0.1  medleyads.com

127.0.0.1  graphics.medleyads.com

127.0.0.1  www.medleyads.com

127.0.0.1  banners.millionairemate.com

127.0.0.1  ads.outpersonals.com #[a841.x.akamai.net]

127.0.0.1  adserver.outpersonals.com #[banners.friendfinder.com]

127.0.0.1  banners.outpersonals.com

127.0.0.1  ads.passion.com #[a841.x.akamai.net]

127.0.0.1  adserver.passion.com

127.0.0.1  banner.passion.com

127.0.0.1  banners.passion.com

127.0.0.1  adserver.penthouse.com #[banners.friendfinder.com]

127.0.0.1  content.pop6.com #[friendfinder.usgcac.cdnetworks.us]

127.0.0.1  ads.seniorfriendfinder.com

127.0.0.1  adserver.seniorfriendfinder.com

127.0.0.1  banners.seniorfriendfinder.com

127.0.0.1  affiliates.streamray.com

127.0.0.1  banners.images.streamray.com

127.0.0.1  free.content.streamray.com

# [Ft-usei-est][194.206.163.0 - 194.206.163.255]

127.0.0.1  ad.bubblestat.com

127.0.0.1  in.bubblestat.com

127.0.0.1  www2.click-fr.com

127.0.0.1  www3.click-fr.com

127.0.0.1  www4.click-fr.com

# [Fun-Lotto.com][ZQuest Media][Mermaid Consulting]

127.0.0.1  adpowerzone.com #[eTrust.SearchExplorerBar]

127.0.0.1  ads.adpowerzone.com

127.0.0.1  easy.adpowerzone.com

127.0.0.1  ss.adpowerzone.com

127.0.0.1  tb.adpowerzone.com #[McAfee.Adware-ExplBar]

127.0.0.1  tb-static.adpowerzone.com #[Adware.Websearch]

127.0.0.1  www.adpowerzone.com #[Adware.Searchexplorer]

127.0.0.1  servedby.headlinesandnews.com

127.0.0.1  adsby.uzoogle.com

127.0.0.1  games.uzoogle.com

127.0.0.1  www.uzoogle.com #[Win32/Zquest.A]

# [FunnyTaf Inc][206.222.30.224 - 206.222.30.239]

127.0.0.1  cards.cardfountain.com

127.0.0.1  cards.free.cardfountain.com

127.0.0.1  www.cardfountain.com

127.0.0.1  funnytaf.com #[SiteAdvisor.funnytaf.com]

127.0.0.1  www.funnytaf.com

# [Fusepoint][AS16941][72.35.0.0 - 72.35.31.255]

127.0.0.1  media.foundry42.com

127.0.0.1  tracking.foundry42.com

127.0.0.1  counter.surfcounters.com

# [Future Hosting][208.101.16.104 - 208.101.16.111]

127.0.0.1  www.kikclicks.com

127.0.0.1  www.procashs.info

# [Futurpago-es][212.73.254.0 - 212.73.255.255]

127.0.0.1  www.download-plus.com

# [Galt Technology][Website Solutions]

127.0.0.1  www.celebrity-wallpaper.com

127.0.0.1  www.daily1.com #[AdWare.Win32.SaveNow.bo]

127.0.0.1  www.funskins.com

127.0.0.1  www.galttech.com #[AdWare.Win32.FunWeb.e]

127.0.0.1  www.mp3yes.com #[SiteAdvisor.mp3yes.com]

127.0.0.1  www.my-free-ringtones.com

127.0.0.1  www.rubberfaces.com #[SiteAdvisor.rubberfaces.com]

127.0.0.1  www.screensaverheaven.com #[Trojan.Muldrop.3051.A]

127.0.0.1  www.topscreensavers.com #[SiteAdvisor.galttech.com]

127.0.0.1  www.wallpaperworld.com

127.0.0.1  www.wrestling1.com

# [Gamma Networking][66.152.64.0 - 66.152.95.255]

127.0.0.1  ads.privatefeeds.com

127.0.0.1  ads.vipcams.com

# [Gamma Entertainment][66.152.92.0 - 66.152.92.255]

127.0.0.1  adultmoviemax.com

127.0.0.1  www.adultmoviemax.com

127.0.0.1  www.ebonybymail.com

127.0.0.1  tgp.gammacash.com

127.0.0.1  maximize.gammacash.com

127.0.0.1  stats.gammacash.com

127.0.0.1  www.gammacash.com

127.0.0.1  www.gammasites.com

127.0.0.1  advertising.gammae.com

127.0.0.1  cgi.gammae.com

127.0.0.1  common.gammae.com #[AVG.Dialer.JT]

127.0.0.1  hourly.gammae.com

127.0.0.1  tracking.gammae.com

127.0.0.1  php.gammae.com

127.0.0.1  www.gammaentertainment.com

127.0.0.1  gaysexswap.com

127.0.0.1  cgi.gaysexswap.com

127.0.0.1  www.hardcorebymail.com

127.0.0.1  power-cleaner.com #[McAfee.PowerScan]

127.0.0.1  www.power-cleaner.com

127.0.0.1  sexswap.com

127.0.0.1  cgi.sexswap.com

127.0.0.1  cgi.sexswap2.com

127.0.0.1  cgi.sexswap2000.com

127.0.0.1  vomba.com #[SunBelt.Vomba][Adware.Vomba]

127.0.0.1  www.vomba.com

127.0.0.1  www.vombacash.com

127.0.0.1  www.vombasavers.com

127.0.0.1  vombashots.com #[Adware.Win32.Vomba]

127.0.0.1  www.vombashots.com

127.0.0.1  install.vombanetwork.com #[MVPS.Criteria]

127.0.0.1  promo.vombanetwork.com

127.0.0.1  www.vombanetwork.com

127.0.0.1  www.yyep.com #[searchtraffic.com]

# [Gamma Networking via Integrated Search Technologies][66.152.93.0 - 66.152.93.127]

127.0.0.1  activexcash.com

127.0.0.1  www.activexcash.com

127.0.0.1  activexcash.net

127.0.0.1  www.activexcash.net

127.0.0.1  adultgameserver.com

127.0.0.1  www.adultgameserver.com

127.0.0.1  adultgameservers.com

127.0.0.1  www.adultgameservers.com

127.0.0.1  couldntfind.com

127.0.0.1  www.couldntfind.com

127.0.0.1  couldnotfind.com

127.0.0.1  www.couldnotfind.com #[TROJ_ISTBAR.AD]

127.0.0.1  installcash.com

127.0.0.1  www.installcash.com

127.0.0.1  installdownload.com

127.0.0.1  www.installdownload.com

127.0.0.1  isearchtech.com #[SunBelt.IST.Protector]

127.0.0.1  www.isearchtech.com #[SunBelt.IST.ISTbar]

127.0.0.1  istsvcweb.com

127.0.0.1  www.istsvcweb.com

127.0.0.1  music-lookup.com

127.0.0.1  www.music-lookup.com

127.0.0.1  music-lookup.net

127.0.0.1  www.music-lookup.net

127.0.0.1  pornsearchbar.com

127.0.0.1  www.pornsearchbar.com

127.0.0.1  porntoolbar.com

127.0.0.1  www.porntoolbar.com

127.0.0.1  www.power-scan.com #[SPYW_POWERSCAN.C]

127.0.0.1  www.safer-scan.com #[Symantec.SaferScan]

127.0.0.1  sexsearchbar.com

127.0.0.1  www.sexsearchbar.com

127.0.0.1  sextoolbar.com

127.0.0.1  www.sextoolbar.com

127.0.0.1  sidefind.com #[Troj/SideFind-A][ADW_SIDEFIND.E]

127.0.0.1  cache.sidefind.com #[McAfee.Adware-ISTbar.dldr]

127.0.0.1  www.sidefind.com #[Adware.SideFind]

127.0.0.1  slidefind.net

127.0.0.1  www.slidefind.net

127.0.0.1  slidesearch.com

127.0.0.1  www.slidesearch.com

127.0.0.1  slidesearch.net

127.0.0.1  www.slidesearch.net

127.0.0.1  slotch.com #[TROJ_ISTBAR.B,K][Trojan.TrustedZones]

127.0.0.1  adult.slotch.com

127.0.0.1  www.slotch.com #[TROJ_ISTBAR.AD][Win32/Adware.Slotch]

127.0.0.1  slotchbar.com #[Troj/IstBar-N]

127.0.0.1  www.slotchbar.com

127.0.0.1  tbcode.com

127.0.0.1  cache.tbcode.com

127.0.0.1  www.tbcode.com #[HJTH.Win32.IstBar.hg]

127.0.0.1  toolbarcash.com #[Parasite.ISTbar]

127.0.0.1  www.toolbarcash.com

127.0.0.1  unlimitedsongs.net

127.0.0.1  www.unlimitedsongs.net

127.0.0.1  xxxtoolbar.com #[Adware.ClickDLoader.B]

127.0.0.1  install.xxxtoolbar.com #[TROJ_ISTBAR.D,I]

127.0.0.1  www.xxxtoolbar.com #[SunBelt.XXXToolBar.com]

127.0.0.1  yoursitebar.com #[Adware.YourSiteBar]

127.0.0.1  rewards.yoursitebar.com

127.0.0.1  stats.yoursitebar.com

127.0.0.1  www.yoursitebar.com #[SPYW_SITEBAR.A]

127.0.0.1  ysbweb.com #[Trojan.TrustedZones][ADW_ISTBAR.K]

127.0.0.1  cache.ysbweb.com #[TROJ_ISTBAR.FN]

127.0.0.1  www.ysbweb.com #[Win32.Secdrop.AW][TROJ_DLOADER.AIO]

# [Gamma Networking via Marketing Engines][66.152.85.0 - 66.152.85.255]

127.0.0.1  www.crunchtoolbar.com

127.0.0.1  getweathercast.com

127.0.0.1  app.memedia.com

127.0.0.1  web.memedia.com

127.0.0.1  www.memedia.com #[McAfee.MeMedia]

127.0.0.1  www.pbtoolbar.com #[PriceBandit Toolbar]

127.0.0.1  pricebandit.com

127.0.0.1  www.pricebandit.com #[SpySweeper.whenu.searchbar/pricebandit]

127.0.0.1  whenu.com #[Adware-WhenU][SiteAdvisor.whenu.com]

127.0.0.1  app.whenu.com

127.0.0.1  bidtxt.whenu.com

127.0.0.1  clock.whenu.com

127.0.0.1  download.whenu.com

127.0.0.1  web.whenu.com

127.0.0.1  weather.whenu.com

127.0.0.1  whenushop.whenu.com

127.0.0.1  www.whenu.com #[SpySweeper.Adware.whenu]

127.0.0.1  www.whenudownloads.com

127.0.0.1  www.whenushop.com #[SiteAdvisor.whenushop.com]

127.0.0.1  whenusearch.com #[AdvWare.SaveNow.r]

# [Gamma Networking via Surfaccuracy][66.152.93.128 - 66.152.93.255]

127.0.0.1  www.accuracysurf.com

127.0.0.1  i-growth.com

127.0.0.1  igrowth.com

127.0.0.1  mediatraffic.com

127.0.0.1  cpcfeed.mediatraffic.com

127.0.0.1  cpvfeed.mediatraffic.com

127.0.0.1  www.mediatraffic.com

127.0.0.1  mediatrafficagency.com

127.0.0.1  mtagrowth.com

127.0.0.1  surfaccuracy.com

127.0.0.1  www.surfaccuracy.com #[Adware.SurfAccuracy]

127.0.0.1  surfingaccuracy.com

127.0.0.1  surfingtarget.com

127.0.0.1  surfingtarget.net

127.0.0.1  surfmatch.com

127.0.0.1  services.vombanetwork.com

# [Gamma Entertainment via various]

127.0.0.1  www.crunchgames.com

127.0.0.1  videostore.gammae.com

127.0.0.1  www.getweathercast.com #[Adware-Weathercast][Trojan.Win32.VB.fk]

127.0.0.1  akapp.memedia.com

127.0.0.1  offers.memedia.com

127.0.0.1  akapp.whenu.com

127.0.0.1  akdwl.whenu.com

127.0.0.1  akweb.whenu.com

127.0.0.1  offers.whenu.com #[a1401.x.akamai.net]

127.0.0.1  spapp.whenu.com

127.0.0.1  spweather.whenu.com

127.0.0.1  spweb.whenu.com #[a1401.x.akamai.net]

127.0.0.1  www.whenusearch.com #[SiteAdvisor.whenusearch.com][a731.x.akamai.net]

127.0.0.1  drm.ysbweb.com #[65181.vidlock.com]

# [GeMius]

127.0.0.1  hit.gemius.pl #[McAfee.Cookie-Gemius]

127.0.0.1  activeby.hit.gemius.pl

127.0.0.1  ad.hit.gemius.pl

127.0.0.1  adclick.hit.gemius.pl

127.0.0.1  adlt.hit.gemius.pl

127.0.0.1  adnet.hit.gemius.pl

127.0.0.1  advice.hit.gemius.pl

127.0.0.1  advicead.hit.gemius.pl

127.0.0.1  arbo.hit.gemius.pl

127.0.0.1  allegro.hit.gemius.pl

127.0.0.1  centrumcz.hit.gemius.pl

127.0.0.1  cz.hit.gemius.pl

127.0.0.1  delfilv.hit.gemius.pl

127.0.0.1  eniro.hit.gemius.pl

127.0.0.1  gaat.hit.gemius.pl

127.0.0.1  gabg.hit.gemius.pl

127.0.0.1  gadk.hit.gemius.pl

127.0.0.1  gadnet.hit.gemius.pl

127.0.0.1  gail.hit.gemius.pl

127.0.0.1  garu.hit.gemius.pl

127.0.0.1  gask.hit.gemius.pl

127.0.0.1  gazeta.hit.gemius.pl

127.0.0.1  gdecz.hit.gemius.pl

127.0.0.1  gg.hit.gemius.pl

127.0.0.1  idg.hit.gemius.pl

127.0.0.1  hr.hit.gemius.pl

127.0.0.1  hu.hit.gemius.pl

127.0.0.1  idm.hit.gemius.pl

127.0.0.1  intao.hit.gemius.pl

127.0.0.1  interia.hit.gemius.pl

127.0.0.1  kon.hit.gemius.pl

127.0.0.1  lt.hit.gemius.pl

127.0.0.1  o2.hit.gemius.pl

127.0.0.1  onet.hit.gemius.pl

127.0.0.1  opt.hit.gemius.pl

127.0.0.1  pracuj.hit.gemius.pl

127.0.0.1  pro.hit.gemius.pl

127.0.0.1  rbcgaru.hit.gemius.pl

127.0.0.1  seznam.hit.gemius.pl

127.0.0.1  spir.hit.gemius.pl

127.0.0.1  st.hit.gemius.pl

127.0.0.1  st1.hit.gemius.pl

127.0.0.1  std1.hit.gemius.pl #[SecuritySpace.WebBug]

127.0.0.1  stua.hit.gemius.pl

127.0.0.1  ua.hit.gemius.pl

127.0.0.1  wp.hit.gemius.pl

127.0.0.1  home.hit.stat.pl

127.0.0.1  onet.hit.stat.pl

127.0.0.1  s1.hit.stat.pl

127.0.0.1  s2.hit.stat.pl

127.0.0.1  s3.hit.stat.pl

127.0.0.1  s4.hit.stat.pl

127.0.0.1  sisco.hit.stat.pl

127.0.0.1  www.stat.pl

# [Geo Targeted Banner System][Nick Colton]

127.0.0.1  ads.adhall.com

127.0.0.1  abum.axelsfun.com

127.0.0.1  banner1.axelsfun.com

127.0.0.1  banner2.axelsfun.com

127.0.0.1  banner3.axelsfun.com

127.0.0.1  bannerus1.axelsfun.com #[Wildcard DNS]

127.0.0.1  bannerus2.axelsfun.com

127.0.0.1  bannerus3.axelsfun.com

127.0.0.1  crazyshit.axelsfun.com

127.0.0.1  etology.axelsfun.com

127.0.0.1  etology1.axelsfun.com

127.0.0.1  horoxxx.axelsfun.com

127.0.0.1  mrwally.axelsfun.com

127.0.0.1  nastyrat.axelsfun.com

127.0.0.1  p138920c.axelsfun.com

127.0.0.1  p144924c.axelsfun.com

127.0.0.1  p145083c.axelsfun.com

127.0.0.1  p165535.axelsfun.com

127.0.0.1  p171605.axelsfun.com

127.0.0.1  p174613c.axelsfun.com

127.0.0.1  p54883c.axelsfun.com

127.0.0.1  p64951c.axelsfun.com

127.0.0.1  rknet.axelsfun.com

127.0.0.1  sexyfunn.axelsfun.com

127.0.0.1  spasmo.axelsfun.com

127.0.0.1  taxidriver.axelsfun.com

127.0.0.1  ttiger.axelsfun.com

127.0.0.1  vasmedia.axelsfun.com

127.0.0.1  vogue007.axelsfun.com

127.0.0.1  xapster.axelsfun.com

# [Geonic.net][AS41867][195.62.36.0 - 195.62.37.255]

# [Gfx-cust-worldstream][AS16131][84.243.252.0 - 84.243.252.255]

127.0.0.1  staritquick.com #[server down?]

# [Gfx-cust-worldstream][84.243.253.0 - 84.243.253.255]

# [Global Compass][AS22653][69.61.0.0 - 69.61.127.255]

127.0.0.1  easyinvestment.info

127.0.0.1  kalinko.cn

127.0.0.1  mrodsd.cn

# [Global Compass via HITEXCHANGE]

127.0.0.1  hitexchange.net

127.0.0.1  gif.hitexchange.net

127.0.0.1  img.hitexchange.net

127.0.0.1  www.hitexchange.net

127.0.0.1  hitx.net

127.0.0.1  gif.hitx.net

127.0.0.1  www.hitx.net

# [Global Crossing][206.165.0.0 - 206.165.255.255]

127.0.0.1  www.clickaction.net

127.0.0.1  server2.discountclick.com

127.0.0.1  server2.internetdump.com

127.0.0.1  link.p0.com #[Web Bug][SiteAdvisor.p0.com]

# [Global Crossing][AS30407][64.212.0.0 - 64.215.255.255]

127.0.0.1  fast-antivirus.com

127.0.0.1  fastantivirus09.com

127.0.0.1  pay1.fastantivirus09.com

127.0.0.1  promo.fastantivirus09.com

127.0.0.1  secure.fastantivirus09.com

127.0.0.1  www.fastantivirus09.com

127.0.0.1  pay-virusshield.cn

127.0.0.1  prestotuneup.com

127.0.0.1  update1.prestotuneup.com

127.0.0.1  update2.prestotuneup.com

127.0.0.1  www.prestotuneup.com

127.0.0.1  viruscatcher.net

127.0.0.1  virus-catcher.net

# [Global Net Access via various][207.210.64.0 - 207.210.127.255]

127.0.0.1  2mytds.info

127.0.0.1  www.bbcsearch.net

127.0.0.1  www.winter-seek.com #[Spamdexing]

# [Global Net Access via various][216.180.224.0 - 216.180.255.255]

127.0.0.1  www.cpx24.com

127.0.0.1  www.newsitehits.com

127.0.0.1  ourbesthits.com

127.0.0.1  thebighits.com

127.0.0.1  www.upperhits.com

# [Global Net Access via various][63.247.64.0 - 63.247.95.255]

127.0.0.1  www.affhit.com

127.0.0.1  www.bbcseek.com

127.0.0.1  www.findppc.net

127.0.0.1  www.iseenew.com

127.0.0.1  www.touseek.com

# [Global Net Access via various][64.22.64.0 - 64.22.127.255]

127.0.0.1  www.dropdeadugly.com #[Malicious.Links.Zango]

# [Global Net Access via various][65.254.32.0 - 65.254.63.255]

127.0.0.1  www.cpxrevenue.com

127.0.0.1  www.dontsearchfind.com

127.0.0.1  www.fastfind7.com

# [Global Net Access via various][72.9.224.0 - 72.9.255.255]

127.0.0.1  flagcounter.com

# [Global Net Access via various][75.127.64.0 - 75.127.127.255]

127.0.0.1  www.statsmachine.com #[server down?]

# [GloboTech via Olexij Khrenov][AS23522][67.43.237.72 - 67.43.237.79]

127.0.0.1  dlmaldef09.com

# [Go2online Corp][AS7796][216.240.134.128 - 216.240.134.255]

127.0.0.1  adultporntubecouple.com

127.0.0.1  onlinescannersite9.com

127.0.0.1  protectedtds.name

127.0.0.1  starswowlove.com

127.0.0.1  tdsvassarium.com

127.0.0.1  trademegaporn.com

127.0.0.1  tubegroupies.com

# [Godaddy.com via various][208.109.0.0 - 208.109.255.255]

127.0.0.1  0fficial-page.com

127.0.0.1  www.1clickspyclean.com

127.0.0.1  codeads.com

127.0.0.1  www.codeads.com

127.0.0.1  www.crisystec.com #[Symantec.CrisysTecSentry]

127.0.0.1  egeosoftware.com #[Adware.Win32.Privacy Crusader]

127.0.0.1  www.egeosoftware.com #[SiteAdvisor.egeosoftware.com]

127.0.0.1  www.freehitwebsitecounter.com

127.0.0.1  www.freehitwebcounters.com

127.0.0.1  www.isnake.net #[Symantec.SpyViper][Spyware.ISnake]

127.0.0.1  www.milesdebanners.com

127.0.0.1  www.netsearch.cc #[Google.Warning]

127.0.0.1  profileawareness.com #[Trojan-Spy:JS/Spacestalk.A]

127.0.0.1  redemptionengine.com #[SiteAdvisor.redemptionengine.com]

127.0.0.1  www.redemptionengine.com

127.0.0.1  rewardsengine.com

127.0.0.1  www.rewardsengine.com

127.0.0.1  search-and-destroy.com #[Symantec.SearchAndDestroy]

127.0.0.1  www.search-and-destroy.com

# [Godaddy.com via various][64.202.160.0 - 64.202.191.255]

127.0.0.1  ms-mvp.org

127.0.0.1  www.ms-mvp.org

# [Godaddy.com via various][68.178.128.0 - 68.178.255.255]

127.0.0.1  www.useekcash.net

# [Godaddy.com via Aster Edward Umali][Azter Inc]][68.178.128.0 - 68.178.255.255]

127.0.0.1  www.azter.com #[SiteAdvisor.azter.com]

127.0.0.1  www.bestsexycelebs.com

127.0.0.1  www.bestcelebritylinks.com

127.0.0.1  www.hunkymalecelebs.com

127.0.0.1  missdanicapatrick.com

127.0.0.1  www.missdanicapatrick.com #[Win32/TrojanDownloader.Adload.NAY]

127.0.0.1  missjessicasimpson.com

127.0.0.1  www.missjessicasimpson.com #[W32/WinAd.GQ]

127.0.0.1  sexybabesx.com #[Win32/TrojanDownloader.Adload.NBH]

127.0.0.1  adrianalima.sexybabesx.com

127.0.0.1  aliciakeys.sexybabesx.com #[AdWare.Win32.WinAD.bv]

127.0.0.1  amandabynes.sexybabesx.com

127.0.0.1  angelina.sexybabesx.com

127.0.0.1  annakournikova.sexybabesx.com

127.0.0.1  annapaquin.sexybabesx.com

127.0.0.1  annehathaway.sexybabesx.com

127.0.0.1  ashanti.sexybabesx.com

127.0.0.1  ashleesimpson.sexybabesx.com

127.0.0.1  ashleyolsen.sexybabesx.com

127.0.0.1  audreytautou.sexybabesx.com

127.0.0.1  avrillavigne.sexybabesx.com

127.0.0.1  beyonce.sexybabesx.com

127.0.0.1  brianabanks.sexybabesx.com

127.0.0.1  britney.sexybabesx.com

127.0.0.1  brooke.sexybabesx.com

127.0.0.1  brookeburns.sexybabesx.com

127.0.0.1  cameron.sexybabesx.com

127.0.0.1  carmen.sexybabesx.com

127.0.0.1  charlizetheron.sexybabesx.com

127.0.0.1  christina.sexybabesx.com

127.0.0.1  christinaricci.sexybabesx.com

127.0.0.1  ciara.sexybabesx.com

127.0.0.1  danicapatrick.sexybabesx.com

127.0.0.1  danielahantuchova.sexybabesx.com

127.0.0.1  demimoore.sexybabesx.com

127.0.0.1  denise.sexybabesx.com

127.0.0.1  elishacuthbert.sexybabesx.com

127.0.0.1  emmawatson.sexybabesx.com

127.0.0.1  ericablasberg.sexybabesx.com

127.0.0.1  evagreen.sexybabesx.com

127.0.0.1  evalongoria.sexybabesx.com

127.0.0.1  gellar.sexybabesx.com

127.0.0.1  giselebundchen.sexybabesx.com

127.0.0.1  gwenstefani.sexybabesx.com

127.0.0.1  gwynethpaltrow.sexybabesx.com

127.0.0.1  halleberry.sexybabesx.com

127.0.0.1  heathergraham.sexybabesx.com

127.0.0.1  heatherlocklear.sexybabesx.com

127.0.0.1  heidiklum.sexybabesx.com

127.0.0.1  hilaryduff.sexybabesx.com

127.0.0.1  hilaryswank.sexybabesx.com

127.0.0.1  janetjackson.sexybabesx.com

127.0.0.1  jennajameson.sexybabesx.com

127.0.0.1  jenniferaniston.sexybabesx.com

127.0.0.1  jenniferellison.sexybabesx.com

127.0.0.1  jennifergarner.sexybabesx.com

127.0.0.1  jenniferlopez.sexybabesx.com

127.0.0.1  hewitt.sexybabesx.com

127.0.0.1  jessicaalba.sexybabesx.com

127.0.0.1  jessicabiel.sexybabesx.com

127.0.0.1  jessicasimpson.sexybabesx.com

127.0.0.1  jojo.sexybabesx.com

127.0.0.1  josiemaran.sexybabesx.com

127.0.0.1  jossstone.sexybabesx.com

127.0.0.1  juliaroberts.sexybabesx.com

127.0.0.1  juliastiles.sexybabesx.com

127.0.0.1  katebeckinsale.sexybabesx.com

127.0.0.1  katehudson.sexybabesx.com

127.0.0.1  katemoss.sexybabesx.com

127.0.0.1  katewinslet.sexybabesx.com

127.0.0.1  katieholmes.sexybabesx.com

127.0.0.1  keiraknightley.sexybabesx.com

127.0.0.1  kellyclarkson.sexybabesx.com

127.0.0.1  kristinkreuk.sexybabesx.com

127.0.0.1  leeleesobieski.sexybabesx.com

127.0.0.1  lindsay.sexybabesx.com #[Win32/Adware.WinAd]

127.0.0.1  livtyler.sexybabesx.com

127.0.0.1  lucyliu.sexybabesx.com

127.0.0.1  lucypinder.sexybabesx.com

127.0.0.1  madonna.sexybabesx.com

127.0.0.1  mandy.sexybabesx.com

127.0.0.1  sharapova.sexybabesx.com

127.0.0.1  mariahcarey.sexybabesx.com

127.0.0.1  marisamiller.sexybabesx.com

127.0.0.1  menasuvari.sexybabesx.com

127.0.0.1  michellerodriguez.sexybabesx.com

127.0.0.1  michellewie.sexybabesx.com #[Win32/TrojanDownloader.Adload.NAY]

127.0.0.1  milakunis.sexybabesx.com

127.0.0.1  millajovovich.sexybabesx.com

127.0.0.1  mischabarton.sexybabesx.com

127.0.0.1  monicabellucci.sexybabesx.com

127.0.0.1  naomicampbell.sexybabesx.com

127.0.0.1  naomiwatts.sexybabesx.com

127.0.0.1  nataliegulbis.sexybabesx.com

127.0.0.1  natalieportman.sexybabesx.com

127.0.0.1  nevecampbell.sexybabesx.com

127.0.0.1  nickyhilton.sexybabesx.com

127.0.0.1  nicolekidman.sexybabesx.com

127.0.0.1  nicolerichie.sexybabesx.com

127.0.0.1  nicolevaidisova.sexybabesx.com

127.0.0.1  pamela.sexybabesx.com

127.0.0.1  parishilton.sexybabesx.com

127.0.0.1  penelope.sexybabesx.com

127.0.0.1  rachelbilson.sexybabesx.com

127.0.0.1  rachelmcadams.sexybabesx.com

127.0.0.1  rachelstevens.sexybabesx.com

127.0.0.1  rachelweisz.sexybabesx.com

127.0.0.1  reese.sexybabesx.com

127.0.0.1  renee.sexybabesx.com

127.0.0.1  roselynsanchez.sexybabesx.com

127.0.0.1  salma.sexybabesx.com

127.0.0.1  samairearmstrong.sexybabesx.com

127.0.0.1  sandra.sexybabesx.com

127.0.0.1  saniamirza.sexybabesx.com

127.0.0.1  sashacohen.sexybabesx.com

127.0.0.1  scarlett.sexybabesx.com

127.0.0.1  selitaebanks.sexybabesx.com

127.0.0.1  serenawilliams.sexybabesx.com

127.0.0.1  shakira.sexybabesx.com

127.0.0.1  shannendoherty.sexybabesx.com

127.0.0.1  sharonstone.sexybabesx.com

127.0.0.1  sherylcrow.sexybabesx.com

127.0.0.1  siennamiller.sexybabesx.com

127.0.0.1  sophiabush.sexybabesx.com

127.0.0.1  stacykeibler.sexybabesx.com

127.0.0.1  terapatrick.sexybabesx.com

127.0.0.1  terihatcher.sexybabesx.com

127.0.0.1  thorabirch.sexybabesx.com

127.0.0.1  tyrabanks.sexybabesx.com

127.0.0.1  umathurman.sexybabesx.com

127.0.0.1  venuswilliams.sexybabesx.com

127.0.0.1  www.sexybabesx.com #[AVG.Generic.MUM]

# [Godaddy.com][AS26496][72.167.0.0 - 72.167.255.255]

127.0.0.1  www.adultads.biz

127.0.0.1  blogadswap.com

127.0.0.1  max.gunggo.com

127.0.0.1  tds.ibestadult.info

127.0.0.1  searchfu.info #[Malicious.Links.Codec]

127.0.0.1  shop-ads.com

127.0.0.1  smartnetads.com

127.0.0.1  www.tech-counter.com

127.0.0.1  www.wowchian.com #[Win32/PSW.Lineage.DN][W32.Looked.P]

# [Godaddy.com via various][97.74.0.0 - 97.74.255.255]

127.0.0.1  www.pay-ads.com

127.0.0.1  xoads.com

127.0.0.1  www.xoads.com

# [Godaddy.com via Andreas Pizsa]

127.0.0.1  www.behind-firewall.com #[AdWare.Win32.WebHancer.320]

127.0.0.1  www.firewall-tunnel.com

127.0.0.1  www.free-proxy.org

127.0.0.1  www.get-around-firwall.com

127.0.0.1  www.hide-ip.com

127.0.0.1  www.hopster.com #[AdWare.Win32.WebHancer.320]

127.0.0.1  www.http-proxy.com

127.0.0.1  www.http-tunnel.org

127.0.0.1  www.http-tunnel.net

127.0.0.1  www.http-tunneling.com

127.0.0.1  www.irc-proxy.com

127.0.0.1  www.kazaa-firewall.com

127.0.0.1  www.kazaa-proxy.com

127.0.0.1  www.kill-firewall.com

127.0.0.1  www.msn-firewall.com

127.0.0.1  www.msn-proxy.com

127.0.0.1  www.proxy-bypass.com

127.0.0.1  www.proxy-tunnel.com

127.0.0.1  www.socks-proxy.org

# [Gomin Beyer][AS13477][204.13.53.242 - 204.13.53.252]

127.0.0.1  www.emporn.com

127.0.0.1  servedby.fathomtech.com

127.0.0.1  www.freeblowjobvideos.us

127.0.0.1  www.mommaporn.com

127.0.0.1  www.pokemonporn.us #[Malicious.Links.Zango]

127.0.0.1  servedby.xcelltech.com

127.0.0.1  www.xcelltech.com

# [Google Inc]

127.0.0.1  domains.googlesyndication.com #[Parking Service]

127.0.0.1  pagead.googlesyndication.com

127.0.0.1  pagead2.googlesyndication.com #[Google AdWords]

127.0.0.1  adservices.google.com

127.0.0.1  video-stats.video.google.com

# 127.0.0.1  ssl.google-analytics.com #[disabled = Firefox issues]

127.0.0.1  www.google-analytics.com #[Google Analytics]

127.0.0.1  4.afs.googleadservices.com

127.0.0.1  feedads.googleadservices.com

127.0.0.1  imageads.googleadservices.com #[Ewido.TrackingCookie.Googleadservices]

127.0.0.1  pagead2.googleadservices.com

127.0.0.1  partner.googleadservices.com

127.0.0.1  www.googleadservices.com

127.0.0.1  apps5.oingo.com #[Microsoft.Typo-Patrol]

127.0.0.1  www.appliedsemantics.com

127.0.0.1  service.urchin.com #[Urchin Tracking Module]

# [Google via DoubleClick]

127.0.0.1  m1.au.2mdn.net

127.0.0.1  m1.emea.2mdn.net

127.0.0.1  m.de.2mdn.net

127.0.0.1  m1.2mdn.net #[a509.cd.akamai.net]

127.0.0.1  m3.2mdn.net

127.0.0.1  m.fr.2mdn.net

127.0.0.1  m.uk.2mdn.net

127.0.0.1  rmcdn.2mdn.net

127.0.0.1  rmcdn.f.2mdn.net

127.0.0.1  n339.asp-cc.com

127.0.0.1  cc-dt.com

127.0.0.1  ads.cc-dt.com

127.0.0.1  clickserve.cc-dt.com

127.0.0.1  creative.cc-dt.com

127.0.0.1  clickserve.dartsearch.net

127.0.0.1  clickserve.eu.dartsearch.net

127.0.0.1  clickserve.uk.dartsearch.net

127.0.0.1  doubleclick.net #[McAfee.Cookie-Doubleclick]

127.0.0.1  ad.doubleclick.net #[MVPS.Criteria]

127.0.0.1  ad2.doubleclick.net #[Panda.Spyware:Cookie/Doubleclick]

127.0.0.1  ad-yt-bfp.doubleclick.net

127.0.0.1  ad.3ad.doubleclick.net

127.0.0.1  ad.3au.doubleclick.net

127.0.0.1  ad.adx.doubleclick.net

127.0.0.1  ad.ae.doubleclick.net

127.0.0.1  ad.ar.doubleclick.net

127.0.0.1  ad.au.doubleclick.net

127.0.0.1  ad.be.doubleclick.net

127.0.0.1  ad.br.doubleclick.net #[SunBelt.DoubleClick]

127.0.0.1  ad.ca.doubleclick.net

127.0.0.1  ad.ch.doubleclick.net

127.0.0.1  ad.cl.doubleclick.net

127.0.0.1  ad.cn.doubleclick.net

127.0.0.1  ad.de.doubleclick.net #[Tenebril.Tracking.Cookie]

127.0.0.1  ad.dk.doubleclick.net

127.0.0.1  ad.es.doubleclick.net

127.0.0.1  ad.fi.doubleclick.net

127.0.0.1  ad.fr.doubleclick.net

127.0.0.1  ad.gr.doubleclick.net

127.0.0.1  ad.hk.doubleclick.net

127.0.0.1  ad.hu.doubleclick.net

127.0.0.1  ad.ie.doubleclick.net

127.0.0.1  ad.in.doubleclick.net

127.0.0.1  ad.jp.doubleclick.net

127.0.0.1  ad.kr.doubleclick.net

127.0.0.1  ad.it.doubleclick.net

127.0.0.1  ad.nl.doubleclick.net

127.0.0.1  ad.no.doubleclick.net

127.0.0.1  ad.nz.doubleclick.net

127.0.0.1  ad.pl.doubleclick.net

127.0.0.1  ad.pt.doubleclick.net

127.0.0.1  ad.ro.doubleclick.net

127.0.0.1  ad.ru.doubleclick.net

127.0.0.1  ad.se.doubleclick.net

127.0.0.1  ad.sg.doubleclick.net

127.0.0.1  ad.terra.doubleclick.net

127.0.0.1  ad.th.doubleclick.net

127.0.0.1  ad.tw.doubleclick.net

127.0.0.1  ad.uk.doubleclick.net

127.0.0.1  ad.us.doubleclick.net

127.0.0.1  ad.za.doubleclick.net

127.0.0.1  ad.n2434.doubleclick.net

127.0.0.1  amn.doubleclick.net

127.0.0.1  creatives.doubleclick.net

127.0.0.1  dfp.doubleclick.net

127.0.0.1  feedads.g.doubleclick.net

127.0.0.1  fls.doubleclick.net

127.0.0.1  googleads.g.doubleclick.net #[pagead-dclk.l.google.com]

127.0.0.1  ir.doubleclick.net

127.0.0.1  iv.doubleclick.net

127.0.0.1  ln.doubleclick.net #[Lycos]

127.0.0.1  m.doubleclick.net

127.0.0.1  m2.doubleclick.net

127.0.0.1  m.us.doubleclick.net

127.0.0.1  motifcdn.doubleclick.net

127.0.0.1  motifcdn2.doubleclick.net

127.0.0.1  n3285ad.doubleclick.net

127.0.0.1  n3349ad.doubleclick.net

127.0.0.1  n4052ad.doubleclick.net

127.0.0.1  n4061ad.doubleclick.net

127.0.0.1  n4403ad.doubleclick.net

127.0.0.1  n479ad.doubleclick.net

127.0.0.1  n609ad.doubleclick.net

127.0.0.1  optout.doubleclick.net

127.0.0.1  optimize.doubleclick.net

127.0.0.1  paypalssl.doubleclick.net

127.0.0.1  rd.intl.doubleclick.net

127.0.0.1  se1.doubleclick.net

127.0.0.1  s2.video.doubleclick.net

127.0.0.1  doubleclick.ne.jp

127.0.0.1  www3.doubleclick.net

127.0.0.1  www.doubleclick.net

127.0.0.1  doubleclick.com

127.0.0.1  ad.doubleclick.com

127.0.0.1  www2.doubleclick.com

127.0.0.1  www3.doubleclick.com

127.0.0.1  www.doubleclick.com

127.0.0.1  www.messagemedia.com

127.0.0.1  www.performics.com

127.0.0.1  doubleclick.shockwave.com

# [Gossamer Threads][208.70.244.0 - 208.70.247.255]

127.0.0.1  web.acumenpi.com #[AdvertPro]

127.0.0.1  mybrandcentral.com

127.0.0.1  serving.rpowermedia.com #[AdvertPro]

# [Gostats][67.15.149.160 - 67.15.149.191]

127.0.0.1  gostats.com

127.0.0.1  as.gostats.com

127.0.0.1  c1.gostats.com

127.0.0.1  c2.gostats.com #[SpySweeper.Spy.Cookie]

127.0.0.1  c3.gostats.com

127.0.0.1  c4.gostats.com #[Panda.Spyware:Cookie/GoStats]

127.0.0.1  ded.gostats.com

127.0.0.1  monster.gostats.com

127.0.0.1  gostats.ru

127.0.0.1  monster.gostats.ru

# [Grafix Internet B.v][AS16131][84.243.192.0 - 84.243.255.255]

127.0.0.1  hostnetpro.com

127.0.0.1  topworldnews.cn #[Spamdexing.Codec]

# [Grafix Internet B.v][AS16131][84.243.197.0 - 84.243.197.255]

127.0.0.1  sexybabes18.com #[Fake.PornTube.Codec]

127.0.0.1  www.sexybabes18.com

# [Greatnet New Media][AS13237][83.133.96.0 - 83.133.127.255]

127.0.0.1  advanedmalwarescanner.com

127.0.0.1  af9f1ed6408.com

127.0.0.1  af9f2206e6.com #[Win32/Donloz.CM]

127.0.0.1  allinternetfreebies.com

127.0.0.1  antiviruspaymentsystem.com

127.0.0.1  awardspacelooksbig.us

127.0.0.1  bestbuysoftwaresystem.com

127.0.0.1  bestwebsitesin2009.com

127.0.0.1  buy-online-software.com

127.0.0.1  secure.buy-online-software.com

127.0.0.1  fastsecurityupdateserver.com

127.0.0.1  goldeninternetsites.com

127.0.0.1  homeandofficefun.com

127.0.0.1  liveavantbrowser2.cn #[Google.Diagnostic]

127.0.0.1  liveinternetupdates.com

127.0.0.1  momentstohaveyou.cn

127.0.0.1  startupupdates.com

127.0.0.1  primetimeworldnews.com

127.0.0.1  tubepornvideobest.com #[FraudTool.Win32.PrivacyCenter]

127.0.0.1  tubepornvideobest.name

127.0.0.1  searchhott.com

127.0.0.1  securedonlinepayments.com

127.0.0.1  www.seo-hits.de

127.0.0.1  worldofwarcry.cn

# [Green-Acres Services]

127.0.0.1  123count.com #[SpySweeper.Spy.Cookie]

127.0.0.1  www.123count.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  www.123stat.com

127.0.0.1  web-stat.com #[SpySweeper.Spy.Cookie]

127.0.0.1  server3.web-stat.com

127.0.0.1  server4.web-stat.com

127.0.0.1  www.web-stat.com

127.0.0.1  count.webtrackingservices.com

127.0.0.1  seomatrix.webtrackingservices.com

# [Green Horse Corporation][Adware.TickerBar]

127.0.0.1  greenhorse.com

127.0.0.1  www.greenhorse.com #[SunBelt.Greenhorse]

127.0.0.1  tickerbar.info

127.0.0.1  graphics.tickerbar.info

# [Groupe Iweb Technologies via Iweb][64.15.155.224 - 64.15.155.255]

# [Groupe Iweb Technologies via Iweb][67.205.64.0 - 67.205.95.255]

# [Groupe Iweb Technologies via Individual][67.205.75.8 - 67.205.75.15]

# [Groupe Iweb Technologies via Individual][70.38.19.200 - 70.38.19.207]

127.0.0.1  anti-virus-1.info

# [Groupe Iweb Technologies][72.55.128.0 - 72.55.191.255]

127.0.0.1  www.freestat.ws

127.0.0.1  www.hiperstat.com

127.0.0.1  www.specialstat.com

127.0.0.1  stat.statistiche.ws

127.0.0.1  www.statistiche.ws

127.0.0.1  stat.superstat.info

127.0.0.1  www.superstat.info

127.0.0.1  www.top100.ws

# [Haldex Ltd][213.174.136.0 - 213.174.139.255]

127.0.0.1  fttcj.com

127.0.0.1  teens24h.com

# [Haldex Ltd][213.174.140.0 - 213.174.143.255]

127.0.0.1  www.bannerpromotion.it

127.0.0.1  tas2.toboads.si

127.0.0.1  upads.info

127.0.0.1  static.upads.info

# [Haldex Ltd][88.208.0.0 - 88.208.31.255]

127.0.0.1  adulttraffic.ru

127.0.0.1  clickcashmoney.com #[Malicious.Links.Codec]

127.0.0.1  www.clickcashmoney.com

127.0.0.1  extreme-mpeg.com #[Malicious.Links]

127.0.0.1  inookey.com

127.0.0.1  dizzi.kwot.biz

127.0.0.1  virus.kwot.biz

127.0.0.1  mytraff.com

127.0.0.1  popup2m.com

127.0.0.1  code.popup2m.com

127.0.0.1  s0.popup2m.com

127.0.0.1  porntube-vip.com #[Trojan.Win32.Obfuscated.gx]

127.0.0.1  www.porntube-vip.com

127.0.0.1  www2.porntube-vip.com #[Win32/TrojanDownloader.FakeAlert.IQ]

127.0.0.1  rb-net.com

127.0.0.1  xexexe.info

127.0.0.1  ads.xhamster.com

127.0.0.1  m2.xhamster.com

127.0.0.1  partners.xhamster.com

# [Hans-Ingvar Hansson][Domännamn Inv]

127.0.0.1  41298.www1.elwisp.com

127.0.0.1  69360.www1.elwisp.com #[Wildcard DNS]

127.0.0.1  epl.www2.elwisp.com #[Trojan-Downloader.Win32.Small.afa]

127.0.0.1  540.filost.com

127.0.0.1  www.filost.com

127.0.0.1  www.free6.se #[HJTH.Adult Dialer]

127.0.0.1  gnura.com #[HJTH.Adult Dialer]

127.0.0.1  www.gnura.com

127.0.0.1  www7.logih.com #[eTrust.Win32/Pomelo]

127.0.0.1  205.www1.p0rt2.com

127.0.0.1  1047.www1.p0rt2.com

127.0.0.1  1866.www1.p0rt2.com

127.0.0.1  11968.www1.p0rt2.com

127.0.0.1  22022.www1.p0rt2.com

127.0.0.1  24419.www1.p0rt2.com

127.0.0.1  27242.www1.p0rt2.com

127.0.0.1  41363.www1.p0rt2.com

127.0.0.1  46498.www2.p0rt2.com #[TR/Dldr.Mediket.DI]

127.0.0.1  49234.www2.p0rt2.com

127.0.0.1  49595.www1.p0rt2.com

127.0.0.1  63138.www1.p0rt2.com #[AdWare.Win32.Mirar.a]

127.0.0.1  65916.www1.p0rt2.com

127.0.0.1  71474.www1.p0rt2.com

127.0.0.1  74204.www1.p0rt2.com

127.0.0.1  79600.www1.p0rt2.com

127.0.0.1  81882.www1.p0rt2.com

127.0.0.1  92654.www1.p0rt2.com

127.0.0.1  95494.www1.p0rt2.com

127.0.0.1  97178.www1.p0rt2.com #[Wildcard DNS]

127.0.0.1  bbdl.www2.p0rt2.com #[MHTMLRedir.Exploit]

127.0.0.1  www.www2.p0rt2.com #[Trojan.Win32.LipGame.i][TR/Dldr.Agen.nv.4.B]

127.0.0.1  www.pornogames.net

127.0.0.1  540.scmg.net

127.0.0.1  www.scmg.net

127.0.0.1  www.sejers.com

# [Hefei-qingyi-jiayuan-corp][218.106.90.128 - 218.106.90.255]

# [Hetzner Online][AS24940][213.133.96.0 - 213.133.111.255]

# [Hetzner Online][78.46.0.0 - 78.47.255.255]

127.0.0.1  secure.arpayment.com

127.0.0.1  av-cash.com

127.0.0.1  park.beenetworks.net

127.0.0.1  coreguard2009.biz

127.0.0.1  coreguard2009.com

127.0.0.1  coreguard2009.net #[Win32/Adware.CoreguardAntivirus]

127.0.0.1  core-guard-antivirus.com

127.0.0.1  einfachstarten.com #[Trojan.Firpage]

127.0.0.1  fullprotect.org

127.0.0.1  gilded-youth.com

127.0.0.1  loyalbox.biz

127.0.0.1  porno-tube-xxx.us

127.0.0.1  www2.stats4free.de

127.0.0.1  www.stats4free.de

127.0.0.1  truconv.com

# [Hetzner Online][85.10.192.0 - 85.10.255.255]

127.0.0.1  pnfzetnax.net

127.0.0.1  you-adult-tube.co.cc

# [Hetzner-rz-nbg-net][AS24940][78.46.32.0 - 78.46.63.255]

127.0.0.1  v1.adwarefeed.com

127.0.0.1  reliefppc.com

# [Hetzner-rz-nbg-net][AS24940][88.198.0.0 - 88.198.15.255]

127.0.0.1  cosmotraf.net

127.0.0.1  hitoptimist.com

127.0.0.1  hit-detect.com #[server down?]

127.0.0.1  offer-provider.com

127.0.0.1  statisticsishere.com #[server down?]

127.0.0.1  ydmstats.com

# [Hetzner Online][88.198.0.0 - 88.198.255.255]

127.0.0.1  www.sitecounter.be

# [Hichina][218.244.128.0 - 218.244.159.255]

# [Hinet via Yi-fong-mantel-i-cy][59.125.229.64 - 59.125.229.95]

127.0.0.1  daratop.cn #[Win32/Wigon.JN]

# [Hiskyhost][AS43355][78.108.177.0 - 78.108.177.255]

# [Hivelocity Ventures][AS29802][69.46.0.0 - 69.46.31.255]

127.0.0.1  download-everything.com

127.0.0.1  www.italiahard.it #[NOD32.Win32/Dialer.HZ]

127.0.0.1  quickstatistic.com #[Spamdexing]

127.0.0.1  seobox.net #[Spamdexing.Codec]

# [Hizmetleri Ltd][77.92.131.0 - 77.92.131.255]

127.0.0.1  adserver1.adtech.com.tr

127.0.0.1  ad.garantiarkadas.com

127.0.0.1  adstest.reklamstore.com

127.0.0.1  banner.ringofon.com

127.0.0.1  adtech.sabitreklam.com

# [Hknet Company][AS4645][203.169.160.0 - 203.169.191.255]

# [Hollywood Interactive][AS7796][64.27.0.0 - 64.27.31.255]

127.0.0.1  allinsearch.net #[klikadvertising]

127.0.0.1  alwebsearch.info #[Google.Warning]

127.0.0.1  media.baventures.com

127.0.0.1  www.cuterussianboys.com #[Google.Warning]

127.0.0.1  digitalsearchgroup.net

127.0.0.1  www.eshopads2.com

127.0.0.1  e-tst.com #[Malicious.Links.Codec]

127.0.0.1  www.e-tst.com

127.0.0.1  fast-skan-av-pc.com

127.0.0.1  www.linkbucks.com

127.0.0.1  livehomesearch.info #[klikadvertising]

127.0.0.1  richtraf.com

127.0.0.1  rico02.com

127.0.0.1  rts.sparkstudios.com

127.0.0.1  stolnik.net

127.0.0.1  tube-teen-xxl.net

127.0.0.1  tube-xxl-dudes.com

127.0.0.1  youtube-top-video.com

# [HOMESTEAD]

127.0.0.1  stats.homestead.com

127.0.0.1  track.homestead.com

127.0.0.1  track2.homestead.com

# [Hong Kong Limited][202.83.192.0 - 202.83.223.255]

127.0.0.1  adc1.mingpao.com

# [Hopone Internet][AS14361][209.160.0.0 - 209.160.79.255]

127.0.0.1  baran-eblan.info

127.0.0.1  bestsites.net.ru

127.0.0.1  ad.db3nf.com

127.0.0.1  sales.getpaymentform.com

127.0.0.1  www.hyperwebads.com

127.0.0.1  go.jetswap.com

127.0.0.1  killspy.net #[Symantec.AntiVirusPro]

127.0.0.1  www.killspy.net

127.0.0.1  nicehunt.com

127.0.0.1  www.pornvideo1.com

127.0.0.1  sexbases.cn #[Google.Diagnostic]

127.0.0.1  tracksy.com

# [Hopone Internet via IT Developers]

127.0.0.1  bagtitle.cn

127.0.0.1  congratulatetrap.cn

127.0.0.1  crimesacrifice.cn

127.0.0.1  coughribboncurtain.cn

127.0.0.1  deservesnakesolve.cn

127.0.0.1  disappointrub.cn

127.0.0.1  disappointnurse.ln.cn

127.0.0.1  earnesttube.cn

127.0.0.1  efficientlidattend.qh.cn

127.0.0.1  furtoysour.cn

127.0.0.1  humbleprompt.cn

127.0.0.1  immensebowl.cn

127.0.0.1  leftweigh.cn

127.0.0.1  mixexaminationcrime.cn

127.0.0.1  motiontrickdespair.cn

127.0.0.1  otherwisehurryhay.cn

127.0.0.1  pinkstain.cn

127.0.0.1  pumpinside.cn

127.0.0.1  rakeaunt.cn

127.0.0.1  repairfeedanger.cn

127.0.0.1  rescueapartaccident.cn

127.0.0.1  seizeoriginstrap.cn

127.0.0.1  shieldelastictip.cn

127.0.0.1  sinceredisgustshield.cn

127.0.0.1  smoothquart.cn

127.0.0.1  sourresponsible.cn

127.0.0.1  splitinstantsauce.cn #[Spamdexing.Codec]

127.0.0.1  steepremindtame.cn

127.0.0.1  stuffmurderahead.cn

127.0.0.1  suspectencourage.cn

127.0.0.1  swallowflashdull.cn

127.0.0.1  taxiwhistle.cn

127.0.0.1  thinuniverseawkward.cn

127.0.0.1  tightabsencesmooth.cn

127.0.0.1  tightsolemnashamed.cn

127.0.0.1  weatherdesk.cn

127.0.0.1  wreckrulerupright.cn

# [Hopone Internet][209.61.192.0 - 209.61.255.255]

127.0.0.1  adserve.adtoll.com

# [Hopone Internet][66.235.160.0 - 66.235.191.255]

127.0.0.1  eroshere.net #[klikadvertising]

127.0.0.1  findnolimits.com #[Google.Diagnostic]

127.0.0.1  foundguide.com

127.0.0.1  freegroupvideo.us #[Google.Diagnostic]

127.0.0.1  quicksearchnet.com

# [Hopone Internet][AS14361][66.36.224.0 - 66.36.255.255]

127.0.0.1  amateurvids.ru #[Fake.PornTube.Codec]

127.0.0.1  amateursvideo.ru

127.0.0.1  search-rc.org

127.0.0.1  testdomen.com #[Spamdexing.Codec]

# [Hostforweb][205.234.134.0 - 205.234.134.255]

127.0.0.1  newsvr.info #[Malicious.Links]

127.0.0.1  www.newsvr.info

127.0.0.1  search11.info

127.0.0.1  sutra2s.info

# [Hostforweb][64.202.123.0 - 64.202.123.255]

127.0.0.1  highpro1.com

# [Hostforweb][66.225.211.0 - 66.225.221.255]

127.0.0.1  2k-sex.com #[Porn-Dialer.Win32.Madial.a]

127.0.0.1  www.freeteensets.com #[Spamdexing]

127.0.0.1  greytloo.com

# [Hosting Consulting][64.7.203.0 - 64.7.203.255]

127.0.0.1  promos.fling.com

127.0.0.1  track.fling.com

127.0.0.1  promos.naked.com

127.0.0.1  banners.sublimedirectory.com

# [Hosting and Colocation][213.248.48.0 - 213.248.63.255]

127.0.0.1  www.winneronline.ru #[Javascript.Exploit]

# [Hosting and Colocation][AS12695][89.208.144.0 - 89.208.159.255]

127.0.0.1  1under.ru

127.0.0.1  lycosu.com

127.0.0.1  oneund.ru

127.0.0.1  go.oneund.ru

# [Hosting Centre][AS41126][89.111.176.0 - 89.111.176.31]

127.0.0.1  trustedtop10.com #[Google.Diagnostic]

127.0.0.1  update-activex.com

# [Hosting Service Provider][217.170.77.0 - 217.170.77.255]

# [Hosting Solutions][69.64.32.0 - 69.64.63.255]

127.0.0.1  advanced-anti-virus.com

127.0.0.1  advanced-antivirus.com

127.0.0.1  antimalwarewarrior2009.com

127.0.0.1  antivirus-buy1.com

127.0.0.1  antivirus-cs1.com

127.0.0.1  antivirus-cs2.com

127.0.0.1  antivirus-cs3.com

127.0.0.1  antivirus-cs4.com

127.0.0.1  antivirus-cs5.com

127.0.0.1  antivirus-cs6.com

127.0.0.1  antivirus-cs7.com

127.0.0.1  antivirus-cs8.com

127.0.0.1  antivirus-cs9.com

127.0.0.1  antivirus-cs10.com

127.0.0.1  antivirus-cs11.com

127.0.0.1  antivirus-cs12.com

127.0.0.1  antivirus-cs13.com

127.0.0.1  antivirus-cs14.com

127.0.0.1  antivirus-cs15.com

127.0.0.1  antivirusmaster2009.com

127.0.0.1  antivirus-research-lab.com

127.0.0.1  megantivirus2009.com

127.0.0.1  micro-antivirus2008.com

127.0.0.1  www.small-tool.net #[Monitor.Win32.RemoteWatch.a]

127.0.0.1  www.smalltool.net #[Adware/LoopAd]

127.0.0.1  superantivirus2009.com

127.0.0.1  ultimate-anti-virus.com

# [Hosting Solutions via D Chemirtan]

127.0.0.1  adwaredollars.com

127.0.0.1  www.adwaredollars.com

127.0.0.1  www.allworldstars.net

127.0.0.1  imupdates.net #[IM-Worm.TopInstalls.A]

127.0.0.1  www.imupdates.net

127.0.0.1  theinstalls.com

127.0.0.1  www.theinstalls.com

# [Hostpro Hosting][AS15497][62.149.18.0 - 62.149.19.255]

127.0.0.1  adsclick.org

127.0.0.1  www.adsclick.org

127.0.0.1  grandtraff.com #[Google.Diagnostic]

127.0.0.1  paytraff.biz #[Google.Diagnostic]

# [Host-system-net][AS43355][78.108.185.0 - 78.108.185.255]

127.0.0.1  antium.info

127.0.0.1  imageswindows.com

# [HOTLOG][eTrust Tracking.Cookie]

127.0.0.1  click.hotlog.ru

127.0.0.1  hit.hotlog.ru #[SecuritySpace.WebBug]

127.0.0.1  hit1.hotlog.ru

127.0.0.1  hit2.hotlog.ru

127.0.0.1  hit3.hotlog.ru

127.0.0.1  hit4.hotlog.ru

127.0.0.1  hit5.hotlog.ru

127.0.0.1  hit6.hotlog.ru

127.0.0.1  hit7.hotlog.ru

127.0.0.1  hit8.hotlog.ru #[SpySweeper.Spy.Cookie]

127.0.0.1  hit9.hotlog.ru

127.0.0.1  hit10.hotlog.ru

127.0.0.1  hit11.hotlog.ru

127.0.0.1  hit12.hotlog.ru

127.0.0.1  hit13.hotlog.ru #[SunBelt.HotLog.ru]

127.0.0.1  hit14.hotlog.ru

127.0.0.1  hit15.hotlog.ru

127.0.0.1  hit16.hotlog.ru

127.0.0.1  hit17.hotlog.ru

127.0.0.1  hit18.hotlog.ru

127.0.0.1  hit19.hotlog.ru

127.0.0.1  hit20.hotlog.ru

127.0.0.1  hit21.hotlog.ru

127.0.0.1  hit22.hotlog.ru

127.0.0.1  hit23.hotlog.ru

127.0.0.1  hit24.hotlog.ru

127.0.0.1  hit25.hotlog.ru

127.0.0.1  hit26.hotlog.ru

127.0.0.1  hit27.hotlog.ru

127.0.0.1  hit28.hotlog.ru

127.0.0.1  hit29.hotlog.ru

127.0.0.1  hit30.hotlog.ru

127.0.0.1  hitsrv228.hotlog.ru

127.0.0.1  img.hotlog.ru

127.0.0.1  www.hotlog.ru

# [Hula Direct]

127.0.0.1  www.4netrevenue.com

127.0.0.1  www.looking-younger.com

# [Hyperbanner Accordnet Ltd][216.200.199.0 - 216.200.199.255]

127.0.0.1  ads.bidvertiser.com

127.0.0.1  bdv.bidvertiser.com

127.0.0.1  www.bidvertiser.com #[SiteAdvisor.Bidvertiser]

127.0.0.1  ads05.bpath.com

127.0.0.1  ads06.bpath.com

127.0.0.1  ads07.bpath.com #[SunBelt.BPath.com]

127.0.0.1  ads08.bpath.com

127.0.0.1  ads09.bpath.com

127.0.0.1  ads10.bpath.com

127.0.0.1  ads12.bpath.com

127.0.0.1  ads13.bpath.com

127.0.0.1  ads14.bpath.com

127.0.0.1  ads15.bpath.com #[SpySweeper.Spy.Cookie]

127.0.0.1  ads16.bpath.com

127.0.0.1  ads17.bpath.com

127.0.0.1  ads18.bpath.com

127.0.0.1  ads19.bpath.com

127.0.0.1  ads20.bpath.com #[Tenebril.Tracking.Cookie]

127.0.0.1  ads21.bpath.com

127.0.0.1  ads22.bpath.com

127.0.0.1  ads23.bpath.com

127.0.0.1  ads24.bpath.com

127.0.0.1  ads25.bpath.com

127.0.0.1  ads26.bpath.com

127.0.0.1  ads27.bpath.com

127.0.0.1  ads28.bpath.com

127.0.0.1  ads49.bpath.com

127.0.0.1  australia.bpath.com

127.0.0.1  holland.bpath.com

127.0.0.1  spms.bpath.com

127.0.0.1  usa.bpath.com

127.0.0.1  www.bpath.com

# [ICommerce Solutions][MK Digital Media][IMPRO CORPORATION]

127.0.0.1  cameup.com #[MHTMLRedir.Exploit]

127.0.0.1  www.cameup.com

127.0.0.1  www.digimedia.com #[Wishbone.com]

127.0.0.1  icommerce.ws #[Malicious.Links]

127.0.0.1  www.icommerce.ws #[MHTMLRedir.Exploit]

127.0.0.1  www.mk-digital.com

127.0.0.1  northvip.com #[Spamdexing]

# [ICS Entertainment, Inc]

127.0.0.1  ctc.amateurpages.com

127.0.0.1  clicks.asianamateurpages.com

127.0.0.1  cashtour.com

127.0.0.1  www.cashtour.com

127.0.0.1  ad.erasercash.com #[SunBelt.Erasercash]

127.0.0.1  www.erasercash.com

# [iDownload][Click Feel Media]

127.0.0.1  032439.com

127.0.0.1  80gw6ry3i3x3qbrkwhxhw.032439.com #[Wildcard DNS]

127.0.0.1  1188224372.com

127.0.0.1  124365.com

127.0.0.1  202124388.com

127.0.0.1  79452436.com

127.0.0.1  82430.com

127.0.0.1  82435.com

127.0.0.1  z166o1s1kfkha8gsnfm9gq.82435.com #[SiteAdvisor.sexybabesx.com]

127.0.0.1  872435.com

127.0.0.1  924329928.com #[Command Desktop Advertising]

127.0.0.1  command.adservs.com #[c2.mii.instacontent.net][AdWare.Win32.MDH.e]

127.0.0.1  csx.adservs.com #[Norman.W32/Downloader]

127.0.0.1  csxiwwwcom.net

127.0.0.1  e8675309.com

127.0.0.1  ekads.com

127.0.0.1  equalitylinks.net

127.0.0.1  www.errordns.com

127.0.0.1  www.findstuffsearch.com

127.0.0.1  idbl.idblg.com

127.0.0.1  auto.isearch.com #[Parasite.Pugi/iSearch][c2.mii.instacontent.net]

127.0.0.1  auto.origin.isearch.com

127.0.0.1  content.isearch.com #[c2.mii.instacontent.net]

127.0.0.1  dist.isearch.com #[Wildcard DNS]

127.0.0.1  toolbar.isearch.com #[MHTMLRedir.Exploit][Spyware.ISearch]

127.0.0.1  www.isearch.com #[ADW_ISEARCH.A][SPYW_DESKTOPS.11]

127.0.0.1  nutpond.com

127.0.0.1  www.popblocker.com

127.0.0.1  tilde75.com

# [iEntry Inc]

127.0.0.1  aj.600z.com

127.0.0.1  text-link-ads.ientry.com

127.0.0.1  action.ientry.net

127.0.0.1  aj.ientry.net

127.0.0.1  ca.ientry.net

127.0.0.1  img1.ientry.net

127.0.0.1  tracking.ientry.net

# [Ieurop Sas Network][82.196.5.0 - 82.196.5.255]

127.0.0.1  ad.ieurop.net

127.0.0.1  i-stats.ieurop.net

127.0.0.1  ad.ifrance.com

127.0.0.1  ciscom1.iquebec.com #[Spamdexing]

# [Igor Nechiporuk / Nadiya Kopulec][AS41665][78.109.20.48 - 78.109.20.55]

127.0.0.1  broken-tv.com

127.0.0.1  exclusivestarvideo.com

127.0.0.1  newhotvid.com #[Google.Diagnostic]

127.0.0.1  non-stop-news.com

127.0.0.1  online-tv-here.com #[Google.Diagnostic]

127.0.0.1  onlyhotvideos.com

127.0.0.1  ontv-news.com

127.0.0.1  qxxp.us #[Spamdexing.Codec]

127.0.0.1  sowonder.net

127.0.0.1  tv-news.info

127.0.0.1  usatvshows.us

127.0.0.1  video-sensation.com

127.0.0.1  xvids-db.com

# [Ilissos][EyeBlaster][eTrust.BS.Serving-Sys]

127.0.0.1  ds.eyeblaster.com #[SunBelt.Eyeblaster][a158.x.akamai.net]

127.0.0.1  activity.serving-sys.com

127.0.0.1  bs.serving-sys.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  datacapture.serving-sys.com

127.0.0.1  ds.serving-sys.com #[Ewido.TrackingCookie.Serving-sys][a158.x.akamai.net]

127.0.0.1  ds-ll.serving-sys.com #[eyeblas.vo.llnwd.net]

# [ImagineNET]

127.0.0.1  www1.3dstats.com

127.0.0.1  www.3dstats.com

127.0.0.1  addfreestats.com #[SecuritySpace.WebBug]

127.0.0.1  top.addfreestats.com

127.0.0.1  www.addfreestats.com

127.0.0.1  www1.addfreestats.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  www2.addfreestats.com

127.0.0.1  www3.addfreestats.com

127.0.0.1  www4.addfreestats.com #[eTrust.Tracking.Cookie]

127.0.0.1  www5.addfreestats.com

127.0.0.1  www6.addfreestats.com

127.0.0.1  www7.addfreestats.com

127.0.0.1  www8.addfreestats.com

# [Imperial e-club Limited]

127.0.0.1  banner.casinodelrio.com

127.0.0.1  banner.casinotropez.com #[Adware.Casino]

127.0.0.1  www.casinotropez.com #[Ewido.TrackingCookie.Casinotropez]

127.0.0.1  banner.europacasino.com

127.0.0.1  cachebanner.europacasino.com #[p.mii.instacontent.net]

127.0.0.1  cachewww.europacasino.com #[p.mii.instacontent.net]

127.0.0.1  banner.titanpoker.com #[Adware.Casino]

127.0.0.1  cachebanner.titanpoker.com #[p.mii.instacontent.net]

127.0.0.1  banner.vegasred.com #[Ewido.TrackingCookie.Vegasred]

127.0.0.1  cachebanner.vegasred.com #[p.mii.instacontent.net]

# [Impliweb][AS46475][69.162.75.0 - 69.162.75.31]

127.0.0.1  www.dailyhugemovs.com

# [IMR Worldwide][Nielsen/NetRatings]

127.0.0.1  measurement.redsheriff.com

127.0.0.1  www.redsheriff.com

127.0.0.1  www.RedSheRRif.com

127.0.0.1  devfw.imrworldwide.com

127.0.0.1  lycos-eu.imrworldwide.com

127.0.0.1  ninemsn.imrworldwide.com

127.0.0.1  secure-asia.imrworldwide.com

127.0.0.1  secure-au.imrworldwide.com

127.0.0.1  secure-cn.imrworldwide.com #[NNR Site Census]

127.0.0.1  secure-dk.imrworldwide.com

127.0.0.1  secure-it.imrworldwide.com

127.0.0.1  secure-sg.imrworldwide.com #[SunBelt.IMRworldwide]

127.0.0.1  secure-jp.imrworldwide.com

127.0.0.1  secure-nz.imrworldwide.com

127.0.0.1  secure-uk.imrworldwide.com

127.0.0.1  secure-us.imrworldwide.com

127.0.0.1  secure-za.imrworldwide.com

127.0.0.1  server-au.imrworldwide.com

127.0.0.1  server-br.imrworldwide.com

127.0.0.1  server-by.imrworldwide.com

127.0.0.1  server-de.imrworldwide.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  server-dk.imrworldwide.com

127.0.0.1  server-ee.imrworldwide.com

127.0.0.1  server-fi.imrworldwide.com

127.0.0.1  server-it.imrworldwide.com

127.0.0.1  server-jp.imrworldwide.com

127.0.0.1  server-lv.imrworldwide.com

127.0.0.1  server-lt.imrworldwide.com

127.0.0.1  server-no.imrworldwide.com

127.0.0.1  server-nz.imrworldwide.com

127.0.0.1  server-oslo.imrworldwide.com

127.0.0.1  server-pl.imrworldwide.com

127.0.0.1  server-se.imrworldwide.com

127.0.0.1  server-sg.imrworldwide.com

127.0.0.1  server-stockh.imrworldwide.com

127.0.0.1  server-uk.imrworldwide.com

127.0.0.1  server-us.imrworldwide.com

127.0.0.1  survey1-au.imrworldwide.com

127.0.0.1  telstra.imrworldwide.com

127.0.0.1  www.imrworldwide.com #[McAfee.Cookie-Imrworldwide]

# [Inet-Traffic, Inc]

127.0.0.1  www.freehomepages.com

127.0.0.1  www.gameroom.com

127.0.0.1  www.inet-clix.com #[eTrust.Searchit][Wildcard DNS]

127.0.0.1  inet-traffic.com

127.0.0.1  ads.inet-traffic.com

127.0.0.1  banner1.inet-traffic.com

127.0.0.1  banner2.inet-traffic.com #[SpySweeper.Spy.Cookie]

127.0.0.1  banner3.inet-traffic.com

127.0.0.1  delivery.inet-traffic.com #[Parasite.Pugi][Adware.IntDel]

127.0.0.1  phplive.inet-traffic.com

127.0.0.1  www.inet-traffic.com

127.0.0.1  searchit.com #[Parasite.Pugi][McAfee.Adware-SearchIt]

127.0.0.1  news.searchit.com

127.0.0.1  toolbar.searchit.com #[SunBelt.SearchIt Toolbar]

127.0.0.1  www.searchit.com #[Spyware.IEToolbar]

# [Infomove Limited][119.42.144.0 - 119.42.151.255]

# [Infinite Innovations][Adware.BrowserAid]

127.0.0.1  browseraid.com

127.0.0.1  pops.browseraid.com

127.0.0.1  st.browseraid.com #[WebDownloader]

127.0.0.1  updates.browseraid.com

127.0.0.1  uptodate.browseraid.com #[App/QuickL-A]

127.0.0.1  www.browseraid.com #[ADW_BROWSERAID.E]

127.0.0.1  www.quicklaunch.com

127.0.0.1  searchandclick.com

127.0.0.1  search.searchandclick.com

127.0.0.1  www.searchandclick.com

127.0.0.1  startium.com

127.0.0.1  search.startium.com

127.0.0.1  www.startium.com

# [Innovation It][67.228.137.0 - 67.228.137.31]

127.0.0.1  e-biznesman.ru #[Javascript.Exploit]

# [Innovation It][67.228.139.0 - 67.228.139.127]

# [Innovation It][AS19318][69.10.44.192 - 69.10.44.223]

# [Innovation It][AS36351][74.86.149.176 - 74.86.149.183]

127.0.0.1  maxitraffforme.com #[Google.Diagnostic]

# [Innovation It][75.126.142.96 - 75.126.142.111]

127.0.0.1  video-go.net #[Google.Diagnostic]

# [Innovation It][75.126.236.0 - 75.126.236.31]

# [Innovation It][75.126.3.176 - 75.126.3.191]

127.0.0.1  val17.com

127.0.0.1  xxx-wall.com

127.0.0.1  www.xxx-wall.com

# [Innovation It][75.126.74.176 - 75.126.74.191]

# [InsightExpress, LLC]

127.0.0.1  ad.insightexpress.com

127.0.0.1  invite.insightexpress.com

127.0.0.1  www.insightexpress.com #[Lavasoft.BannedSite]

127.0.0.1  ad.insightexpressai.com #[SiteAdvisor.insightexpressai.com]

127.0.0.1  ai003.insightexpressai.com #[TrendMicro.Internet Cookie]

127.0.0.1  ai004.insightexpressai.com

127.0.0.1  ai005.insightexpressai.com #[McAfee.Cookie-Insightexpres]

127.0.0.1  ai006.insightexpressai.com

127.0.0.1  ai007.insightexpressai.com

127.0.0.1  ai008.insightexpressai.com

127.0.0.1  ai009.insightexpressai.com

127.0.0.1  ai010.insightexpressai.com

127.0.0.1  ai011.insightexpressai.com

127.0.0.1  ai017.insightexpressai.com

127.0.0.1  ai020.insightexpressai.com

127.0.0.1  ai022.insightexpressai.com

127.0.0.1  ai026.insightexpressai.com

127.0.0.1  ai030.insightexpressai.com

127.0.0.1  ai031.insightexpressai.com

127.0.0.1  ai036.insightexpressai.com

127.0.0.1  ai048.insightexpressai.com

127.0.0.1  ai053.insightexpressai.com

127.0.0.1  ai056.insightexpressai.com

127.0.0.1  ai057.insightexpressai.com

127.0.0.1  ai059.insightexpressai.com

127.0.0.1  ai063.insightexpressai.com

127.0.0.1  ai066.insightexpressai.com

127.0.0.1  ai067.insightexpressai.com

127.0.0.1  ai076.insightexpressai.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  ai078.insightexpressai.com #[SiteAdvisor.aim.com]

127.0.0.1  ai102.insightexpressai.com

127.0.0.1  ai131.insightexpressai.com

127.0.0.1  ai631.insightexpressai.com

127.0.0.1  ai637.insightexpressai.com

127.0.0.1  ai676.insightexpressai.com

127.0.0.1  ai694.insightexpressai.com

127.0.0.1  icompass.insightexpressai.com

127.0.0.1  core.insightexpressai.com

127.0.0.1  rb.insightexpressai.com

127.0.0.1  insightexpresserdd.com #[SiteAdvisor.galttech.com]

# [InterActiveCorp / Focus Interactive]

127.0.0.1  ads.iwon.com

127.0.0.1  c4.iwon.com

127.0.0.1  cc.iwon.com #[iWon Progressive Counter]

127.0.0.1  docs1.iwon.com

127.0.0.1  my.iwon.com

127.0.0.1  plus.iwon.com

127.0.0.1  prizemachine.games.iwon.com

127.0.0.1  search.iwon.com

127.0.0.1  searchassistant.iwon.com

127.0.0.1  www1.iwon.com #[ADW_IWON.B]

127.0.0.1  ak.maxserving.com #[Tenebril.Tracking.Cookie][a698.g.akamai.net]

127.0.0.1  c4.mysearch.com #[eTrust.MySearch][ADW_MYSEARCH.202]

127.0.0.1  cm.myway.com #[Ewido.Spyware.MyWay][ADW_MIWAY.C]

127.0.0.1  speedbar.myway.com #[ADW_MYSPEED.A][ADW_MIWAY.C]

127.0.0.1  cm.need2find.com #[Panda.adware/need2find]

# [IAC Search Media Inc][207.159.120.0 - 207.159.120.255]

127.0.0.1  utm.cursormania.com

127.0.0.1  utm.trk.cursormania.com

127.0.0.1  utm.excite.co.uk

127.0.0.1  utm.trk.excite.com

127.0.0.1  utm.excite.it

127.0.0.1  utm.myfuncards.com

127.0.0.1  utm.trk.myfuncards.com

127.0.0.1  utm.trk.myway.com

127.0.0.1  utm.myway.com #[service.urchin.com][Urchin Tracking Module]

127.0.0.1  utm.popswatter.com

127.0.0.1  utm.trk.popswatter.com

127.0.0.1  utm.popularscreensavers.com

127.0.0.1  utm.trk.popularscreensavers.com

127.0.0.1  utm.smileycentral.com

127.0.0.1  utm2.smileycentral.com

127.0.0.1  utm.trk.smileycentral.com

127.0.0.1  utmtrk2.smileycentral.com

127.0.0.1  utm.zwinky.com

127.0.0.1  utm.trk.zwinky.com

127.0.0.1  buddies.funbuddyicons.com

127.0.0.1  www.funbuddyicons.com #[SunBelt.FunWebProducts]

127.0.0.1  download.funwebproducts.com #[AdWare.Win32.FunWeb.e]

127.0.0.1  www.funwebproducts.com #[Adware.Bundler.Funwebproducts.M]

127.0.0.1  www.historyswatter.com

127.0.0.1  image.i1img.com

127.0.0.1  c4.maxserving.com #[SpySweeper.Spy.Cookie]

127.0.0.1  img.maxserving.com

127.0.0.1  sc4.maxserving.com

127.0.0.1  myglobalsearch.com

127.0.0.1  cfg.myglobalsearch.com

127.0.0.1  www.myglobalsearch.com #[Ewido.Spyware.MyWebSearch.MyGlobalSearch]

127.0.0.1  mn.myquicksearch.com

127.0.0.1  mr.myquicksearch.com

127.0.0.1  www.myquicksearch.com #[SunBelt.MyQuickSearch Search Assistant]

127.0.0.1  help.mysearch.com #[SunBelt.My Search Bar][Ewido.Spyware.MySearch]

127.0.0.1  msalt.mysearch.com

127.0.0.1  www.mysearch.com #[ADW_MIWAY.B][ADWARE_BHO_MYWAY]

127.0.0.1  bar.mytotalsearch.com

127.0.0.1  www.mytotalsearch.com

127.0.0.1  mywebsearch.com #[McAfee.Adware-MyWebSearch]

127.0.0.1  bar.mywebsearch.com #[ADW_MYWEB.A][eTrust.MyWebSearch Toolbar]

127.0.0.1  cfg.mywebsearch.com

127.0.0.1  download.mywebsearch.com #[ADW_WEBSEARCH.K]

127.0.0.1  edits.mywebsearch.com

127.0.0.1  search.mywebsearch.com #[Panda.Adware/MyWebSearch]

127.0.0.1  weatherbugbrowserbar.mywebsearch.com

127.0.0.1  www.mywebsearch.com #[Ewido.Spyware.MyWebSearch]

127.0.0.1  ka.bar.need2find.com #[HJTH.Need2Find bar][McAfee.Adware-Need2Find]

127.0.0.1  kc.search.need2find.com #[mwave.AdWare.MySearch.e]

127.0.0.1  kz.js.need2find.com #[Ewido.Spyware.Need2Find]

127.0.0.1  kz.search.need2find.com #[altnet.com]

# [Interactive 3d][AS20495][213.163.65.0 - 213.163.65.127]

127.0.0.1  countdesign.com #[Google.Warning][server down?]

127.0.0.1  flash-licenses.com #[server down?]

127.0.0.1  pradotour.com #[server down?]

127.0.0.1  update-flash.com #[Win32/Kryptik.QY][server down?]

127.0.0.1  videoaaa.net #[server down?]

127.0.0.1  xfreexmovies.com #[server down?]

# [Interep Interactive]

127.0.0.1  chewbacca.cybereps.com

127.0.0.1  ds.cybereps.com

127.0.0.1  images.cybereps.com

127.0.0.1  oascentral.cybereps.com #[RealMedia]

127.0.0.1  www.cybereps.com #[SunBelt.Cybereps.com]

127.0.0.1  yoda.cybereps.com

# [Interforum Ltd][AS47867][91.212.132.0 - 91.212.132.255]

# [Internet Access][203.98.181.128 - 203.98.181.191]

# [Internet Access][210.245.211.0 - 210.245.211.63]

# [Internet Society Of Israel][192.114.0.0 - 192.118.255.255]

127.0.0.1  dclk.haaretz.com

127.0.0.1  dclk.haaretz.co.il

127.0.0.1  dclk.themarker.com

# [Internet REIT Inc][Netster][Parking Service]

127.0.0.1  adserver.ireit.com

127.0.0.1  park.ireit.com

127.0.0.1  park2.ireit.com

127.0.0.1  park3.ireit.com #[Microsoft.Typo-Patrol]

127.0.0.1  webdocs.ireit.com

127.0.0.1  advertise.netster.com #[SiteAdvisor.netster.com]

127.0.0.1  pixel.netster.com #[WebBug]

127.0.0.1  lb1.youbettersearch.com

# [Internext Media Corp][67.29.139.128 - 67.29.139.255]

127.0.0.1  www.abcjmp.com

127.0.0.1  abcsearch.com

127.0.0.1  admin.abcsearch.com

127.0.0.1  www3.abcsearch.com #[Browseraid]

127.0.0.1  www.abcsearch.com

127.0.0.1  3151.77152.blueseek.com

127.0.0.1  4802.170.blueseek.com

127.0.0.1  5740.4785.blueseek.com

127.0.0.1  5882.1158.blueseek.com

127.0.0.1  5990.findit.blueseek.com

127.0.0.1  7457.accessaw.blueseek.com

127.0.0.1  7457.pownit.blueseek.com

127.0.0.1  2183.jsjmlejl.clickshield.net

127.0.0.1  redirect.clickshield.net

127.0.0.1  www.icityfind.com

127.0.0.1  primosearch.com

127.0.0.1  4133.88.primosearch.com

127.0.0.1  4654.2465.primosearch.com

127.0.0.1  5490.spedads.primosearch.com

127.0.0.1  5486.winxp.primosearch.com

127.0.0.1  6266.570204.primosearch.com

127.0.0.1  www.primosearch.com

127.0.0.1  www1.searchwho.com

127.0.0.1  www.searchwho.com

# [Interpolls]

127.0.0.1  hs.interpolls.com #[a1765.g.akamai.net]

127.0.0.1  nbc.interpolls.com

127.0.0.1  pollserver.interpolls.com

127.0.0.1  ps2.interpolls.com

127.0.0.1  ps.interpolls.com

127.0.0.1  sw.interpolls.com

127.0.0.1  wb.interpolls.com

# [Interserver][AS19318][64.20.32.0 - 64.20.63.255]

127.0.0.1  exe-store-center.com #[Win32/TrojanDownloader.FakeAlert.ACE]

127.0.0.1  go5scan.com

127.0.0.1  goscan4.com

127.0.0.1  goscan5.com

127.0.0.1  goscan6.com

# [Interserver][66.45.224.0 - 66.45.255.255]

127.0.0.1  11qe.com

127.0.0.1  aaaaxxx.com

127.0.0.1  afreexxx.com #[Malicious.Links.Codec]

127.0.0.1  freeporno.afreexxx.com

127.0.0.1  porno.afreexxx.com

127.0.0.1  xxx.afreexxx.com

127.0.0.1  movie.aplayful.com

127.0.0.1  c42.org

127.0.0.1  www.maturehit.com

127.0.0.1  nfsx.com #[Malicious.Links.Codec]

127.0.0.1  php4you.biz

127.0.0.1  www.pornoanal.info

127.0.0.1  superxxxporn.com

127.0.0.1  tube-collection.com

127.0.0.1  video.superxxxporno.com

127.0.0.1  virgin-teen-sex.com

127.0.0.1  www.virgin-teen-sex.com #[IFrame.Exploit]

# [Interserver via Aleksej Novikov]

127.0.0.1  rotor6.newzfind.com

127.0.0.1  sutra.newzfind.com

# [Interserver via various][69.10.32.0 - 69.10.47.255]

# [Interserver via various][69.10.32.0 - 69.10.63.255]

127.0.0.1  plus5scan.com

# [Interserver via Rampid Interactive]

127.0.0.1  outwar.com #[SunBelt.Outwar Adware Launcher]

127.0.0.1  fabar.outwar.com

127.0.0.1  images.outwar.com #[McAfee.Downloader-GH]

127.0.0.1  sigil.outwar.com

127.0.0.1  torax.outwar.com

127.0.0.1  www.outwar.com #[Trojan.Win32.VB.iy][ADW_OUTWAR.A]

127.0.0.1  ads.rampidads.com #[eTrust.Tracking.Cookie]

127.0.0.1  main.rampidads.com

127.0.0.1  www.rampidads.com

# [Interserver via StartNow International][eTrust.StartNow.HyperBar]

127.0.0.1  www.goodsitesguide.com

127.0.0.1  adserver.startnow.com

127.0.0.1  go.startnow.com

127.0.0.1  minisearch.startnow.com #[Adware.IESearch]

127.0.0.1  nav.startnow.com #[W32.Anpes@mm]

127.0.0.1  search.startnow.com

127.0.0.1  srch.startnow.com

127.0.0.1  toolbar.startnow.com #[SunBelt.StartNow Hyperbar]

127.0.0.1  www.startnow.com #[Adware.HyperBar]

127.0.0.1  www.webtracknow.com

# [InterWebvertising][AS9150][213.206.254.64 - 213.206.254.127]

127.0.0.1  ads.ero-advertising.com

127.0.0.1  adspaces.ero-advertising.com

127.0.0.1  api.ero-advertising.com

127.0.0.1  banners.ero-advertising.com

127.0.0.1  data.ero-advertising.com

127.0.0.1  layerads.ero-advertising.com

127.0.0.1  speedclicks.ero-advertising.com

127.0.0.1  thumbs.ero-advertising.com

# [InterWeb Solutions][Coolwebsearch Group]

127.0.0.1  coolwebsearch.com #[Trojan.TrustedZones]

127.0.0.1  php.coolwebsearch.com

127.0.0.1  search_fd.php.coolwebsearch.com #[Wildcard DNS]

127.0.0.1  stats.coolwebsearch.com

127.0.0.1  www.coolwebsearch.com #[CWS/IEFeats]

127.0.0.1  searchanyway.com

127.0.0.1  feed.searchanyway.com #[coolwebsearch.com]

127.0.0.1  go.searchanyway.com

127.0.0.1  www.searchanyway.com

# [InterXS Colocation][Nl-interxs-colo][91.142.64.0 - 91.142.64.255]

127.0.0.1  gendistr.org.uk

127.0.0.1  google-analistyc.net

# [InvisibleHand Networks][AS26627][216.12.160.0 - 216.12.175.255]

# [Ion][AS25525][89.18.160.0 - 89.18.191.255]

# [iPipe Inc][AS46636][88.214.209.0 - 88.214.209.255]

127.0.0.1  celebsxx.net

127.0.0.1  www.freeserials.com #[Win32.Renos.az]

127.0.0.1  intop.name #[klikadvertising]

127.0.0.1  liostat.co.cc

127.0.0.1  www.petrenko.biz

127.0.0.1  pirix.net

127.0.0.1  topvideolist.com

# [Ironpath Networks][AS36217][67.209.176.0 - 67.209.191.255]

127.0.0.1  adverporn.com #[Google.Diagnostic]

127.0.0.1  www.adverporn.com

127.0.0.1  just4uporn.com

127.0.0.1  www.just4uporn.com

127.0.0.1  purexxxclips.com #[Google.Warning]

127.0.0.1  www.purexxxclips.com

127.0.0.1  voyuerxxxtube.com #[Google.Diagnostic]

127.0.0.1  www.voyuerxxxtube.com

# [i-Serve Promotions]

127.0.0.1  pluto.adcycle.com #[Whios.Blacklisted]

127.0.0.1  www.adcycle.com

127.0.0.1  www.exchange-it.com

127.0.0.1  media.exchange-it.com

127.0.0.1  metacount.com

127.0.0.1  stats.metacount.com

127.0.0.1  www.metacount.com

127.0.0.1  popunder.com

127.0.0.1  media.popunder.com

127.0.0.1  www.popunder.com

# [ISP UATelecom][AS44997][91.203.92.0 - 91.203.95.255]

127.0.0.1  best-scan-pro.com

127.0.0.1  bestscanner-pro.com

# [Isprime][AS23393][64.111.192.0 - 64.111.223.255]

127.0.0.1  main.exoclick.com

127.0.0.1  syndication.exoclick.com

127.0.0.1  filmati-porno.hardsu.net #[NOD32.Win32/Dialer.HZ]

127.0.0.1  www.gbcash.com

127.0.0.1  www.results-today.com

# [Isprime][66.230.128.0 - 66.230.191.255]

127.0.0.1  www.ads180.com

127.0.0.1  www.actualresearch.com #[Rogue.Antispyware]

127.0.0.1  www.alphawipe.com #[Rogue.Antispyware]

127.0.0.1  betterclips.com

127.0.0.1  www.betterclips.com

127.0.0.1  www.cashventure.com

127.0.0.1  www.cyber-shop.net #[Malicious.Links.Systemdoctor]

127.0.0.1  easyadservice.com

127.0.0.1  enthro.com

127.0.0.1  enthro.info #[Malicious.Links.DriveCleaner]

127.0.0.1  enthro.org

127.0.0.1  www.exitmoney.com

127.0.0.1  firstbookmark.com #[Parasite.ClientMan]

127.0.0.1  www.firstbookmark.com

127.0.0.1  xxx.galleryporn.net #[MHTMLRedir.Exploit]

127.0.0.1  itisbest.info #[Spamdexing]

127.0.0.1  www.mp3search.com #[Panda.Spyware:Cookie/Mp3search]

127.0.0.1  track.oainternetservices.com

127.0.0.1  banners.thiswillshockyou.com

127.0.0.1  top50sites.info #[Spamdexing]

127.0.0.1  trace-sweeper.com #[Symantec.TraceSweeper]

127.0.0.1  www.trace-sweeper.com

# [ISPrime via Bangbros.com]

127.0.0.1  adsgen.bangbros.com

127.0.0.1  adsrv.bangbros.com

127.0.0.1  newads.bangbros.com

127.0.0.1  tck.bangbros.com

127.0.0.1  oxcash.com #[SunBelt.OxCash]

127.0.0.1  clicks2.oxcash.com

127.0.0.1  popup.oxcash.com

127.0.0.1  track.oxcash.com

127.0.0.1  exit.oxcash2.com

# [ISPrime via Brendan Lewis]

127.0.0.1  www.bunnyteens.com

127.0.0.1  www.candythumbs.com

127.0.0.1  www.orangeteen.com

127.0.0.1  www.puppykibble.com

127.0.0.1  www.raimisthumbs.com

127.0.0.1  www.teenbookmark.com #[Dropper.Small.18.AV]

# [ISPrime via Flashpoint Media]

127.0.0.1  a.flashpoint.bm

127.0.0.1  c.flashpoint.bm

127.0.0.1  www.flashpoint.bm

127.0.0.1  www.flashpointmodelsearch.com

127.0.0.1  config.broadcastpc.tv #[TROJ_RVP.E]

127.0.0.1  report.broadcastpc.tv #[AdvWare.Broadcap.a]

127.0.0.1  www.broadcastpc.tv #[Adware.Broadcastpc]

127.0.0.1  www.downaload.com

# [ISPrime via Global Acces S.L.]

127.0.0.1  www.dialerplatform.com #[Trojan.Ibiza]

127.0.0.1  www.ezdialeronline.com

127.0.0.1  www.global-acces.com #[Dialer.Globalacces]

127.0.0.1  www.global-access.com

127.0.0.1  access.juicyteenporn.com #[Dialer.Juicyteen][directplugin.com]

127.0.0.1  members.juicyteenporn.com #[DIAL_ATMOS.A][Porn-Dialer.Win32.GBDialer.d]

# [ISPrime via RealCast Media LLC][Jambo Media Llc]

127.0.0.1  realbannerads.com

127.0.0.1  ads.realcastmedia.com #[directtrack.com]

127.0.0.1  www.realcastmedia.com

127.0.0.1  www.realtextads.com

# [ISPrime via STATSnet]

127.0.0.1  www.stats.net

# [Isprime Inc via Mark Hostetler]

127.0.0.1  find-fm.com #[AdWare.Win32.Softomate.e]

127.0.0.1  adult.find.fm #[eTrust.Softomate.FindFM]

127.0.0.1  www.find.fm #[AdWare.SideSearch.g]

127.0.0.1  peakclick.com #[SiteAdvisor.peakclick.com]

127.0.0.1  feed.peakclick.com

127.0.0.1  www.peakclick.com #[AdWare.SideSearch.g][FindFmToolbar]

127.0.0.1  www.pharmacywebsearch.com #[Spamdexing]

127.0.0.1  results-today.com

127.0.0.1  veryfastsearch.com

127.0.0.1  www.veryfastsearch.com

# [Isprime Inc via NetVenda Group]

127.0.0.1  l00kl23.com #[HJTH.NetVenda Dialer]

127.0.0.1  netvenda.com

127.0.0.1  content.netvenda.com

127.0.0.1  content2.netvenda.com

127.0.0.1  www.netvenda.com #[HJTH.NetVenda Dialer]

# [Isprime Inc via positive web creations]

127.0.0.1  www.lyricsdomain.com

127.0.0.1  www.negativebeats.com #[Downloader.Small]

127.0.0.1  positivebeats.com #[JS/TrojanClicker.Linker.M]

127.0.0.1  www.positivebeats.com

# [Isprime][76.9.0.0 - 76.9.31.255]

127.0.0.1  ads.crakmedia.com

127.0.0.1  corporate.crakmedia.com

127.0.0.1  404.fuckyoucash.com

127.0.0.1  bloggers.fuckyoucash.com

127.0.0.1  adserver.juicybucks.com

127.0.0.1  ads.program3.com

127.0.0.1  s.xvideos.com

# [Ispsystem At Nac][AS8001][82.146.48.0 - 82.146.55.255]

127.0.0.1  000-search.net #[server down?]

127.0.0.1  adz-free-host.com

127.0.0.1  chickstube.cn

127.0.0.1  dzheker.com

127.0.0.1  girl-tube.cn

127.0.0.1  girls-tube.cn

127.0.0.1  rxoffers.net #[Spamdexing]

# [Istanbul Telekom][79.135.167.0 - 79.135.167.255]

# [It Network Systems][193.200.29.0 - 193.200.29.255]

# [It S Ltd][AS48772][195.88.32.0 - 195.88.33.255]

# [Iweb Technologies][174.142.0.0 - 174.142.255.255]

127.0.0.1  download.best-protect-av1.info

127.0.0.1  pyani.com

# [Iweb Dedicated Cl][AS32613][67.205.64.0 - 67.205.127.255]

# [Iweb Technologies via Individual][AS32613][67.205.75.8 - 67.205.75.15]

# [Iweb Technologies][70.38.0.0 - 70.38.127.255]

127.0.0.1  www.hradware.com

# [Iweb Technologies via Expertschanllenge][70.38.73.24 - 70.38.73.31]

127.0.0.1  angantivirus-2009.com

127.0.0.1  stats.angantivirus-2009.com

127.0.0.1  www.angantivirus-2009.com

127.0.0.1  angantivirus2009.com

127.0.0.1  stats.angantivirus2009.com

127.0.0.1  www.angantivirus2009.com

# [Iweb Dedicated Cl][AS32613][72.55.153.128 - 72.55.153.159]

# [Iweb Technologies via Panelbox][72.55.186.0 - 72.55.187.255]

# [Jasmin Media Group][AS34655][80.77.113.0 - 80.77.113.255]

127.0.0.1  counter.awempire.com

127.0.0.1  counter.jasmin.hu

# [Jasmin Media Group / Lalib Lda][AS34655][93.93.53.0 - 93.93.53.255]

127.0.0.1  adson.awempire.com

127.0.0.1  iframes.awempire.com

127.0.0.1  promo.awempire.com

127.0.0.1  static.awempire.com

127.0.0.1  creatives.livejasmin.com

# [Jayde Online]

127.0.0.1  exactseek.com #[Adware.Win32.ExactSeek]

127.0.0.1  ads.exactseek.com

127.0.0.1  www.exactseek.com #[Win32/Adware.SearchIt][MVPS.Criteria]

# [Jinhua Telecom][60.191.222.0 - 60.191.222.255]

# [Joint Multimedia / Isp Imc][AS34187][195.245.118.0 - 195.245.119.255]

127.0.0.1  7wmv.in

127.0.0.1  aduvid.com #[Google.Diagnostic]

127.0.0.1  exxxtravids.com #[Malicious.Links.Codec]

127.0.0.1  getimpressed.com

127.0.0.1  new-videos.info

127.0.0.1  watch-video.cn

# [Joint Multimedia][AS34187][78.26.161.0 - 78.26.191.255]

127.0.0.1  blufda.com

127.0.0.1  dlsg09.com

127.0.0.1  dlsgd3.com

127.0.0.1  scan.freescanner-proas2009.com

127.0.0.1  getsgd3.com

127.0.0.1  getsysgd09.com

127.0.0.1  gosgd3.com

127.0.0.1  files.ms-loads-av.com #[Mal/FakeAV-AH]

127.0.0.1  scan.proantispyware-scanner.com

127.0.0.1  files.pro-antispyware-dl.com

127.0.0.1  systemguard2009.com

127.0.0.1  systemguard2009m.com

# [Joint Stock Company]

127.0.0.1  ad.bannerbank.ru

127.0.0.1  ad1.bannerbank.ru

127.0.0.1  ad2.bannerbank.ru

127.0.0.1  ad3.bannerbank.ru

127.0.0.1  ad4.bannerbank.ru

127.0.0.1  ad5.bannerbank.ru

127.0.0.1  ad6.bannerbank.ru #[Ad-Aware.Tracking.Cookie]

127.0.0.1  ad7.bannerbank.ru

127.0.0.1  ad8.bannerbank.ru

127.0.0.1  ad9.bannerbank.ru

127.0.0.1  ad10.bannerbank.ru

127.0.0.1  ad11.bannerbank.ru

127.0.0.1  ad12.bannerbank.ru

127.0.0.1  ad13.bannerbank.ru

127.0.0.1  ad14.bannerbank.ru

127.0.0.1  ad15.bannerbank.ru

127.0.0.1  ad16.bannerbank.ru

127.0.0.1  ad17.bannerbank.ru

127.0.0.1  ad18.bannerbank.ru

127.0.0.1  crd1.bannerbank.ru

127.0.0.1  static.bannerbank.ru

127.0.0.1  ad.ir.ru

# [Junik][AS8206][213.182.197.0 - 213.182.197.15]

# [Juno Online Services][Web Services][64.136.0.0 - 64.136.63.255]

127.0.0.1  banner.50megs.com

127.0.0.1  downloadz.us #[Spamdexing]

127.0.0.1  free-counter.5u.com

127.0.0.1  free-stats.com

127.0.0.1  abbyssh.freestats.com

127.0.0.1  insurancejournal.freestats.com

127.0.0.1  get-antispyware.5u.com #[Malicious.Links.winantispyware.com]

127.0.0.1  hit-counter.5u.com

127.0.0.1  web-counter.5u.com

127.0.0.1  aboutwebservices.com

127.0.0.1  ad.aboutwebservices.com

127.0.0.1  freestats.com

127.0.0.1  banner.freeservers.com

127.0.0.1  eegad.freeservers.com #[SpySweeper.Spy.Cookie]

127.0.0.1  free-stats.i8.com

127.0.0.1  site-stats.i8.com

127.0.0.1  barafranca.iwarp.com #[Win32/Spy.ProAgent]

127.0.0.1  statistics.s5.com

127.0.0.1  sitetracker.com

127.0.0.1  pomeranian99.sitetracker.com

127.0.0.1  www.sitetracker.com

127.0.0.1  www2a.sitetracker.com

127.0.0.1  cyclops.prod.untd.com #[RealMedia]

127.0.0.1  nztv.prod.untd.com

127.0.0.1  track.untd.com

# [Jupitermedia Corp][63.236.72.128 - 63.236.72.255]

127.0.0.1  mjxads.internet.com

127.0.0.1  nxads.internet.com

# [Jupitermedia Corp][63.236.73.128 - 63.236.73.255]

127.0.0.1  thecounter.com

127.0.0.1  c1.thecounter.com

127.0.0.1  c2.thecounter.com

127.0.0.1  c3.thecounter.com

127.0.0.1  www.thecounter.com

# [Kabanga Corp][Kontera Technologies]

127.0.0.1  chat.ezula.com

127.0.0.1  app.ezula.com

127.0.0.1  www.ezula.com #[eTrust.Ezula]

127.0.0.1  kabanga.com

127.0.0.1  www.kabanga.com

127.0.0.1  dc.kontera.com

127.0.0.1  kona.kontera.com #[DynamiContext AdLinks][MVPS.Criteria]

127.0.0.1  te.kontera.com

127.0.0.1  www.kontera.com

# [Keyweb Online / Lahn-web][87.118.68.0 - 87.118.71.255]

127.0.0.1  std.4searches.net

127.0.0.1  formationfind.com

127.0.0.1  magicwork.net

127.0.0.1  provillus-shop.com #[Rogue/Suspect Affiliate.sites]

127.0.0.1  tds.smscash.biz

# [Keyweb Ag][AS31103][84.19.176.0 - 84.19.191.255]

127.0.0.1  fastfind.info #[Google.Warning]

127.0.0.1  momsbangfilm.com

127.0.0.1  ms-scan.biz

127.0.0.1  ms-scan.info

127.0.0.1  ms-scan.net

127.0.0.1  ms-scan.org

127.0.0.1  ms-scan.us

127.0.0.1  srv-scan.biz

127.0.0.1  srv-scan.us #[Trojan.Codec]

127.0.0.1  system-protector.org

127.0.0.1  topsexsearch.info

# [Keyweb Ag][87.118.82.0 - 87.118.95.255]

127.0.0.1  www.goldtraf.net

# [Keyweb Ag][87.118.96.0 - 87.118.127.255]

127.0.0.1  biba05.ru

127.0.0.1  hugexmoviedownloads.cn

127.0.0.1  gruzovki.ru

127.0.0.1  pro123.msk.ru

127.0.0.1  pr-cy.ru

127.0.0.1  promo.smstraff.com

127.0.0.1  www.xtraf.biz

# [KIM HYUNGHO]

127.0.0.1  goi.com

127.0.0.1  nav.goi.com

127.0.0.1  nav.hitq.com

127.0.0.1  hitq.com

# [Korea Telecom][218.144.0.0 - 218.159.255.255]

127.0.0.1  adimg1.chosun.com

127.0.0.1  cad.chosun.com #[RealMedia]

127.0.0.1  hitlog2.chosun.com

127.0.0.1  microadsystem.com

127.0.0.1  down.microadsystem.com

127.0.0.1  program.microadsystem.com #[TR/Dldr.FakeAV.F.1]

127.0.0.1  ver.microadsystem.com

127.0.0.1  www.microadsystem.com

127.0.0.1  adplus.yonhapnews.co.kr

# [Korea Telecom][222.96.0.0 - 222.122.255.255]

127.0.0.1  adv.cgiworld.net

127.0.0.1  count.cgiworld.net

127.0.0.1  counter.cgiworld.net

127.0.0.1  tracker.cgiworld.net

# [Kornet-infra000001][211.51.0.0 - 211.51.255.255]

127.0.0.1  down.iedoumi.com #[Trojan-Downloader.Win32.Delf.bpn]

127.0.0.1  okcashbackmall.com #[Adware.Okcashbackmall]

127.0.0.1  cashback.okcashbackmall.com

127.0.0.1  www.okcashbackmall.com

# [Layered Technologies][209.67.208.0 - 209.67.223.255]

127.0.0.1  estrategiavirtual.com #[Malicious.Links.Codec]

127.0.0.1  porno-kuba.net

127.0.0.1  visual-porn.com

127.0.0.1  www.visual-porn.com

# [Layered Technologies][216.32.64.0 - 216.32.95.255]

127.0.0.1  antivirus-vip.com

127.0.0.1  www.antivirus-vip.com

127.0.0.1  www.bdsmxxxmovies.com #[Malicious.Links]

127.0.0.1  delshikandco.com

127.0.0.1  400kg.gozbest.net #[Google.Diagnostic]

127.0.0.1  boss.gozbest.net #[Shestakov Yuriy]

127.0.0.1  kakvsegda.com

127.0.0.1  myhealtharea.cn #[Google.Diagnostic]

127.0.0.1  nicehunta.info

127.0.0.1  ourbestsearch.info

127.0.0.1  oymomahon.com

127.0.0.1  tafficbots.com

# [Layered Technologies][64.92.160.0 - 64.92.175.255]

127.0.0.1  agemature.com

127.0.0.1  delshiktds.com

127.0.0.1  explicittube.net #[Fake.PornTube.Codec]

127.0.0.1  www.explicittube.net

127.0.0.1  madtubeporn.com #[Malicious.Links.Codec]

127.0.0.1  www.madtubeporn.com

127.0.0.1  myhealtharea.net

127.0.0.1  showmealltube.com

127.0.0.1  zbesttds.com #[Shestakov Yuriy][Google.Diagnostic]

# [Layered Technologies][72.21.32.0 - 72.21.63.255]

127.0.0.1  antimalware-pro.com

127.0.0.1  www.antimalware-pro.com

127.0.0.1  secure.certone.com #[Adware.WebDir][SunBelt.WebDir]

# [Layered Technologies][AS13767][72.232.0.0 - 72.233.127.255]

127.0.0.1  www.lstmoney.net

127.0.0.1  200online.net #[klikadvertising]

127.0.0.1  2searchsold.info

127.0.0.1  ads.3sfmedia.com

127.0.0.1  8nude.com

127.0.0.1  abcmature.com

127.0.0.1  adult-traff.com

127.0.0.1  barrymovies.net

127.0.0.1  www.barrymovies.net #[HTML/TrojanClicker.IFrame.NAF]

127.0.0.1  bestvideogays.net #[HTML/TrojanClicker.IFrame.NAF]

127.0.0.1  www.bestvideogays.net

127.0.0.1  bitcoreguard.com #[Win32/Adware.CoreguardAntivirus]

127.0.0.1  bitcoreguard.net

127.0.0.1  www.celebritywar.com #[Malicious.Links.Zango]

127.0.0.1  cityoforgasm.com #[HTML/TrojanClicker.IFrame.NAF]

127.0.0.1  www.d3go.com

127.0.0.1  everydaygays.com

127.0.0.1  www.everydaygays.com

127.0.0.1  www.fastusersonline.com

127.0.0.1  www.fightserver.com

127.0.0.1  www.findliver.com

127.0.0.1  flavinha.com #[Google.Diagnostic]

127.0.0.1  fuckthislady.net

127.0.0.1  www.fuckthislady.net #[HTML/TrojanClicker.IFrame.NAF]

127.0.0.1  fullguardlab.com

127.0.0.1  gayfromwest.com #[HTML/TrojanClicker.IFrame.NAF]

127.0.0.1  www.gayfromwest.com

127.0.0.1  greatladymovies.com

127.0.0.1  www.greatladymovies.com #[HTML/TrojanClicker.IFrame.NAF]

127.0.0.1  adsnew.gsmarena.com

127.0.0.1  guardav.com

127.0.0.1  guardlab.com

127.0.0.1  homomales.com

127.0.0.1  www.homomales.com

127.0.0.1  interno-porn.com #[HTML/TrojanClicker.IFrame.NAF]

127.0.0.1  www.interno-porn.com

127.0.0.1  www.look4bull.com

127.0.0.1  malepornxxx.com

127.0.0.1  www.nicheads.com

127.0.0.1  ninfetinhas.biz #[Google.Warning]

127.0.0.1  www.ninfetinhas.biz

127.0.0.1  url.nossopark.com.br #[Parking Service]

127.0.0.1  online-life.org

127.0.0.1  onlysexporn.com

127.0.0.1  pingomatic.com

127.0.0.1  www.scriptsite.net

127.0.0.1  www.seagch.com

127.0.0.1  search7info.com

127.0.0.1  sserega.info #[Spamdexing]

127.0.0.1  stableclick2.com

127.0.0.1  www.validxmlfeed.com

127.0.0.1  static.woopra.com

127.0.0.1  xftvgirls.com

127.0.0.1  www.xftvgirls.com

127.0.0.1  www.xmlply.com

127.0.0.1  xmoviesday.com #[HTML/TrojanClicker.IFrame.NAF]

127.0.0.1  xtra-get.com

127.0.0.1  zodune.info

# [Layered Technologies via Dwd Technologies][AS13767][72.232.186.18/21]

127.0.0.1  electronicbillinghost.com

127.0.0.1  hdrivesweeperpro.com

127.0.0.1  www.hdrivesweeperpro.com

127.0.0.1  www.securesoftwarepays.com

# [Layered Technologies][AS3561][72.36.128.0 - 72.36.255.255]

127.0.0.1  bbwgames.com

127.0.0.1  bibamovs.com

127.0.0.1  www.bibamovs.com

127.0.0.1  densmail.com #[Google.Diagnostic]

127.0.0.1  prx.freecj.com #[MHTMLRedir.Exploit]

127.0.0.1  glamour4u.cn #[Google.Diagnostic]

127.0.0.1  in4co.com

127.0.0.1  juggsday.com

127.0.0.1  lesbiansmovies.net #[Malicious.Links]

127.0.0.1  banner.sayt.ws

127.0.0.1  www.sexylux.com #[McAfee.StartPage-IF]

127.0.0.1  www.todoporn.com #[Malicious.Links]

127.0.0.1  trafdriver.com

# [Layered Technologies via Antex]

127.0.0.1  friendslinks.com

127.0.0.1  www.friendslinks.com

127.0.0.1  fuck-access.com #[SiteAdvisor.fuck-access.com]

127.0.0.1  www.fuck-access.com

127.0.0.1  serialsbox.com

127.0.0.1  www.serialsbox.com #[JS/TrojanDownloader.Agent.Z]

127.0.0.1  www.x-park.net

# [Layered Technologies via Matreshka]

127.0.0.1  babe-girls.com #[Malicious.Links]

127.0.0.1  www.babe-girls.com

127.0.0.1  little-amateurs.com

127.0.0.1  www.little-amateurs.com #[Malicious.Links.Codec]

127.0.0.1  www.mature-dolls.com

# [Lb Internet][AS35057][78.157.141.0 - 78.157.141.255]

127.0.0.1  avmyscan.com

127.0.0.1  avproscan.com

127.0.0.1  avprostat.com

127.0.0.1  avscan-pro.com

127.0.0.1  avscanpro.com

127.0.0.1  bestproscan.com

127.0.0.1  gomyscan.com

127.0.0.1  goyourscan.com

127.0.0.1  go-your-scan.com

127.0.0.1  iabestscan.com #[server down?]

127.0.0.1  scanavpro.com

# [Leading Edge Marketing]

127.0.0.1  banners.leadingedgecash.com

127.0.0.1  www2.leadingedgecash.com

127.0.0.1  www.leadingedgecash.com

127.0.0.1  www.albiondrugs.com

127.0.0.1  albionmedical.com

127.0.0.1  www.albionmedical.com

# [Leaseweb][82.192.88.0 - 82.192.88.255]

# [Leaseweb][83.149.105.0 - 83.149.105.255]

# [Leaseweb][85.17.111.0 - 85.17.111.255]

127.0.0.1  supportenquiry.com

127.0.0.1  www.supportenquiry.com

# [Leaseweb][85.17.136.0 - 85.17.136.255]

# [Leaseweb][85.17.141.0 - 85.17.141.255]

127.0.0.1  3animalsex.com

127.0.0.1  www.3animalsex.com

# [Leaseweb][85.17.159.0 - 85.17.159.255]

127.0.0.1  wildporntube.com

127.0.0.1  www.wildporntube.com

# [Leaseweb][Euronoc Networks][85.17.161.0 - 85.17.161.255]

127.0.0.1  artwork.aim4media.com

127.0.0.1  www.aim4media.com #[SunBelt.Adserver.aim4media]

127.0.0.1  popupmoney.com

127.0.0.1  server01.popupmoney.com

127.0.0.1  www.popupmoney.com

# [Leaseweb][AS16265][85.17.162.0 - 85.17.162.255]

127.0.0.1  adnetserver.net

127.0.0.1  adpopserve.net

127.0.0.1  adpopshow.net

127.0.0.1  ad.adrefer.net

# [Leaseweb][85.17.165.0 - 85.17.165.255]

127.0.0.1  08search.com #[klikadvertising]

127.0.0.1  comonets.com #[Google.Diagnostic]

127.0.0.1  newlooktour.com #[klikadvertising][server down?]

127.0.0.1  pipicom.com #[Google.Diagnostic]

# [Leaseweb][85.17.168.0 - 85.17.168.255]

127.0.0.1  adsgiant.net

127.0.0.1  www.adsgiant.net

# [Leaseweb][85.17.177.0 - 85.17.177.255]

# [Leaseweb][85.17.184.0 - 85.17.184.255]

127.0.0.1  all4-sex.info #[Malicious.Links]

127.0.0.1  garpy.info

# [Leaseweb][85.17.212.0 - 85.17.212.255]

# [Leaseweb][85.17.230.0 - 85.17.230.255]

# [Leaseweb][85.17.232.0 - 85.17.232.255]

127.0.0.1  farm-fucking.net #[Malicious.Links.Codec]

127.0.0.1  www.farm-fucking.net

# [Leaseweb][85.17.3.0 - 85.17.3.255]

127.0.0.1  searchauto.us

# [Leaseweb][85.17.4.0 - 85.17.4.255]

# [Leaseweb][85.17.7.0 - 85.17.7.255]

127.0.0.1  dclicksit.com

# [Leaseweb][85.17.37.0 - 85.17.37.255]

127.0.0.1  penix.nl #[ero-advertising.com]

# [Leaseweb][85.17.45.0 - 85.17.45.255]

# [Leaseweb][85.17.46.0 - 85.17.46.255]

127.0.0.1  www.bunnyteensmovies.com

127.0.0.1  choice4adults.com

# [Leaseweb][85.17.53.0 - 85.17.53.255]

# [Leaseweb][85.17.58.0 - 85.17.58.255]

127.0.0.1  billpics.com #[Malicious.Links]

# [Leaseweb][85.17.65.0 - 85.17.65.255]

# [Leaseweb][85.17.94.0 - 85.17.94.255]

# [Leaseweb][94.75.209.0 - 94.75.209.255]

127.0.0.1  extrantivirus.com

127.0.0.1  promo.extrantivirus.com

127.0.0.1  rapid-antivir-2009.com

127.0.0.1  scanner.rapid-antivir-2009.com

127.0.0.1  rapidantivir09.com

127.0.0.1  scanner.rapidantivir09.com

127.0.0.1  www.rapidantivir09.com

127.0.0.1  rd-point.net

127.0.0.1  secure.xsoftstore.com

# [Leaseweb][94.75.214.0 - 94.75.214.255]

# [Leaseweb][94.75.216.0 - 94.75.216.255]

# [Leaseweb][94.75.232.0 - 94.75.232.255]

127.0.0.1  www.adsmoon.com

# [Leaseweb][94.75.235.0 - 94.75.235.255]

127.0.0.1  www.adult-screensavers.org #[NOD32.Win32/AdInstaller][Gabor Timis]

# [Nl-leaseweb][94.75.192.0 - 94.75.255.255]

127.0.0.1  amateurdevils.com

127.0.0.1  top2009images.com

# [Leaseweb][95.211.0.0 - 95.211.255.255]

127.0.0.1  secure.a5bills.com

127.0.0.1  coreguardlab2009.biz

127.0.0.1  coreguardlab2009.com #[Win32/Adware.CoreguardAntivirus]

127.0.0.1  coreguardlab2009.net

# [Legendum LLC][Tracking Service]

127.0.0.1  db0.net-filter.com #[WebtraffIQ Code]

127.0.0.1  db2.net-filter.com

127.0.0.1  db3.net-filter.com

127.0.0.1  db4.net-filter.com

127.0.0.1  db5.net-filter.com

127.0.0.1  db6.net-filter.com

127.0.0.1  db7.net-filter.com

127.0.0.1  sitestats.com #[Ewido.TrackingCookie.Sitestat]

127.0.0.1  db0.sitestats.com

127.0.0.1  db1.sitestats.com

127.0.0.1  db2.sitestats.com

127.0.0.1  db3.sitestats.com

127.0.0.1  db4.sitestats.com

127.0.0.1  db5.sitestats.com

127.0.0.1  db6.sitestats.com

127.0.0.1  db7.sitestats.com

127.0.0.1  www.sitestats.com

# [Lev Valit][Rtcomm.ru Network Group]

127.0.0.1  www.astabar.com #[AdWare.Win32.Astabar.a]

127.0.0.1  www.astalavista.us

127.0.0.1  justns.com

# [Lexitrans][AS11486][207.17.52.0 - 207.17.53.255]

127.0.0.1  alwaysfreeporno.com

127.0.0.1  www.alwaysfreeporno.com

127.0.0.1  up3.certdownload.com

127.0.0.1  www.certdownload.com

127.0.0.1  w.hqwmdjejtudlk-dfjkeid.com #[Trojan-Downloader.Win32.Rotarran.a]

127.0.0.1  kjdhendieldiouyu.com

127.0.0.1  up2.kjdhendieldiouyu.com #[virgins.se]

127.0.0.1  www.kjdhendieldiouyu.com #[McAfee.Adware-SafeSearch]

127.0.0.1  freeporntoday.net #[Google.Warning]

127.0.0.1  www.freeporntoday.net

127.0.0.1  www.virgins.se #[eTrust.Sex Cams]

127.0.0.1  www.zxcvbnmjkl.com

# [Lightningcast][216.52.117.0 - 216.52.117.255]

127.0.0.1  stream11.instream.com

127.0.0.1  stats.lightningcast.net

127.0.0.1  stats2.lightningcast.net

# [Limt Group][77.92.88.0 - 77.92.89.255]

# [LinkShare]

127.0.0.1  ad.linksynergy.com #[SpySweeper.Spy.Cookie]

127.0.0.1  click.linksynergy.com #[eTrust.Tracking.Cookie]

127.0.0.1  m.banner.linksynergy.com #[Tenebril.Tracking.Cookie]

127.0.0.1  ssl.linksynergy.com #[SecuritySpace.WebBug]

127.0.0.1  www.linkshare.com

# [Liquid Web][209.59.128.0 - 209.59.191.255]

127.0.0.1  ad-rotator.com #[adspeed.com]

127.0.0.1  serv.adspeed.com

127.0.0.1  www.adspeed.com

127.0.0.1  www.arcadetraffic.com

127.0.0.1  clickthru.net

127.0.0.1  ads.clickthru.net

127.0.0.1  icon.clickthru.net

127.0.0.1  search.eclickz.com

# [Liquid Web][67.225.128.0 - 67.225.255.255]

127.0.0.1  1-tlaf.net

127.0.0.1  www.iwebmusic.com

127.0.0.1  myseobiz.net

127.0.0.1  tdska.co.cc

127.0.0.1  topixbase.com #[klikadvertising]

# [Liquid Web][69.16.192.0 - 69.16.255.255]

# [Liquid Web][AS32244][72.52.128.0 - 72.52.255.255]

127.0.0.1  www.1searchsite.com

127.0.0.1  www.adversal.com

127.0.0.1  www.hit-counts.com

127.0.0.1  www.jstracker.com

127.0.0.1  luxemil.com

127.0.0.1  www.luxemil.com #[Google.Warning]

127.0.0.1  www.resultsz.com

127.0.0.1  www.validview.com

127.0.0.1  yuzt.com

127.0.0.1  zionia.com

# [LIST.RU]

127.0.0.1  ad1.lbe.ru

127.0.0.1  list.ru

127.0.0.1  host1.list.ru

127.0.0.1  host3.list.ru

127.0.0.1  host4.list.ru

127.0.0.1  host7.list.ru

127.0.0.1  host11.list.ru

127.0.0.1  host12.list.ru

127.0.0.1  host13.list.ru

127.0.0.1  host14.list.ru

127.0.0.1  top.list.ru

127.0.0.1  top1.list.ru

127.0.0.1  top3.list.ru #[WebBug]

127.0.0.1  top6.list.ru

# [little help software]

127.0.0.1  www.little-help.com

127.0.0.1  little-download.net #[Adware.Littlehelper]

127.0.0.1  www.little-download.net

# [LivePerson][208.89.12.0 - 208.89.15.255]

127.0.0.1  www.liveperson.com

# [LivePerson][70.42.153.0 - 70.42.153.255]

127.0.0.1  hc2.humanclick.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  www.humanclick.com #[McAfee.Cookie-Humanclick]

127.0.0.1  liveperson.net #[SecuritySpace.WebBug][McAfee.Cookie-Liveperson]

127.0.0.1  sales.liveperson.net #[Tenebril.Tracking.Cookie]

127.0.0.1  sec1.liveperson.net #[SpySweeper.Spy.Cookie]

127.0.0.1  server.iad.liveperson.net #[Spyware:Cookie/Server.iad.Liveperson]

# [LiveTechnology International]

127.0.0.1  14713804a.l2m.net #[SpySweeper.Spy.Cookie]

127.0.0.1  30280827a.l2m.net #[WebBug]

127.0.0.1  jmm.livestat.com #[Tenebril.Tracking.Cookie]

127.0.0.1  www.livestat.com #[SunBelt.Livestat.com]

127.0.0.1  www.livetechnology.com

# [Live Universe][206.229.17.0 - 206.229.17.255]

127.0.0.1  banners.blogexplosion.com

127.0.0.1  counter.blogexplosion.com

127.0.0.1  blogtextlinks.blogexplosion.com

127.0.0.1  rentblog.blogexplosion.com

127.0.0.1  adserving.liveuniversenetwork.com

127.0.0.1  trackingcdn.liveuniversenetwork.com

127.0.0.1  traffic.liveuniversenetwork.com

127.0.0.1  trafficcdn.liveuniversenetwork.com

127.0.0.1  traffic.livevideo.com

127.0.0.1  analyze.filecabi.net

127.0.0.1  analyze.livevideo.com #[webstats.liveuniversenetwork.com]

127.0.0.1  analyze.revver.com

127.0.0.1  analyze.ugoto.com

127.0.0.1  analyze.vidilife.com

127.0.0.1  analyze.yikers.com

127.0.0.1  adserving.yourfilehost.com

127.0.0.1  analyze.yourfilehost.com #[Urchin Tracking]

# [Llc Gaztransitstroyinfo][AS29371][91.212.41.0 - 91.212.41.255]

127.0.0.1  apprecearlyrock.com

127.0.0.1  autoperformspec.com

127.0.0.1  bookadorable.cn

127.0.0.1  clubmillionswow.cn

127.0.0.1  designroots.cn

127.0.0.1  drawingstyle.cn

127.0.0.1  forexsec.cn

127.0.0.1  housedomainname.cn

127.0.0.1  housevisual.cn

127.0.0.1  islandtravet.cn

127.0.0.1  lemmydislikes.com #[Google.Diagnostic]

127.0.0.1  liteauction.cn

127.0.0.1  litefront.cn

127.0.0.1  musicdomainer.cn

127.0.0.1  newtransfer.cn

127.0.0.1  nextfreedollar.com

127.0.0.1  oceandealer.cn

127.0.0.1  peopleopera.cn

127.0.0.1  rainfinish.cn

127.0.0.1  schoolh.cn

127.0.0.1  vitamingood.cn

127.0.0.1  websiteflower.cn

127.0.0.1  workfuse.cn

127.0.0.1  worksean.cn

127.0.0.1  wowregister.cn

127.0.0.1  xuyxuyxuy.cn

# [Long Mechies][Monica Devonshire]

127.0.0.1  www.bonesfeed.net

127.0.0.1  www.gorunger.com

127.0.0.1  pscdns.biz

127.0.0.1  www.pscdns.biz

127.0.0.1  adds.trafflow.com

127.0.0.1  adds1.trafflow.com

127.0.0.1  feed.trafflow.com

127.0.0.1  freeimghost.trafflow.com #[Spamdexing]

127.0.0.1  tds.trafflow.com

127.0.0.1  waredom1.com

# [Longview Media][ExitFuel]

127.0.0.1  bigclicks.com

127.0.0.1  www.bigclicks.com

# [Longview Media via AccessMedia Software][Digital Enterprises]

127.0.0.1  download.accessmedia.tv

127.0.0.1  images.accessmedia.tv

127.0.0.1  members.accessmedia.tv

127.0.0.1  secure.accessmedia.tv

127.0.0.1  staging.accessmedia.tv

127.0.0.1  toolbar.accessmedia.tv

127.0.0.1  www.accessmedia.tv

127.0.0.1  www.broadcaster.com

127.0.0.1  download.movieland.com

127.0.0.1  members.movieland.com

127.0.0.1  track.movieland.com

127.0.0.1  www.movieland.com #[Fortinet.Adware/Fuel][McAfee.Adware-Fuel]

127.0.0.1  images.moviepass.tv

127.0.0.1  members.moviepass.tv

127.0.0.1  www.moviepass.tv #[Trojan.Muvipaz]

127.0.0.1  ads.vitalix.net #[images.accessmedia.tv][Trojan.Muvipaz]

127.0.0.1  www.voddirect.com

# [Longview Media via Dawn of Time][Click2Media][Search Networks]

127.0.0.1  search.sidebarsearch.com

# [Lotame][AS40787][74.217.85.0 - 74.217.85.255]

127.0.0.1  bb.crwdcntrl.net

127.0.0.1  bcp.crwdcntrl.net

127.0.0.1  bebo.crwdcntrl.net

127.0.0.1  cdn.crwdcntrl.net

127.0.0.1  coop.crwdcntrl.net

127.0.0.1  huffingtonpost.crwdcntrl.net

127.0.0.1  justjared.crwdcntrl.net

127.0.0.1  multiply.crwdcntrl.net

127.0.0.1  perfspot.crwdcntrl.net

127.0.0.1  vidilife.crwdcntrl.net

# [LV Radio Networks][AS8206][195.216.175.112 - 195.216.175.127]

127.0.0.1  homesy.net #[server down?]

127.0.0.1  loaddasig.com

# [Lycos, Inc][209.202.192.0 - 209.202.255.255]

127.0.0.1  ads.tripod.com #[SpySweeper.Spy.Cookie]

127.0.0.1  ads1.tripod.com #[SunBelt.Tripod]

127.0.0.1  nedstat.tripod.com

127.0.0.1  ads.lycos.com

127.0.0.1  cm8.lycos.com

127.0.0.1  guestworld.tripod.lycos.com

127.0.0.1  client.sidesearch.lycos.com #[Parasite.SideSearch]

127.0.0.1  install.sidesearch.lycos.com #[ADW_SIDESEARCH.A][Adware.SideSearch]

127.0.0.1  titan.guestworld.tripod.lycos.com

# [Lycos via Conversis Gmbh][213.131.252.0 - 213.131.252.255]

127.0.0.1  ads.tripod.lycos.nl #[Ad-Aware.Tracking.Cookie]

127.0.0.1  ads.tripod.lycos.co.uk

127.0.0.1  ads.tripod.lycos.de

127.0.0.1  ads.tripod.lycos.es

# [Lycos Europe][213.193.4.0 - 213.193.4.255]

# [Lycos Europe][213.193.8.0 - 213.193.8.127]

127.0.0.1  ads2.jubii.dk #[ads-dk.spray.net]

127.0.0.1  fe.lea.jubii.dk #[ads-dk.spray.net]

127.0.0.1  fe.lea.lycos.de

127.0.0.1  ads-fr.spray.net #[SpySweeper.Spy.Cookie]

127.0.0.1  fe.lea.spray.se

# [m3 Media Services]

127.0.0.1  d.m3.net

127.0.0.1  i.m3.net

# [Madet Ltd][AS12695][195.2.252.0 - 195.2.253.255]

# [Mainstream Dollars][Iclicks Internet][617577 BC Ltd][65.39.138.0 - 65.39.138.255]

127.0.0.1  billingsupportcenter.com

127.0.0.1  www.billingsupportcenter.com

127.0.0.1  www.slicta.com

127.0.0.1  pur9.killevidence.com

127.0.0.1  www3.killevidence.com

127.0.0.1  www9.killevidence.com

127.0.0.1  www.killevidence.com

127.0.0.1  mainstreamdollars.com

127.0.0.1  www2.mainstreamdollars.com

127.0.0.1  www.mainstreamdollars.com #[W32/HotSearchBar.D]

127.0.0.1  megapornbucks.com #[i-lookup.com]

127.0.0.1  mgallery.megapornbucks.com #[exits.freepornpics.com]

127.0.0.1  www9.megapornbucks.com

127.0.0.1  www.megapornbucks.com

# [Majordomo Llc][78.108.81.0 - 78.108.86.255]

127.0.0.1  elwebsearch.info #[Malicious.Links.Umax]

127.0.0.1  wwv.elwebsearch.info

127.0.0.1  www.elwebsearch.info

# [Mamma Media Solutions via various]

127.0.0.1  ads.mamma.com #[SunBelt.Mamma]

127.0.0.1  ad2.mamma.com

# [Managed Solutions][66.79.160.0 - 66.79.191.255]

127.0.0.1  www.freestats.ws

127.0.0.1  www.getmusicvideocodes.com #[Malicious.Links.Zango]

127.0.0.1  www.gizmoyo.com

127.0.0.1  www.torrentsearcher.net

127.0.0.1  www.whatsthatcode.com #[Malicious.Links.Zango]

# [Marchex][AS40495][174.137.112.0 - 174.137.127.255]

127.0.0.1  drivelinemedia.com

127.0.0.1  images.drivelinemedia.com

127.0.0.1  www.drivelinemedia.com

127.0.0.1  images.enhance.com #[McAfee.Cookie-Enhance]

127.0.0.1  www.enhance.com

127.0.0.1  gflinks.industrybrains.com

127.0.0.1  ilinks.industrybrains.com

127.0.0.1  imglinks.industrybrains.com

127.0.0.1  jlinks.industrybrains.com #[Whois.Blacklisted]

127.0.0.1  links.industrybrains.com

127.0.0.1  shlinks.industrybrains.com

# [Marchex][66.116.109.0 - 66.116.109.127]

127.0.0.1  mdnhinc.com

127.0.0.1  www.siteboxparking.com

127.0.0.1  www.ultsearch.com

# [Marchex][66.116.125.0 - 66.116.125.255]

127.0.0.1  ads.ah-ha.com

127.0.0.1  ads2.ah-ha.com

127.0.0.1  cp.ah-ha.com

127.0.0.1  partner.ah-ha.com #[Troj/Subsear-A][Adware-SSF.dr]

127.0.0.1  secure.ah-ha.com

127.0.0.1  ads.drivelinemedia.com

127.0.0.1  ads2.drivelinemedia.com

127.0.0.1  c.enhance.com #[Panda.Spyware:Cookie/Enhance]

127.0.0.1  goclick.com

127.0.0.1  c.goclick.com #[SpySweeper.Spy.Cookie]

127.0.0.1  c.mdnhinc.com

127.0.0.1  cb.mdnhinc.com

127.0.0.1  title.mximg.com

127.0.0.1  cb.openclick.com

127.0.0.1  images.ultsearch.com

127.0.0.1  imagesb.ultsearch.com

# [Market Engines/Rack Engines][63.243.188.0 - 63.243.188.255]

127.0.0.1  adwarepro.com #[Rogue/Suspect]

127.0.0.1  www.adwarepro.com

127.0.0.1  avforce.com #[SiteAdvisor.avforce.com]

127.0.0.1  cashengines.com #[SiteAdvisor.cashengines.com]

127.0.0.1  click.cashengines.com

127.0.0.1  www.cashengines.com

127.0.0.1  defenza.com

127.0.0.1  www.defenza.com

127.0.0.1  www.downloadlink-2008.com

127.0.0.1  www.dvdsoftwarereview.info

127.0.0.1  fixwinmx.com

127.0.0.1  imusicaccess.com #[SiteAdvisor.imusicaccess.com]

127.0.0.1  click.interactivebrands.com

127.0.0.1  safepay1.interactivebrands.com

127.0.0.1  safepay2.interactivebrands.com

127.0.0.1  safepay4.interactivebrands.com

127.0.0.1  www.interactivebrands.com #[SpyEraser]

127.0.0.1  helpdesk.marketbill.com

127.0.0.1  www.marketbill.com

127.0.0.1  download2.marketengines.com

127.0.0.1  secure.marketengines.com

127.0.0.1  secure3.marketengines.com

127.0.0.1  www.mp3downloading.com

127.0.0.1  www.netspyprotector.com #[Rogue/Suspect]

127.0.0.1  www.powercompress.com

127.0.0.1  richwebmedia.com

127.0.0.1  scripts.richwebmedia.com

127.0.0.1  www.richwebmedia.com

127.0.0.1  www.ultimatemoviedownload.com #[SiteAdvisor.ultimatemoviedownload.com]

# [Market Engines][66.152.85.0 - 66.152.85.255]

# [Marketing Extensions Inc]

127.0.0.1  adshooter.com #[Adware.AdShooter][Wildcard DNS]

127.0.0.1  dl.adshooter.com

127.0.0.1  www.adshooter.com #[SpySweeper.Spy.Cookie]

127.0.0.1  affiliates.coolonlineoffers.com

127.0.0.1  dl.coolonlineoffers.com #[Trojan-Downloader.Win32.Small.hs]

127.0.0.1  www.coolonlineoffers.com

127.0.0.1  www.customersupporthelp.com

127.0.0.1  downloadrevenue.com

127.0.0.1  www.downloadrevenue.com

127.0.0.1  secure6.platinumbucks.com

127.0.0.1  www.platinumbucks.com

127.0.0.1  www.searchexpert.com

127.0.0.1  www.sexfind.com

127.0.0.1  searchforit.com #[eTrust.AdShooter.SearchForIt]

127.0.0.1  www.searchforit.com #[Adware.Searchforit]

127.0.0.1  surfenhance.com

127.0.0.1  www.surfenhance.com

# [Mastak.ru][217.199.217.0 - 217.199.217.255]

# [Masterforex][AS48974][92.38.0.0 - 92.38.7.255]

127.0.0.1  banner.33drugs.com

127.0.0.1  er20090515.com

127.0.0.1  www.pills-delivery.com #[ScamFraudAlert.Pharmacy]

127.0.0.1  r-cgpay-15062009.com

127.0.0.1  rd040609-cgpay.net

127.0.0.1  trisem.com

127.0.0.1  upr15may.com

127.0.0.1  upr0306.com

127.0.0.1  uprtrishest.com

# [Masterhost][AS25532][217.16.27.0 - 217.16.27.255]

127.0.0.1  golden-portal.us

127.0.0.1  mustwatchit.com #[Google.Diagnostic]

127.0.0.1  tubedirects.net

# [Masterhost-hst][83.222.22.0 - 83.222.23.255]

127.0.0.1  aisearche.com #[Spamdexing.Codec]

# [Max Inc]

127.0.0.1  golden-search.com #[Adware-Click]

127.0.0.1  weblocated.net

# [Maxil Communications][24.244.128.0 - 24.244.191.255]

# [Maxil Communications][65.243.100.0 - 65.243.103.255]

# [McHost.Ru][62.152.41.0 - 62.152.44.255]

# [Mc Host.ru][AS6854][83.229.252.0 - 83.229.253.255]

127.0.0.1  erotop.info

# [Mc Host.ru][84.252.148.0 - 84.252.149.255]

# [Mc Host.ru][94.103.80.0 - 94.103.81.255]

127.0.0.1  fasttraff.info

# [Mccolo via various][AS26780][208.72.168.0 - 208.72.175.255]

# [Mccolo via various][64.71.133.128 - 64.71.133.191]

# [Mci Communications / Verizon Business][208.192.0.0 - 208.255.255.255]

127.0.0.1  navealo.com #[Google.Warning]

# [MC Squared][Kestral Communications]

127.0.0.1  www.iboard.com

127.0.0.1  www.mcsqd.com

# [Media Breakaway LLC][OptinRealBig.com][69.6.27.0 - 69.6.27.255]

127.0.0.1  www.cpaempire.com

127.0.0.1  www.cpaempire.net

127.0.0.1  ekmas.com

127.0.0.1  optinbig.com #[SiteAdvisor.optinbig.com]

127.0.0.1  www.optinbig.com

# [Media Breakaway][Scott Richter]

127.0.0.1  aimphuck.com

127.0.0.1  www.aimphuck.com #[HJTH.Look2Me]

127.0.0.1  c4c01.com

127.0.0.1  www.empire404.com

127.0.0.1  megaiconsite.com

127.0.0.1  www.megaiconsite.com

127.0.0.1  login.tracking101.com #[directtrack.com][Ewido.TrackingCookie.Tracking101]

# [Mediacolumn Marketing][Net Nucleus Corp]

127.0.0.1  ny.contentmatch.net #[Trojan.TrustedZones]

127.0.0.1  download.getmirar.com #[Adware.Mirar]

127.0.0.1  www.getmirar.com #[SPYW_GETMIRAR.A]

127.0.0.1  mirarsearch.com

127.0.0.1  click.mirarsearch.com #[Trojan.TrustedZones]

127.0.0.1  redirect.mirarsearch.com #[Trojan.TrustedZones]

127.0.0.1  static.mirarsearch.com

127.0.0.1  www.mirarsearch.com

127.0.0.1  awbeta.net-nucleus.com #[SunBelt.net-nucleus]

127.0.0.1  www.net-nucleus.com #[McAfee.Adware-Mirar]

# [Media Highway International]

127.0.0.1  realtracker.com

127.0.0.1  adserver1.realtracker.com #[SunBelt.RealTracker.com]

127.0.0.1  adserver2.realtracker.com

127.0.0.1  business.realtracker.com

127.0.0.1  free.realtracker.com

127.0.0.1  layout1.realtracker.com

127.0.0.1  project2.realtracker.com

127.0.0.1  talkcity.realtracker.com

127.0.0.1  tpl1.realtracker.com

127.0.0.1  tpl2.realtracker.com

127.0.0.1  web1.realtracker.com #[eTrust.Tracking.Cookie]

127.0.0.1  web2.realtracker.com #[SpySweeper.Spy.Cookie][MVPS.Criteria]

127.0.0.1  web4.realtracker.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  free1.usa.realtracker.com

127.0.0.1  www.realtracker.com

127.0.0.1  free1.realtrackernl.com

127.0.0.1  free.realtrackernl.com

127.0.0.1  11.rtcode.com

127.0.0.1  11.rtstats.com

127.0.0.1  www.nethit-free.nl

127.0.0.1  www.netpoll.nl

# [Media Holding Enterprises]

127.0.0.1  data.context-tool.com

127.0.0.1  www.errors-tool.com

127.0.0.1  playmp3z.biz

127.0.0.1  www.playmp3z.biz

# [Media Hosting]

127.0.0.1  www.hit4hit.com

127.0.0.1  www.hitboss.com #[CA.hitboss.com][SpySweeper.Spy.Cookie]

# [Mediametrie Estat]

127.0.0.1  js.cybermonitor.com #[McAfee.Cookie-Cybermonitor]

# 127.0.0.1  stat3.cybermonitor.com #[affects podcasts]

127.0.0.1  estat.com

127.0.0.1  perso.estat.com #[Ewido.Spyware.Cookie.Estat]

127.0.0.1  prof.estat.com #[SecuritySpace.WebBug]

127.0.0.1  prof.beta.estat.com

127.0.0.1  sky.estat.com

127.0.0.1  www.estat.com

# [Mediaon Karaboga][195.5.168.0 - 195.5.168.255]

127.0.0.1  adsecxnet.ws

127.0.0.1  qualityhitz.net

# [Mermaid Consulting]

127.0.0.1  banners.searchingbooth.com #[Ewido.TrackingCookie.Searchingbooth]

# [Mermaid Consulting][193.189.92.0 - 193.189.93.255]

127.0.0.1  deskwizz.com #[SunBelt.Deskwizz]

127.0.0.1  ads.deskwizz.com

127.0.0.1  apps.deskwizz.com #[TROJ_ENVOLO.B][DR/Dldr.Small.ctp]

127.0.0.1  media.deskwizz.com

127.0.0.1  www.deskwizz.com

127.0.0.1  www.finditlive.com

127.0.0.1  www.jumptothat.com

127.0.0.1  www.link-hunter.com

127.0.0.1  ads.searchingbooth.com

127.0.0.1  www.searchingbooth.com #[Win32/Zquest.A]

127.0.0.1  www.seek-zone.com

# [MetriWeb][212.35.126.128 - 212.35.126.191]

127.0.0.1  automagazine.metriweb.be

127.0.0.1  hln-frinfos.metriweb.be

127.0.0.1  levif.metriweb.be

127.0.0.1  line01.metriweb.be #[Ad-Aware.Tracking.Cookie]

127.0.0.1  line02.metriweb.be

127.0.0.1  line03.metriweb.be

127.0.0.1  line04.metriweb.be #[SpySweeper.Spy Cookie]

127.0.0.1  line05.metriweb.be

127.0.0.1  line06.metriweb.be

127.0.0.1  line07.metriweb.be #[Panda.Spyware:Cookie]

127.0.0.1  line08.metriweb.be

127.0.0.1  line09.metriweb.be

127.0.0.1  line10.metriweb.be

127.0.0.1  line11.metriweb.be

127.0.0.1  line12.metriweb.be

127.0.0.1  line13.metriweb.be

127.0.0.1  line14.metriweb.be

127.0.0.1  line15.metriweb.be

127.0.0.1  line16.metriweb.be

127.0.0.1  line17.metriweb.be

127.0.0.1  line18.metriweb.be

127.0.0.1  line19.metriweb.be

127.0.0.1  line20.metriweb.be

127.0.0.1  line24.metriweb.be

127.0.0.1  line26.metriweb.be

127.0.0.1  line32.metriweb.be

127.0.0.1  rtbf09.metriweb.be

127.0.0.1  skynet-news.metriweb.be

127.0.0.1  startpagina.metriweb.be

# [MicroSmarts Enterprise]

127.0.0.1  www.popupbegone.com

127.0.0.1  searchgateway.net #[Parasite.SearchGateway]

127.0.0.1  www.searchgateway.net

127.0.0.1  www.secure-processingcenter.com

127.0.0.1  showbehind.com #[Adware.ShowBehind]

127.0.0.1  www.showbehind.com #[ADW_SWIND.A]

127.0.0.1  www.spywarebegone.com

127.0.0.1  spywarevanisher.com

127.0.0.1  www.spywarevanisher.com

127.0.0.1  worldusa.com #[Trojan.Win32.StartPage.oz]

127.0.0.1  www.worldusa.com #[Trojan.StartPage-CD]

127.0.0.1  www.zipitfast.com

# [Microsoft via various]

127.0.0.1  ad2.adecn.com #[Google.Diagnostic]

127.0.0.1  ad5.adecn.com #[SpySweeper.Spy.Cookie]

127.0.0.1  cds.adecn.com #[p.mii.instacontent.net]

127.0.0.1  fastcounter.bcentral.com #[SecuritySpace.WebBug]

127.0.0.1  fcstats.bcentral.com

127.0.0.1  analytics.live.com

127.0.0.1  digg.analytics.live.com #[WebBug]

127.0.0.1  a.ads2.msn.com

127.0.0.1  ads2.msn.com

127.0.0.1  analytics.msn.com

127.0.0.1  madserver.net

127.0.0.1  ad.madserver.net

127.0.0.1  a.global.msads.net

127.0.0.1  global.msads.net

# [Microsoft via MSN Ad Servers]

127.0.0.1  adsyndication.msn.com

127.0.0.1  ac2.msn.com

127.0.0.1  analytics.r.msn.com

127.0.0.1  msnads-wm9.fplive.net #[MSN Video Ads]

127.0.0.1  0.r.msn.com #[microsoft_adcenter]

127.0.0.1  ads.msn.com

127.0.0.1  ads1.msn.com

127.0.0.1  a.ads1.msn.com #[global.msads.net.c.footprint.net]

127.0.0.1  b.ads1.msn.com

127.0.0.1  ads.eu.msn.com

127.0.0.1  ads.ninemsn.com.au

127.0.0.1  direct.ninemsn.com.au

127.0.0.1  arc2.msn.com

127.0.0.1  arc3.msn.com

127.0.0.1  arc9.msn.com

127.0.0.1  popup.msn.com

# 127.0.0.1  rad.msn.com #[affects MSN Messenger]

127.0.0.1  a.rad.msn.com #[ADSAdClient31.dll]

127.0.0.1  b.rad.msn.com

127.0.0.1  rmads.msn.com

127.0.0.1  rmads.eu.msn.com

# [Microsoft via aQuantive Inc]

127.0.0.1  www.avenuea.com

127.0.0.1  c.atdmt.com

127.0.0.1  click.atdmt.com #[McAfee.Cookie-Atdmt][Google.Diagnostic]

# 127.0.0.1  clk.atdmt.com #[disabled affects MS downloads]

127.0.0.1  image.atdmt.com

127.0.0.1  ll.atdmt.com #[atlasdmt.vo.llnwd.net]

127.0.0.1  mir.atdmt.com #[p.mii.instacontent.net]

127.0.0.1  nc.atdmt.com #[EventTracking]

127.0.0.1  rmd.atdmt.com #[a898.x.akamai.net]

127.0.0.1  spd.atdmt.com #[a796.x.akamai.net]

127.0.0.1  spe.atdmt.com

127.0.0.1  srch.atdmt.com

# 127.0.0.1  switch.atdmt.com #[disabled affects Hotmail signup]

127.0.0.1  view.atdmt.com #[eTrust.Tracking.Cookie]

127.0.0.1  www.atdmt.com #[AveA Action Tag][Ewido.TrackingCookie.Atdmt]

127.0.0.1  atlasdmt.com #[Panda.Spyware:Cookie/Atlas DMT]

127.0.0.1  www.atlasdmt.com

127.0.0.1  ads.adagent.chacha.com

127.0.0.1  ads.bidclix.com #[eTrust.BidClix]

127.0.0.1  www.bidclix.com

127.0.0.1  bidclix.net

127.0.0.1  www.bidclix.net

127.0.0.1  main.click-url.com #[SiteAdvisor.zango.com]

127.0.0.1  spd.netconversions.com

127.0.0.1  track.roiservice.com #[McAfee.Cookie-Roiservice]

# [Microsoft via aQuantive / Accipiter]

127.0.0.1  ad101com-images.adbureau.net #[Ad-Aware.Tracking.Cookie]

127.0.0.1  admse001-images.adbureau.net

127.0.0.1  capitali-images.adbureau.net #[a900.g.akamai.net]

127.0.0.1  creview-images.adbureau.net #[a900.g.akamai.net]

127.0.0.1  cvapts-images.adbureau.net

127.0.0.1  divx-images.adbureau.net

127.0.0.1  dlook-images.adbureau.net

127.0.0.1  ffxd-images.adbureau.net

127.0.0.1  granada-images.adbureau.net

127.0.0.1  haynet-images.adbureau.net

127.0.0.1  hbpl-images.adbureau.net

127.0.0.1  iacas.adbureau.net

127.0.0.1  itv-images.adbureau.net

127.0.0.1  metro-images.adbureau.net

127.0.0.1  npr-images.adbureau.net

127.0.0.1  ozone-images.adbureau.net

127.0.0.1  pgcom.adbureau.net

127.0.0.1  photobkt-images.adbureau.net

127.0.0.1  questex-images.adbureau.net

127.0.0.1  realtrac-images.adbureau.net

127.0.0.1  tremor-images.adbureau.net

127.0.0.1  trvlnet.adbureau.net

127.0.0.1  display.hbpl.co.uk #[hbpl.adbureau.net]

# [Microsoft via aQuantive / Accipiter][122.248.157.0 - 122.248.157.255]

127.0.0.1  direct.fairfax.com.au #[ffxd.adbureau.net]

# [Microsoft via aQuantive Inc][64.74.197.0 - 64.74.197.255]

127.0.0.1  ad101com.adbureau.net #[a900.g.akamai.net]

127.0.0.1  admse001.adbureau.net

127.0.0.1  ads.apn.co.nz #[McAfee.Cookie-Apn]

127.0.0.1  cent.adbureau.net

127.0.0.1  cgm.adbureau.net

127.0.0.1  cmn.adbureau.net

127.0.0.1  content.adbureau.net

127.0.0.1  creview.adbureau.net

127.0.0.1  devart.adbureau.net

127.0.0.1  divx.adbureau.net

127.0.0.1  eb.adbureau.net

127.0.0.1  equifax.adbureau.net

127.0.0.1  fdau.adbureau.net

127.0.0.1  granada.adbureau.net

127.0.0.1  imediac.adbureau.net

127.0.0.1  inl.adbureau.net

127.0.0.1  mediapst.adbureau.net

127.0.0.1  metro.adbureau.net

127.0.0.1  ordie.adbureau.net

127.0.0.1  reunion.adbureau.net

127.0.0.1  secure.adbureau.net

127.0.0.1  sixapart.adbureau.net

127.0.0.1  sportsad.adbureau.net

127.0.0.1  videoegg.adbureau.net

127.0.0.1  www.adbureau.net

127.0.0.1  venture.boulevards.com #[metro.adbureau.net]

127.0.0.1  www.g-wizzads.net

127.0.0.1  ads.itv.com

127.0.0.1  ads.mediamayhemcorp.com

127.0.0.1  inv.questex.com #[questex.adbureau.net]

127.0.0.1  wa.taunton.com #[taunton.adbureau.net]

# [MindViz]

127.0.0.1  ads.mindviz.com #[SiteAdvisor.mindviz.com]

127.0.0.1  traffic.mindviz.com

127.0.0.1  mylinkbox.com

127.0.0.1  box.mylinkbox.com

127.0.0.1  mvtracker.com #[MindViz Tracking Code]

127.0.0.1  ft.mvtracker.com

127.0.0.1  www.mvtracker.com

# [Mirror Image Internet][216.38.160.0 - 216.38.175.255]

127.0.0.1  beacon.clickequations.net #[WebBug]

127.0.0.1  js.clickequations.net #[w11.b.cap-mii.net]

127.0.0.1  c.mii.instacontent.net

127.0.0.1  cserver.mii.instacontent.net

127.0.0.1  p.mii.instacontent.net

127.0.0.1  pd.mii.instacontent.net

127.0.0.1  pdownload.mii.instacontent.net

127.0.0.1  pserver.mii.instacontent.net

127.0.0.1  secure.instacontent.net

127.0.0.1  omniture.secure.miisolutions.net

# [Miva Corporation][FindWhat.com, Inc][Starware]

127.0.0.1  cache.bandofbuddies.com #[p.mii.instacontent.net]

127.0.0.1  www.bandofbuddies.com

127.0.0.1  bandofbuddys.com

127.0.0.1  www.cursorcafe.com

127.0.0.1  admedia.xmlsearch.findwhat.com #[SpySweeper.Spy.Cookie]

127.0.0.1  netster.xmlsearch.findwhat.com #[SunBelt.Findwhat]

127.0.0.1  us01.xmlsearch.findwhat.com

127.0.0.1  analytics.findwhat.com #[Ad Analyzer Code][Google.Diagnostic]

127.0.0.1  getfound.com #[Parasite.GogoTools]

127.0.0.1  search.getfound.com

127.0.0.1  www.getfound.com #[Troj/Getfound-A]

127.0.0.1  arx.us.miva.com #[MIVA AdRevenue][SiteAdvisor.reka-traffa.com]

127.0.0.1  cb.us.miva.com

127.0.0.1  search.uk.miva.com

127.0.0.1  iad.xmlsearch.miva.com

127.0.0.1  v10.xmlsearch.miva.com #[McAfee.Adware-Zeno]

127.0.0.1  cachef.screensavers.com #[p.mii.instacontent.net]

127.0.0.1  f.screensavers.com #[Fortinet.Adware/Cometsys]

127.0.0.1  www.screensavers.com #[AdWare.Win32.Comet.bd]

127.0.0.1  www.searchfeed.com

127.0.0.1  files.searchrover.net

127.0.0.1  www.smileytown.com

127.0.0.1  as.starware.com #[Adware.Starware]

127.0.0.1  cachetry.starware.com #[p.mii.instacontent.net]

127.0.0.1  files-pl.starware.com #[Adware.Starware.F]

127.0.0.1  h.starware.com #[SpySweeper.Adware.starware][server down?]

127.0.0.1  my.starware.com

127.0.0.1  search.starware.com #[McAfee.Adware-Starware]

127.0.0.1  sl.starware.com #[AdWare.Win32.Comet.aq]

127.0.0.1  try.starware.com #[SunBelt.Starware.Toolbar]

127.0.0.1  www.starware.com #[McAfee.Adware-StartToolBar]

127.0.0.1  as.weatherstudio.com #[McAfee.WStudio]

127.0.0.1  files.weatherstudio.com

127.0.0.1  my.weatherstudio.com

127.0.0.1  try.weatherstudio.com #[try.starware.com]

127.0.0.1  www.weatherstudio.com

# [Mizunet][203.202.236.0 - 203.202.239.255]

127.0.0.1  mexsexporno.com

127.0.0.1  www.mexsexporno.com

# [Mizuwork Singapore][203.174.83.0 - 203.174.83.255]

# [Morva Isp][79.132.192.0 - 79.132.207.0]

# [Muenet Gbr][AS24940][78.46.152.0 - 78.46.152.63]

127.0.0.1  av-lookup.com

127.0.0.1  www.av-lookup.com

127.0.0.1  www.bucksware-admin.com #[Fraudware.Pandora-Software]

127.0.0.1  spy-protector-pro.com

127.0.0.1  www.spy-protector-pro.com

# [Multacom][TrekEight][AS35916][72.44.64.0 - 72.44.79.255]

127.0.0.1  advancedsoftwaresupport.com

127.0.0.1  www.errornuker.com

127.0.0.1  www.evidencenuker.com

127.0.0.1  spamnuker.com

127.0.0.1  www.spamnuker.com

127.0.0.1  www.spywarenuker.com #[Adware.SpywareNuker]

127.0.0.1  db.threatnuker.com

127.0.0.1  www.threatnuker.com #[Symantec.ThreatNuker]

# [myGeek.com][12.47.196.39 - 12.47.196.56]

127.0.0.1  www.adondirect.com

127.0.0.1  testing.adontext.com

127.0.0.1  www.adonnetwork.com

127.0.0.1  www.expandsearch.com #[Adware.Expand]

127.0.0.1  amazing.mygeek.com #[SunBelt.MyGeek.com]

127.0.0.1  categories.mygeek.com #[SiteAdvisor.mygeek.com]

127.0.0.1  click.mygeek.com

127.0.0.1  partners.mygeek.com #[SearchCentrix]

127.0.0.1  seek4freetoolbar.mygeek.com

127.0.0.1  tp.mygeek.com

127.0.0.1  www.mygeekdirect.com

127.0.0.1  www.mygeeksearch.com

127.0.0.1  searchcentrix.com #[Adware.SideBar][Adware.SearchCentrix]

127.0.0.1  if.searchcentrix.com #[StartPage-GN]

127.0.0.1  internetfuel.searchcentrix.com

127.0.0.1  www.searchcentrix.com #[VisiCom.SearchCentric]

# [myGeek.com][66.179.234.160 - 66.179.234.191]

127.0.0.1  tags.adcde.com

127.0.0.1  adonlist.com

127.0.0.1  adonlistings.com

127.0.0.1  context.adontext.com

127.0.0.1  context2.adontext.com

127.0.0.1  popunder.adtrgt.com

127.0.0.1  transition.adtrgt.com

127.0.0.1  url.adtrgt.com

127.0.0.1  ad.cpvfeed.com #[SiteAdvisor.cpvfeed.com]

127.0.0.1  keyword.cpvfeed.com

127.0.0.1  url.cpvfeed.com

127.0.0.1  mbkwbar.com

127.0.0.1  ads.mbkwbar.com

127.0.0.1  config.mbkwbar.com #[Adware.MBKWbar]

127.0.0.1  report.mbkwbar.com #[Ewido.Spyware.BetterInternet]

127.0.0.1  www.mbkwbar.com

127.0.0.1  media2.mediafileshost.com

127.0.0.1  offeroptimizer.mygeek.com

127.0.0.1  searchhippo.mygeek.com

127.0.0.1  webalize.mygeek.com

# [myGeek.com][66.45.56.96 - 66.45.56.127]

127.0.0.1  campaign.cpvfeed.com

127.0.0.1  conversion.cpvfeed.com

127.0.0.1  roitrack.cpvfeed.com #[Ewido.TrackingCookie.Cpvfeed]

127.0.0.1  xmlsearch.mygeek.com

# [myGeek.com via various][AdOn Network][Visicom Media]

127.0.0.1  banner.addlvr.com

127.0.0.1  rmedia.adonnetwork.com

127.0.0.1  banner.adtrgt.com #[Google.Diagnostic]

127.0.0.1  cpvtext.cpvfeed.com

127.0.0.1  downloads.searchcentrix.com #[SomaticCAB.Setup]

127.0.0.1  vmn.net

# [My Web Factory][AS47143][91.205.96.0 - 91.205.99.255]

# [Name Administration Inc]

127.0.0.1  2o7.com

127.0.0.1  www.2o7.com

127.0.0.1  images.15x.net

127.0.0.1  track.15x.net

127.0.0.1  wdc.15x.net

127.0.0.1  ws1.15x.net

127.0.0.1  ws2.15x.net

127.0.0.1  ws3.15x.net

127.0.0.1  www.downloadboost.com #[eTrust.Win32/Beovens]

127.0.0.1  linkz.com #[Adware.AdBlock]

127.0.0.1  adblock.linkz.com #[AdBlock APInstaller Class]

127.0.0.1  www2.linkz.com

127.0.0.1  www.linkz.com

127.0.0.1  litas.com #[Trojan.backdoor.win32.agent.KY]

127.0.0.1  munky.com

127.0.0.1  www.munky.com

127.0.0.1  nameadmininc.com

127.0.0.1  www.nameadmininc.com

127.0.0.1  www.nameadministration.com

127.0.0.1  namedia.com

127.0.0.1  www.pagina.com

127.0.0.1  pimpout.com

127.0.0.1  www.pimpout.com

127.0.0.1  www.searchmagnifier.com

127.0.0.1  virtumondo.com

# [NavExcel Group]

127.0.0.1  navexcel.com #[eTrust.NavExcel][Adware.NavHelper]

127.0.0.1  www.navexcel.com #[SiteAdvisor.navexcel.com][Win32/Adware.NavExcel]

127.0.0.1  navx3.tempdomainname.com #[SiteAdvisor.totallyfreegames.com]

127.0.0.1  www.trustedsearch.com #[eTrust.Navexcel]

# [NebuAd]

127.0.0.1  a.faireagle.com

127.0.0.1  www.faireagle.com

# [Phorm Ipv4 Assignment][89.145.112.0 - 89.145.113.255][Adware.Webwise]

# [Neosurge][AS6939][64.62.141.0 - 64.62.141.255]

# [Net Access][209.123.0.0 - 209.123.255.255]

127.0.0.1  banit.info #[Spamdexing]

127.0.0.1  janit.info #[Spamdexing]

127.0.0.1  onlinetube.info

127.0.0.1  redirectx.net #[Malicious.Links]

127.0.0.1  run-search.net #[Google.Diagnostic][server down?]

127.0.0.1  theteenxxx.com #[IFrame.Exploit]

127.0.0.1  www.theteenxxx.com

# [Net Access][AS8001][64.21.0.0 - 64.21.191.255]

127.0.0.1  adultsxplorer.com

127.0.0.1  entireadult.com

127.0.0.1  foteens.com #[Google.Diagnostic]

127.0.0.1  freenylon.net

127.0.0.1  georedirect.org

127.0.0.1  inbabes.com #[IFrame.Exploit]

127.0.0.1  moviesgangsta.com

127.0.0.1  offgirls.com #[Google.Diagnostic]

127.0.0.1  www.offgirls.com

127.0.0.1  pink-top.com #[Google.Diagnostic]

127.0.0.1  sunmpegs.com

127.0.0.1  www.sunmpegs.com

127.0.0.1  virginfoto.com #[Google.Diagnostic]

127.0.0.1  whoopmovies.com

# [Net Access][64.247.0.0 - 64.247.63.255]

127.0.0.1  adod.info

127.0.0.1  htfind.com

127.0.0.1  ilseek.com

127.0.0.1  onlyfreebies.net #[Spamdexing]

127.0.0.1  pickfeed.com

127.0.0.1  search-fusion.com

127.0.0.1  www.search-fusion.com

127.0.0.1  searchmetal.com

127.0.0.1  seekdir.com

127.0.0.1  www.seekdir.com

127.0.0.1  vidsparade.com #[Malicious.Links]

# [Net Access][66.246.0.0 - 66.246.255.255]

127.0.0.1  awm-dream.com #[Parasite.CoolWebSearch.InternetMgr]

127.0.0.1  stats.bspornsite.com

# [Net Access][AS8001][66.29.0.0 - 66.29.127.255]

127.0.0.1  123-ptp.com

127.0.0.1  www.123-ptp.com

127.0.0.1  www.allsearchers.com

127.0.0.1  antivirus-defender.com

127.0.0.1  www.antivirus-defender.com

127.0.0.1  hot-virgins.net #[Spamdexing.Codec]

127.0.0.1  nuts-fruit.ru

127.0.0.1  oneppc.com

127.0.0.1  www.seek4shop.com

127.0.0.1  teen-cuties.biz

# [Net Access][67.196.0.0 - 67.196.255.255]

# [Net Access][70.47.0.0 - 70.47.255.255]

# [netBridge Limited Cyprus]

127.0.0.1  ads.softure.com

127.0.0.1  adserver.softure.com

127.0.0.1  stat1.trafic.ro

127.0.0.1  www.trafic.ro

# [Netcathosting][195.225.176.0 - 195.225.179.255]

127.0.0.1  vip-pharmacy.org

# [Netdirect-lnwservers][AS28753][212.95.37.128 - 212.95.37.255]

# [Netdirect-1fhorg][AS28753][212.95.48.0 - 212.95.48.255]

127.0.0.1  superbabaeb.info

# [Netdirect-omni-tek][78.159.122.0 - 78.159.122.255]

# [Netdirect][89.149.192.0 - 89.149.255.255]

127.0.0.1  thexor.com #[Spamdexing.Codec]

# [Netdirect][95.168.182.0 - 95.168.182.255]

127.0.0.1  searchi2009.com #[klikadvertising]

# [Netdirect-uab-retrogarsas][89.149.235.0 - 89.149.235.255]

# [Netdirekt][212.95.32.0 - 212.95.35.255]

127.0.0.1  bigstat.net

127.0.0.1  greatstat.com

# [Netdirekt][212.95.37.128 - 212.95.37.255]

# [Netdirekt][217.20.112.0 - 217.20.112.255]

127.0.0.1  internetserviceteam.com

# [Netdirekt][217.20.113.0 - 217.20.116.255]

127.0.0.1  exit-ad.de #[Ad-Aware.Tracking.Cookie]

127.0.0.1  www.exit-ad.de

127.0.0.1  topnetsearcher.com

# [Netdirekt][217.20.118.0 - 217.20.118.255]

127.0.0.1  adulthotspot.net

127.0.0.1  thelustplace.com

# [Netdirekt][AS28753][217.20.121.0 - 217.20.121.255]

127.0.0.1  infolinfo.info

127.0.0.1  videosdivx.net #[Malicious.Links.Codec]

# [Netdirekt][217.20.124.16 - 217.20.124.31]

# [Netdirekt][78.159.96.0 - 78.159.103.255]

127.0.0.1  20bestsearch.com #[klikadvertising]

127.0.0.1  any4scan.com

127.0.0.1  fusescan4.com

127.0.0.1  goeasyscan.com

127.0.0.1  gohighscan.com

127.0.0.1  golistscan.com

127.0.0.1  gomodescan.com

127.0.0.1  goplanscan.com

127.0.0.1  goscanfull.com

127.0.0.1  goscanlist.com

127.0.0.1  goscanopen.com

127.0.0.1  goscanplan.com

127.0.0.1  goscantip.com

127.0.0.1  goslotscan.com

127.0.0.1  gotscan.com

127.0.0.1  gowithscan.com

127.0.0.1  hffny.co.cc

127.0.0.1  in4ik.com #[Google.Diagnostic]

127.0.0.1  openscan4.com

127.0.0.1  scan4any.com

127.0.0.1  scan4data.com #[Google.Diagnostic]

127.0.0.1  scanfuse4.com

127.0.0.1  scanopen4.com

127.0.0.1  scanuser4.com

127.0.0.1  slotscan4.com

127.0.0.1  x888x.info #[Malicious.Links.Codec]

127.0.0.1  wayscan4.com

# [Netdirekt][78.159.112.0 - 78.159.115.255]

127.0.0.1  antivirussecurity-solution.com

127.0.0.1  www.antivirussecurity-solution.com

127.0.0.1  goelitescan.com

127.0.0.1  search-hot-sites.com

# [Netdirekt][78.159.118.0 - 78.159.121.255]

# [Netdirekt via Gibibits-ltd][AS28753][78.159.122.0 - 78.159.122.255]

127.0.0.1  fi97.net

127.0.0.1  maturedreamgirls.com

127.0.0.1  teen-asian-girls.com

# [Netdirekt][84.16.224.0 - 84.16.224.255]

# [Netdirekt][84.16.227.0 - 84.16.227.255]

# [Netdirekt][84.16.228.0 - 84.16.228.255]

# [Netdirekt][84.16.229.0 - 84.16.229.255]

127.0.0.1  biztraff.eu #[Google.Diagnostic]

# [Netdirekt][84.16.230.0 - 84.16.230.255]

127.0.0.1  audionewz.net

127.0.0.1  engseo.net

127.0.0.1  filezzzz.com #[Spamdexing.Codec][server down?]

127.0.0.1  film-obzor.net

127.0.0.1  free-porn-video-free-porn.com #[Fake.PornTube.Codec]

127.0.0.1  mike4id.com

127.0.0.1  pornhub-x.com

# [Netdirekt][84.16.231.0 - 84.16.231.255]

# [Netdirekt][84.16.234.0 - 84.16.235.255]

127.0.0.1  adultfriendfiner.us

127.0.0.1  bestsexyes.com

127.0.0.1  directsextoy.com

127.0.0.1  gen6scan.info

127.0.0.1  in6ch.com

127.0.0.1  in6iq.com

127.0.0.1  in6sd.com

127.0.0.1  scannote6.info

127.0.0.1  sexlinkworld.com #[Spamdexing.Codec]

127.0.0.1  ad.storeoffering.net

# [Netdirekt][84.16.242.64 - 84.16.242.255]

127.0.0.1  nickdick.cn #[Google.Diagnostic]

127.0.0.1  orangepussy.cn

127.0.0.1  pharmshop.cn #[Spamdexing.Codec]

127.0.0.1  tutty.cn

# [Netdirekt][84.16.243.0 - 84.16.243.255]

# [Netdirekt][84.16.251.0 - 84.16.252.255]

127.0.0.1  bu-v.com #[klikadvertising]

127.0.0.1  erexvid.com #[klikadvertising]

127.0.0.1  jii.be #[Spamdexing.Codec]

127.0.0.1  paytrustonline.com

127.0.0.1  rx-click.com

127.0.0.1  searchporn.biz #[Google.Diagnostic]

127.0.0.1  top10results.org

127.0.0.1  vassariumbig.com

127.0.0.1  vassariumpromo.com

127.0.0.1  worldbestpay.com

# [Netdirekt][89.149.195.0 - 89.149.195.255]

127.0.0.1  drocherweb.com

127.0.0.1  wholostkate.com

# [Netdirekt][89.149.199.0 - 89.149.199.255]

# [Netdirekt][89.149.201.0 - 89.149.201.255]

# [Netdirekt][89.149.202.0 - 89.149.202.255]

# [Netdirekt][89.149.207.0 - 89.149.207.255]

127.0.0.1  addedantivirusonline.com

127.0.0.1  addedantivirusstore.com

127.0.0.1  addedantiviruslive.com

127.0.0.1  addedantiviruspro.com

127.0.0.1  bestcountedantivirus.com

127.0.0.1  countedantiviruspro.com

127.0.0.1  easyaddedantivirus.com

127.0.0.1  freeantivirusplus09.com

127.0.0.1  getantivirusplus09.com

127.0.0.1  myplusantiviruspro.com

127.0.0.1  new-york-images.com

127.0.0.1  realantivirusplus09.com

127.0.0.1  smartantivirusplus09.com

127.0.0.1  yourcountedantivirus.com

# [Netdirekt][89.149.208.0 - 89.149.209.255]

# [Netdirekt][89.149.216.0 - 89.149.217.255]

127.0.0.1  goldsoftwarestore.com

127.0.0.1  secure.goldsoftwarestore.com

127.0.0.1  tds.trigers.ru

# [Netdirekt][89.149.220.0 - 89.149.221.255]

# [Netdirekt][AS28753][89.149.226.0 - 89.149.227.255]

127.0.0.1  www.allsearch.name

127.0.0.1  bikinimodel.name

127.0.0.1  www.celebstube.net #[Spamdexing.Codec]

127.0.0.1  cuteyoungvirgin.com

127.0.0.1  www.mexfeed.com

127.0.0.1  www.ipcounter.de

127.0.0.1  nymphets.name

127.0.0.1  www.some-soft.com #[klikadvertising]

127.0.0.1  in.valik.biz

# [Netdirekt][89.149.228.0 - 89.149.229.255]

# [Netdirekt][89.149.241.0 - 89.149.244.255]

127.0.0.1  4netbanners.com

127.0.0.1  admed.net.ru

127.0.0.1  allstarclick.com

127.0.0.1  perfect-banner.com #[server down?]

127.0.0.1  seekforweb.com #[klikdomains.com]

127.0.0.1  superbuymed.info

127.0.0.1  traflab.com #[Vivids Media GmbH]

# [Netdirekt][89.149.251.0 - 89.149.252.255]

# [Netdirekt][89.149.253.0 - 89.149.255.255]

127.0.0.1  s-e-arch.com

# [Netdirekt][95.168.163.0 - 95.168.164.255]

127.0.0.1  secure.bestbillingpro.com

# [Netelligent][AS10929][209.44.96.0 - 209.44.127.255]

127.0.0.1  areascan4.info

127.0.0.1  bestyourtrust.com

127.0.0.1  fanscan4.com

127.0.0.1  finescan4.info

127.0.0.1  fullscan4.info

127.0.0.1  goalscan4.info

127.0.0.1  gometascan.com

127.0.0.1  gomorescan.com

127.0.0.1  gorichscan.com

127.0.0.1  goscanfix.com

127.0.0.1  goscankey.com

127.0.0.1  goscanmeta.com

127.0.0.1  goscanmore.com

127.0.0.1  goscantop.com

127.0.0.1  goscanrich.com

127.0.0.1  goscansoon.com

127.0.0.1  gosoonscan.com

127.0.0.1  hortshieldpc.com

127.0.0.1  in4ck.com #[server down?]

127.0.0.1  in4st.com #[server down?]

127.0.0.1  in4tk.com #[server down?]

127.0.0.1  ina4id.com #[server down?]

127.0.0.1  intellectsecfind.com

127.0.0.1  joinsecuritytools.com

127.0.0.1  modescan4.info #[server down?]

127.0.0.1  netsecurityworks.com

127.0.0.1  note4scan.info #[server down?]

127.0.0.1  onescan4.info

127.0.0.1  page4scan.info

127.0.0.1  pagescan4.info

127.0.0.1  secure.paysecureorder.com

127.0.0.1  planscan4.info

127.0.0.1  portscan4.info #[server down?]

127.0.0.1  rayscan4.com

127.0.0.1  scan4into.info

127.0.0.1  scannote4.info #[server down?]

127.0.0.1  scantop4.com

127.0.0.1  scantrustsecurity.com #[server down?]

127.0.0.1  securitytoolsdirect.com #[in32/Kryptik.UR]

127.0.0.1  souptotalsecurity.com

127.0.0.1  stabilitytools.com #[Win32/Kryptik.UD]

127.0.0.1  systemsecurityonline.com #[Win32/Adware.WinWebSecurity]

127.0.0.1  systemsecuritytool.com

127.0.0.1  system-tuner.net

127.0.0.1  top4scan.com

127.0.0.1  totalsitesarchive.com

# [NetIQ Corporation][Web Trends][Tracking Service]

127.0.0.1  ctix8.cheaptickets.com #[cheaptickets.webtrends.akadns.net]

127.0.0.1  wt.o.nytimes.com #[WebBug]

127.0.0.1  wt.ticketmaster.com #[ticketmaster.webtrends.akadns.net]

127.0.0.1  m.webtrends.com #[microsoft.webtrends.akadns.net]

127.0.0.1  webtrendslive.com #[SmartSource Data Collector]

127.0.0.1  statse.webtrendslive.com #[SDC Advanced Tracking Code]

127.0.0.1  dcs.wtlive.com #[SpySweeper.Spy.Cookie]

127.0.0.1  dcstest.wtlive.com

127.0.0.1  www.webtrends.net #[SunBelt.WebTrends]

# [NetIQ via Misc Sites]

127.0.0.1  wtrs.101com.com

127.0.0.1  sdc.bloodhorse.com

127.0.0.1  sdc.caranddriver.com

127.0.0.1  dcs.mattel.com

127.0.0.1  sdc.goapply.com

127.0.0.1  sdc.bettycrocker.com

127.0.0.1  sdc.boxtops4education.com

127.0.0.1  sdc.brightcove.com

127.0.0.1  sdc.ca.com

127.0.0.1  sdc.dishnetwork.com

127.0.0.1  sdc.dn.no

127.0.0.1  sdc.dtag.com

127.0.0.1  sdc.entertainment.com

127.0.0.1  sdc.flyingmag.com

127.0.0.1  sdc.francetelecom.com

127.0.0.1  sdc.grandsphere.net

127.0.0.1  sdc.hfmus.com

127.0.0.1  ssdc.icelandair.com

127.0.0.1  ssdc.icelandair.is

127.0.0.1  ssdc.icelandair.net

127.0.0.1  sdc.jumptheshark.com

127.0.0.1  sdc.kaboose.com

127.0.0.1  sdc.livingchoices.com

127.0.0.1  sdc.mcafee.com #[statse.webtrendslive.com]

127.0.0.1  sdc.netiq.com

127.0.0.1  sdc.plannedparenthood.org

127.0.0.1  sdc.radio-canada.ca

127.0.0.1  sdc.rbistats.com

127.0.0.1  sdc.roadandtrack.com

127.0.0.1  sdc.subway.com

127.0.0.1  sdc.traderonline.com

127.0.0.1  sdc.tulsaworld.com

127.0.0.1  sdc.valpak.com

127.0.0.1  sdc.tvguide.com

127.0.0.1  sdc.usps.com

127.0.0.1  sdc.vml.com

127.0.0.1  sdc.windowsmarketplace.com

127.0.0.1  wdcs.trendmicro.com

127.0.0.1  metrics.mms.mavenapps.net #[statse.webtrendslive.com]

127.0.0.1  webtrends.telegraph.co.uk

# [Net Of National][85.249.128.0 - 85.249.143.255]

# [NetNation via Trafficaces][64.40.96.0 - 64.40.127.255]

127.0.0.1  680130.net #[ADW_DLOADER.NT]

127.0.0.1  adserv.680130.net

127.0.0.1  update.680130.net

127.0.0.1  www.680130.net

127.0.0.1  antivirusadvanced.com

127.0.0.1  www.antivirusadvanced.com

# [Netplace][AS44259][77.91.225.224 - 77.91.225.239]

# [Netplace][77.91.227.176 - 77.91.227.191]

# [Netplace][77.91.229.32 - 77.91.229.47]

127.0.0.1  newv2count.net #[Google.Diagnostic]

127.0.0.1  v2count.net #[Javascript.Exploit]

127.0.0.1  v2statscount.net #[Javascript.Exploit]

# [Netplace][92.241.176.0 - 92.241.177.255]

127.0.0.1  total-malwareprotection.com

127.0.0.1  setup.total-malwareprotection.com

127.0.0.1  www.total-malwareprotection.com

127.0.0.1  total-virusprotection.com

127.0.0.1  setup.total-virusprotection.com #[Win32/Adware.VirusRemover]

127.0.0.1  stats.total-virusprotection.com

127.0.0.1  www.total-virusprotection.com

127.0.0.1  xpvirusprotection2009.com

127.0.0.1  setup.xpvirusprotection2009.com #[getdwnld.com][209.160.21.4]

127.0.0.1  www.xpvirusprotection2009.com

# [Netsaits BV]

127.0.0.1  cz2.clickzs.com #[SpySweeper.Spy.Cookie]

127.0.0.1  cz3.clickzs.com

127.0.0.1  cz4.clickzs.com #[Malicious.Links.Codec]

127.0.0.1  cz5.clickzs.com

127.0.0.1  cz6.clickzs.com

127.0.0.1  cz7.clickzs.com #[Ewido.TrackingCookie.Clickzs]

127.0.0.1  cz8.clickzs.com

127.0.0.1  cz9.clickzs.com

127.0.0.1  cz11.clickzs.com

127.0.0.1  js.clickzs.com

127.0.0.1  js3.clickzs.com #[Tenebril.Tracking.Cookie]

127.0.0.1  js4.clickzs.com

127.0.0.1  js5.clickzs.com

127.0.0.1  js6.clickzs.com

127.0.0.1  js7.clickzs.com

127.0.0.1  js8.clickzs.com

127.0.0.1  js9.clickzs.com

127.0.0.1  js11.clickzs.com

127.0.0.1  jsp.clickzs.com

127.0.0.1  jsp2.clickzs.com

127.0.0.1  vip.clickzs.com

127.0.0.1  vip2.clickzs.com

127.0.0.1  www.clickzs.com #[SunBelt.Clickzs.com]

127.0.0.1  www.dialer-dollars.com

127.0.0.1  www.hit-now.com

127.0.0.1  gthumbs.netsaits.com

# [Nedstat BV][Webstats4U][212.72.38.0 - 212.72.38.255]

127.0.0.1  www.nedstat.com

127.0.0.1  nedstat.net #[SunBelt.Nedstat]

127.0.0.1  be.nedstat.net

127.0.0.1  es.nedstat.net

127.0.0.1  de.sitestat.nedstat.net

127.0.0.1  uk.nedstat.net

127.0.0.1  usa.nedstat.net

127.0.0.1  nedstat.nl

127.0.0.1  nedstat.s0.nl

127.0.0.1  www.nedstat.nl

127.0.0.1  nedstatbasic.net #[SecuritySpace.WebBug]

127.0.0.1  m1.nedstatbasic.net

127.0.0.1  nl.nedstatbasic.net

127.0.0.1  usa.nedstatbasic.net

127.0.0.1  v1.nedstatbasic.net

127.0.0.1  www.nedstatbasic.net

127.0.0.1  m1.nedstatpro.net

127.0.0.1  nl.nedstatpro.net

127.0.0.1  uk.nedstatpro.net

127.0.0.1  www.nedstat.co.uk

127.0.0.1  sitestat.com

127.0.0.1  be.sitestat.com

127.0.0.1  de.sitestat.com

127.0.0.1  es.sitestat.com

127.0.0.1  fr.sitestat.com

127.0.0.1  int.sitestat.com #[SiteAdvisor.azter.com]

127.0.0.1  nl.sitestat.com

127.0.0.1  uk.sitestat.com

127.0.0.1  nbasic.sitestat.net

127.0.0.1  www.sitestat.com

127.0.0.1  m1.webstats4u.com

127.0.0.1  www.webstats4u.com

# [NETVALUE SA][Spyware.Netrat]

127.0.0.1  de.opistat.com

127.0.0.1  download.opistat.com

127.0.0.1  premeter.opistat.com #[PcTools.NetRatings Premeter]

127.0.0.1  server.opistat.com

127.0.0.1  srv-fr.opistat.com

127.0.0.1  uk.opistat.com

127.0.0.1  uk2.opistat.com

127.0.0.1  www.opistat.com

# [NetVision][AS8584][212.150.0.0 - 212.150.255.255]

127.0.0.1  media-click.ru

127.0.0.1  paytraf.ru

127.0.0.1  popups.ru

127.0.0.1  protizer.ru

127.0.0.1  x4u.ru

# [Network Engineering][208.74.168.0 - 208.74.175.255]

# [Network Engineering][AS29809][208.85.176.0 - 208.85.183.255]

127.0.0.1  dofollinz.net #[Google.Diagnostic]

127.0.0.1  js0.info

127.0.0.1  searchaw.info #[Google.Diagnostic]

# [Network Operations][AS21788][64.191.0.0 - 64.191.127.255]

127.0.0.1  partern.hotptp.com

127.0.0.1  www.linktousd.com

127.0.0.1  secure.mpsjoin.com

127.0.0.1  www.nobleppc.com

127.0.0.1  sex.videosextube2009.com #[NOD32.Warning]

127.0.0.1  videos.videosextube2009.com

# [Network Operations / Resellermatrix][66.197.128.0 - 66.197.255.255]

127.0.0.1  ads.6arab.com

127.0.0.1  gofanscan.com

127.0.0.1  gohardscan.com

127.0.0.1  gointoscan.com

127.0.0.1  golitescan.com

127.0.0.1  goluxscan.com

127.0.0.1  gomindscan.com

127.0.0.1  goportscan.com

127.0.0.1  goscanhard.com

127.0.0.1  goscanmind.com

127.0.0.1  goscanport.com

127.0.0.1  goscanquick.com

127.0.0.1  goscanstar.com

127.0.0.1  gotipscan.com

127.0.0.1  in6co.com

127.0.0.1  logscan6.com

127.0.0.1  www.primaryppc.com

# [Network Solutions]

127.0.0.1  ads.netsol.com

127.0.0.1  ads.networksolutions.com

127.0.0.1  code.superstats.com

127.0.0.1  stats.superstats.com #[SunBelt.SuperStats]

# [Network Operations][AS21788][64.191.0.0 - 64.191.127.255]

127.0.0.1  int.sysproreport1.com

# [Network Operations][96.9.128.0 - 96.9.191.255]

127.0.0.1  max-ptc.com

127.0.0.1  ycheba.info #[Spamdexing.Codec]

# [NeverBlue Media][Vertrue Inc]

127.0.0.1  fbgdc.com

127.0.0.1  gnspf.com

127.0.0.1  hjlas.com

127.0.0.1  jdvnbxs.com

127.0.0.1  kvors.com

127.0.0.1  lwken.com

127.0.0.1  nbjmp.com #[SiteAdvisor.nbjmp.com]

127.0.0.1  rotator.nbjmp.com

# [New Dream Network][66.33.192.0 - 66.33.223.255]

127.0.0.1  ai-ml.biz #[Spamdexing.Codec]

127.0.0.1  counter.dreamhost.com

# [New Dream Network][AS26347][69.163.128.0 - 69.163.191.255]

127.0.0.1  antivirusfreescan.com

# [Newmedia Express][AS38001][203.174.80.0 - 203.174.87.255]

127.0.0.1  advancedpcscanner.com

127.0.0.1  badware-protector.com

127.0.0.1  macrosoftwarego.com

# [Newrack.eu Nl][AS20495][92.48.201.0 - 92.48.201.63]

# [MISC NEWS SITES]

127.0.0.1  ads.944.com

127.0.0.1  ads.abqjournal.com

127.0.0.1  ads.accessnorthga.com

127.0.0.1  zone02.adicate.com

127.0.0.1  zone03.adicate.com

127.0.0.1  zone04.adicate.com

127.0.0.1  zone05.adicate.com

127.0.0.1  adireland.com

127.0.0.1  www3.adireland.com

127.0.0.1  www.adireland.com

127.0.0.1  ads.admaxasia.com

127.0.0.1  www.adquest3d.com #[WebTrends]

127.0.0.1  aa.oasfile.aftenposten.no

127.0.0.1  ad.aftenposten.no #[RealMedia]

127.0.0.1  adcache.aftenposten.no

127.0.0.1  webhit.aftenposten.no

127.0.0.1  ad.aftonbladet.se #[RealMedia]

127.0.0.1  ads.albawaba.com

127.0.0.1  ads.angop.ao

127.0.0.1  ads.anm.co.uk #[SpySweeper.Spy.Cookie]

127.0.0.1  ads.mm.ap.org

127.0.0.1  adnet.asahi.com

127.0.0.1  ads.bangkokpost.co.th

127.0.0.1  ads2.bauer.es

127.0.0.1  stats.bbc.co.uk

127.0.0.1  visualscience.external.bbc.co.uk #[csvtm.interactionscience.com]

127.0.0.1  ads.bcnewsgroup.com

127.0.0.1  ads.bninews.com

127.0.0.1  rmedia.boston.com

127.0.0.1  ads.businessweek.com #[SpySweeper.Spy.Cookie]

127.0.0.1  ads.butlereagle.com

127.0.0.1  ads5.canoe.ca

127.0.0.1  ads.cantonrep.com

127.0.0.1  oasad.cantv.net #[RealMedia]

127.0.0.1  ads1.capitalinteractive.co.uk

127.0.0.1  ads.casinocity.com

127.0.0.1  as1.casinocity.com

127.0.0.1  track.cbs.com #[WebBug]

127.0.0.1  dart.chron.com #[DART AdSpace]

127.0.0.1  adtrack.cimedia.net

127.0.0.1  realaudio.cimedia.net

127.0.0.1  adindex.citypages.com

127.0.0.1  fr.classic.clickintext.net

127.0.0.1  fr.64.clickintext.net

127.0.0.1  fr.64.classic.clickintext.net

127.0.0.1  fr.cim.clickintext.net

127.0.0.1  ads.clubplanet.com

127.0.0.1  ads.comicbookresources.com

127.0.0.1  ads3.condenast.co.uk

127.0.0.1  archive.coolerads.com

127.0.0.1  clips.coolerads.com

127.0.0.1  webtrendssdc.covers.com

127.0.0.1  openx.cnpapers.com

127.0.0.1  phpads.cnpapers.com

127.0.0.1  scripts.dailycardinal.com

127.0.0.1  dynamic1.dailytech.com

127.0.0.1  ads.davidkelseymedia.com

127.0.0.1  ads.digitalhealthcare.com

127.0.0.1  delivery3.digitalhealthcare.com #[RealMedia]

127.0.0.1  delivery6.digitalhealthcare.com

127.0.0.1  ads.digitalmedianet.com

127.0.0.1  adserver.digitalmedianet.com

127.0.0.1  ads.digitalpressconsortium.com

127.0.0.1  adverts.digitalspy.co.uk

127.0.0.1  ads.dixcom.com

127.0.0.1  www.dnps.com #[RealMedia]

127.0.0.1  www.dolanadserver.com

127.0.0.1  banner.dwalliance.com

127.0.0.1  ads.eagleinteractive.com

127.0.0.1  ads.eastbayexpress.com

127.0.0.1  adv.ecape.com

127.0.0.1  advertising.embarcaderopublishing.com

127.0.0.1  iklan.emedia.com.my #[AdRevolver]

127.0.0.1  ads.emeraldcoast.com

127.0.0.1  ads.emol.com #[RealMedia]

127.0.0.1  ads.empowher.com

127.0.0.1  adserver.ens-news.com

127.0.0.1  unit2.euro2day.gr

127.0.0.1  adverts.f-1.com

127.0.0.1  campaigns.f2.com.au

127.0.0.1  ads.fairfax.com.au

127.0.0.1  images.ads.fairfax.com.au

127.0.0.1  tracking.fccinteractive.com

127.0.0.1  redirect.fairfax.com.au

127.0.0.1  ad1.firehousezone.com

127.0.0.1  ad2.firehousezone.com #[RealMedia]

127.0.0.1  ads.forbes.com #[RealMedia]

127.0.0.1  klipmart.forbes.com

127.0.0.1  vs.forbes.com #[WebBug]

127.0.0.1  ads.fredericksburg.com

127.0.0.1  onset.freedom.com

127.0.0.1  ads.ft.com

127.0.0.1  secureads.ft.com

127.0.0.1  track.ft.com

127.0.0.1  ads.globalsportsmedia.com

127.0.0.1  www.gcmadvertising.com

127.0.0.1  gothamistllc.com

127.0.0.1  www.gotricities.net

127.0.0.1  ads.greenerworldmedia.com

127.0.0.1  ads.grupozeta.es #[RealMedia]

127.0.0.1  gtrackz.com

127.0.0.1  adimage.guardian.co.uk

127.0.0.1  ads.guardian.co.uk

127.0.0.1  ad.hankooki.com

127.0.0.1  log.hankooki.com

127.0.0.1  web2.harris-pub.com

127.0.0.1  adserver1.harvestadsdepot.com

127.0.0.1  ad.hbinc.com

127.0.0.1  oas.heise.de #[RealMedia]

127.0.0.1  ads.hellomagazine.com #[RealMedia]

127.0.0.1  id.hellomagazine.com #[WebBug]

127.0.0.1  webtrend25.hemscott.com

127.0.0.1  adserver.heraldextra.com

127.0.0.1  ads.heraldsun.com #[RealMedia]

127.0.0.1  ads1.hometownannapolis.com

127.0.0.1  entry-stats.huffingtonpost.com #[WebBug]

127.0.0.1  adserver.ifmagazine.com

127.0.0.1  advertising.illinimedia.com

127.0.0.1  rot2.imoti.net

127.0.0.1  www.indiads.com #[RealMedia]

127.0.0.1  ads.indiatimes.com #[McAfee.Cookie-Indiads]

127.0.0.1  adscontent2.indiatimes.com

127.0.0.1  adstil.indiatimes.com #[RealMedia]

127.0.0.1  netspiderads.indiatimes.com

127.0.0.1  netspiderads2.indiatimes.com

127.0.0.1  insightxe.inq7.net

127.0.0.1  adsrv.iol.co.za

127.0.0.1  adserv.it-analysis.com

127.0.0.1  ad.itbe.com

127.0.0.1  adsweb2.johncom.co.za #[RealMedia]

127.0.0.1  adserver1.journalregister.com

127.0.0.1  ads.jpost.com #[RealMedia]

127.0.0.1  kermit.macnn.com

127.0.0.1  banners.kfmb.com

127.0.0.1  html.knbc.com #[Omniture]

127.0.0.1  ads.lavoix.com

127.0.0.1  ads.ljworld.com

127.0.0.1  ads2.ljworld.com

127.0.0.1  v7.stats.load.com

127.0.0.1  ads.keloland.com

127.0.0.1  ad1.logger.co.kr

127.0.0.1  trk14.logger.co.kr

127.0.0.1  ads.madison.com

127.0.0.1  g3t4d5.madison.com

127.0.0.1  oas.mainetoday.com #[RealMedia]

127.0.0.1  utils.media-general.com #[RealMedia]

127.0.0.1  server2.mediatakeout.com

127.0.0.1  ads.mgnetwork.com #[RealMedia]

127.0.0.1  te.mgnetwork.com #[McAfee.Cookie-Mgnetwork]

127.0.0.1  mas.midkotasolutions.com

127.0.0.1  www.midkotatraffic.net

127.0.0.1  tracking.military.com

127.0.0.1  ad.mirror.co.uk #[ad.3ad.doubleclick.net]

127.0.0.1  amp.mirror.co.uk #[amp.sageanalyst.net]

127.0.0.1  ads1.moneycontrol.com

127.0.0.1  adserver.monstersandcritics.com

127.0.0.1  ads.morningstar.com #[RealMedia]

127.0.0.1  ad.moscowtimes.ru

127.0.0.1  adwatcher.mostvaluablenetwork.com

127.0.0.1  abacus.mymotherlode.com

127.0.0.1  mouads.com

127.0.0.1  ads.movieweb.com

127.0.0.1  adserv.mywebtimes.com

127.0.0.1  html.nbc10.com #[Omniture]

127.0.0.1  ads.nexstardigital.com

127.0.0.1  adserver.newdigitalgroup.com #[RealMedia]

127.0.0.1  adserver.news.com.au #[SunBelt.AdServer.News.com]

127.0.0.1  sops.news.com.au

127.0.0.1  news.newsadstream.com

127.0.0.1  n5.newsadstream.com

127.0.0.1  n8.newsadstream.com

127.0.0.1  promos.newsok.com

127.0.0.1  adserver2.news-journalonline.com

127.0.0.1  ads.newsquest.co.uk #[RealMedia]

127.0.0.1  adsadmin.newsquest.co.uk #[RealMedia]

127.0.0.1  collector.newsx.cc

127.0.0.1  ads.northjersey.com #[RealMedia]

127.0.0.1  adserver.nydailynews.com #[RealMedia]

127.0.0.1  ads.nypost.com

127.0.0.1  ads.nytimes.com

127.0.0.1  up.nytimes.com #[WebBug][About.com]

127.0.0.1  ads.ocolly.com

127.0.0.1  rm.ocregister.com #[RealMedia]

127.0.0.1  adcount.ohmynews.com

127.0.0.1  ads.online.ie

127.0.0.1  kestrel.ospreymedialp.com

127.0.0.1  ads.ozonemedia.co.in #[ozone.adbureau.net]

127.0.0.1  ads.pagina12.com.ar

127.0.0.1  adserver.passagemaker.com

127.0.0.1  ads.pittsburghlive.com #[RealMedia]

127.0.0.1  adserv.postbulletin.com

127.0.0.1  webtrends.randallpub.com

127.0.0.1  ads.recordpub.com

127.0.0.1  ads.realvail.com

127.0.0.1  bst.reedbusiness.com

127.0.0.1  collector.richmond.com #[DeepMetrix StatScript]

127.0.0.1  oas.roanoke.com

127.0.0.1  adman.rep-am.com

127.0.0.1  ads.rttnews.com

127.0.0.1  ads.ruralpress.com

127.0.0.1  maxads.ruralpress.com

127.0.0.1  ads.sabah.com.tr

127.0.0.1  sbgwebas.sbgnet.com

127.0.0.1  ads.sddt.com

127.0.0.1  adserver.sdreader.com

127.0.0.1  ads.sfomedia.com

127.0.0.1  pubad.shanghaidaily.com

127.0.0.1  ads.sify.com #[RealMedia]

127.0.0.1  ads.signonsandiego.com

127.0.0.1  oas.signonsandiego.com #[RealMedia]

127.0.0.1  ads.soush.com

127.0.0.1  ads.space.com #[RealMedia]

127.0.0.1  ads.sportingnews.com #[RealMedia]

127.0.0.1  new.standartnews.com

127.0.0.1  ads.stephensmedia.com

127.0.0.1  adzone.stltoday.com

127.0.0.1  applets.sulekha.com #[ICICI Text Ads]

127.0.0.1  suads.sulekha.com

127.0.0.1  te.suntimes.com #[WebBug]

127.0.0.1  ads.swiftnews.com

127.0.0.1  dcs.swiftnews.com #[WebBug]

127.0.0.1  m.teamsugar.com

127.0.0.1  ads.technologyguide.com

127.0.0.1  ads.telegraph.co.uk #[McAfee.Cookie-Telegraph]

127.0.0.1  ads.thecrimson.com

127.0.0.1  adzservice.theday.com

127.0.0.1  test.theeagle.com

127.0.0.1  ad.thehill.com

127.0.0.1  ads.thehour.com

127.0.0.1  ads.thestar.com

127.0.0.1  te.thestar.com

127.0.0.1  banners.thestranger.com

127.0.0.1  mercury.tiser.com.au

127.0.0.1  ads.townhall.com

127.0.0.1  adsys.townnews.com

127.0.0.1  stats.townnews.com

127.0.0.1  ads.trackentertainment.com

127.0.0.1  ads.urbanreach.net

127.0.0.1  adsrv1.velonews.com

127.0.0.1  ads2.victoriaadvocate.com

127.0.0.1  mmm.vindy.com

127.0.0.1  adserver.virgin.net #[Ad-Aware Tracking.Cookie]

127.0.0.1  admanage.wescompapers.com

127.0.0.1  ads.wfmz.com

127.0.0.1  html.wnbc.com #[Omniture]

127.0.0.1  ads.wnd.com

127.0.0.1  old.yakimaherald.com

127.0.0.1  ads.yaledailynews.com

127.0.0.1  ads.cluster01.oasis.zmh.zope.net

127.0.0.1  ads.cluster02.oasis.zmh.zope.net

# [Misc News via Advance Publications Group][69.2.96.0 - 69.2.127.255]

127.0.0.1  ads.advance.net #[McAfee.Cookie-Advance]

127.0.0.1  ads.udc.advance.net

127.0.0.1  ads1.udc.advance.net

127.0.0.1  ads2.udc.advance.net

127.0.0.1  ads3.udc.advance.net

127.0.0.1  ads4.udc.advance.net

127.0.0.1  ads5.udc.advance.net

127.0.0.1  ads6.udc.advance.net

127.0.0.1  ads7.udc.advance.net

127.0.0.1  ads8.udc.advance.net

127.0.0.1  ads9.udc.advance.net

127.0.0.1  ads10.udc.advance.net

127.0.0.1  ads11.udc.advance.net

127.0.0.1  ads12.udc.advance.net

127.0.0.1  ads13.udc.advance.net

127.0.0.1  ads14.udc.advance.net

127.0.0.1  ads15.udc.advance.net

127.0.0.1  ads16.udc.advance.net

127.0.0.1  te.advance.net

127.0.0.1  ads.al.com #[ads.udc.advance.net]

127.0.0.1  ads.cleveland.com

127.0.0.1  geoip.cleveland.com

127.0.0.1  ads.golfdigest.com

127.0.0.1  ads.gulflive.com

127.0.0.1  geoip.gulflive.com

127.0.0.1  ads.lehighvalleylive.com

127.0.0.1  geoip.lehighvalleylive.com

127.0.0.1  ads.masslive.com

127.0.0.1  geoip.masslive.com

127.0.0.1  ads.mlive.com

127.0.0.1  geoip.mlive.com #[django-mlive.advance.net]

127.0.0.1  science.mlive.com

127.0.0.1  ads.nj.com #[RealMedia][ads.udc.advance.net]

127.0.0.1  geoip.nj.com

127.0.0.1  ads.nola.com

127.0.0.1  geoip.nola.com

127.0.0.1  ads.oregonlive.com

127.0.0.1  geoip.oregonlive.com

127.0.0.1  ads.pennlive.com #[RealMedia]

127.0.0.1  geoip.pennlive.com

127.0.0.1  ads.silive.com

127.0.0.1  geoip.silive.com

127.0.0.1  ads.syracuse.com

127.0.0.1  geoip.syracuse.com

# [Misc News via American Media]

127.0.0.1  ads1.ami-admin.com

127.0.0.1  ads.fitpregnancy.com

127.0.0.1  ads.flexonline.com

127.0.0.1  ads.muscleandfitness.com

127.0.0.1  ads.muscleandfitnesshers.com

127.0.0.1  ads.nationalenquirer.com

127.0.0.1  ads.starmagazine.com #[ads.ami-admin.com]

# [Misc News via Belo Interactive]

127.0.0.1  te.azfamily.com

127.0.0.1  ads.belointeractive.com #[RealMedia][eTrust.Tracking.Cookie]

127.0.0.1  mysa.belointeractive.com

127.0.0.1  te.belointeractive.com

127.0.0.1  te.dallasnews.com

127.0.0.1  te.guidelive.dallasnews.com

127.0.0.1  te.dentonrc.com

127.0.0.1  te.fox11az.com

127.0.0.1  te.king5.com

127.0.0.1  te.kgw.com

127.0.0.1  te.khou.com

127.0.0.1  te.krem.com

127.0.0.1  te.ktvb.com

127.0.0.1  te.kvue.com

127.0.0.1  te.pe.com

127.0.0.1  te.quickdfw.com

127.0.0.1  te.wcnc.com

127.0.0.1  te.wfaa.com

# [Misc News via Clear Channel][207.230.128.0 - 207.230.159.255]

127.0.0.1  ads4.clearchannel.com

127.0.0.1  dart.clearchannel.com

127.0.0.1  w10.centralmediaserver.com

127.0.0.1  w11.centralmediaserver.com

# [Misc News via Galveston County Daily News][64.218.60.0 - 64.218.60.127]

127.0.0.1  banners.galvnews.com

127.0.0.1  banners3.galvnews.com

# [Misc News via Gannett Media / USA Today][159.54.0.0 - 159.54.255.255]

127.0.0.1  atpco.ur.gcion.com

127.0.0.1  gcirm.argusleader.gcion.com

127.0.0.1  q.azcentral.com

127.0.0.1  gcirm.azcentral.gcion.com

127.0.0.1  gcirm.battlecreekenquirer.gcion.com

127.0.0.1  gcirm.baxterbulletin.gcion.com

127.0.0.1  gcirm.burlingtonfreepress.gcion.com

127.0.0.1  gcirm.californianonline.gcion.com

127.0.0.1  gcirm.centralohio.gcion.com

127.0.0.1  gcirm.c-n.gcion.com

127.0.0.1  gcirm.cincinnati.gcion.com

127.0.0.1  gcirm.citizen-times.gcion.com

127.0.0.1  gcirm.clarionledger.gcion.com

127.0.0.1  gcirm.coloradoan.gcion.com

127.0.0.1  gcirm.courier-journal.gcion.com

127.0.0.1  gcirm.courierpostonline.gcion.com

127.0.0.1  gcirm.dailyrecord.gcion.com

127.0.0.1  gcirm.delawareonline.gcion.com

127.0.0.1  gcirm.delmarvanow.gcion.com

127.0.0.1  gcirm.democratandchronicle.gcion.com

127.0.0.1  gcirm.dmp.gcion.com

127.0.0.1  gcirm.dmregister.gcion.com

127.0.0.1  gcirm.dnj.gcion.com

127.0.0.1  gcirm.elpasotimes.com

127.0.0.1  gcirm.flatoday.gcion.com

127.0.0.1  gcirm.gannettnetwork.com

127.0.0.1  gcirm.gannett-tv.gcion.com

127.0.0.1  gcirm.gannettvideo.com

127.0.0.1  gcirm.greenvilleonline.gcion.com

127.0.0.1  gcirm.greatfallstribune.gcion.com

127.0.0.1  gcirm.guampdn.gcion.com

127.0.0.1  gcirm.hattiesburgamerican.gcion.com

127.0.0.1  gcirm.herald-dispatch.com

127.0.0.1  gcirm.honoluluadvertiser.gcion.com

127.0.0.1  gcirm.indystar.gcion.com

127.0.0.1  gcirm.injersey.gcion.com

127.0.0.1  gcirm.jacksonsun.gcion.com

127.0.0.1  gcirm.jconline.gcion.com

127.0.0.1  gcirm.laregionalonline.gcion.com

127.0.0.1  gcirm.lsj.gcion.com

127.0.0.1  gcirm.mconetwork.gcion.com

127.0.0.1  gcirm.montgomeryadvertiser.gcion.com

127.0.0.1  gcirm.mydesert.gcion.com

127.0.0.1  gcirm.newsleader.gcion.com

127.0.0.1  gcirm.news-press.gcion.com

127.0.0.1  gcirm.norwichbulletin.com

127.0.0.1  gcirm.ozarksnow.gcion.com

127.0.0.1  gcirm.pal-item.gcion.com

127.0.0.1  gcirm.pensacolanewsjournal.gcion.com

127.0.0.1  pathcontrol-att.pni.com

127.0.0.1  pathcontrol-xo.pni.com

127.0.0.1  q.pni.com

127.0.0.1  gcirm.poughkeepsiejournal.gcion.com

127.0.0.1  gcirm.press-citizen.gcion.com

127.0.0.1  gcirm.pressconnects.gcion.com

127.0.0.1  gcirm.rgj.gcion.com

127.0.0.1  gcirm.rrstar.com

127.0.0.1  gcirm.sctimes.gcion.com

127.0.0.1  gcirm.stargazette.gcion.com

127.0.0.1  gcirm.statesmanjournal.gcion.com

127.0.0.1  gcirm.tallahassee.gcion.com

127.0.0.1  gcirm.tennessean.gcion.com

127.0.0.1  gcirm.thedailyjournal.gcion.com

127.0.0.1  gcirm.thejournalnews.gcion.com

127.0.0.1  gcirm.theleafchronicle.gcion.com #[RealMedia]

127.0.0.1  gcirm.theithacajournal.gcion.com

127.0.0.1  gcirm.thespectrum.gcion.com

127.0.0.1  gcirm.thestarpress.gcion.com

127.0.0.1  gcirm.thetimesherald.gcion.com

127.0.0.1  gcirm.tucson.gcion.com

127.0.0.1  gcirm.usaweekend.gcion.com

127.0.0.1  gcirm.uticaod.com

127.0.0.1  gcirm.visaliatimesdelta.gcion.com

127.0.0.1  gcirm.wisinfo.gcion.com

127.0.0.1  ad.usatoday.com

127.0.0.1  ads.usatoday.com

127.0.0.1  c.usatoday.com

# [Misc News via Gannett Media]

127.0.0.1  gannett.gcion.com #[glb.adtechus.com]

# [Misc News via McClatchy Interactive][Gannett Media]

127.0.0.1  adsadmin.nandomedia.com

# [Scripps Newspaper Group]

127.0.0.1  te.diynetwork.com

127.0.0.1  te.fineliving.com #[WebBug]

127.0.0.1  te.foodnetwork.com

127.0.0.1  te.gactv.com

127.0.0.1  te.hgtv.com

127.0.0.1  te.hgtvpro.com

127.0.0.1  adsremote.scripps.com #[McAfee.Cookie-Scripps]

127.0.0.1  apptap.scripps.com

127.0.0.1  railads.scripps.com

127.0.0.1  adsremote.scrippsnetworks.com

# [Misc News via Tacoda Systems][AOL]

127.0.0.1  te.about.com #[te.gslb.tacoda.net]

127.0.0.1  te.astrology.com #[ivillage.te.tacoda.net]

127.0.0.1  tste.astrology.com #[ivillage.tste.tacoda.net]

127.0.0.1  te.boston.com #[te.gslb.tacoda.net]

127.0.0.1  te.cleveland.com #[Tacoda Code]

127.0.0.1  te.chron.com

127.0.0.1  te.ivillage.com #[ivillage.te.tacoda.net]

127.0.0.1  tste.ivillage.com #[ivillage.tste.tacoda.net]

127.0.0.1  te.nytdigital.com #[te.gslb.tacoda.net]

127.0.0.1  te.nytimes.com #[te.gslb.tacoda.net]

# [Misc News via Tribune Company]

127.0.0.1  te.chicagotribune.com #[te.tribune.com]

127.0.0.1  te.courant.com

127.0.0.1  te.ctnow.com

127.0.0.1  te.dailypress.com

127.0.0.1  te.greenwichtime.com

127.0.0.1  te.latimes.com

127.0.0.1  tste.latimes.com

127.0.0.1  te.mcall.com

127.0.0.1  te.newsday.com

127.0.0.1  te.orlandosentinel.com

127.0.0.1  te.sunspot.net

127.0.0.1  te.stamfordadvocate.com

127.0.0.1  te.sun-sentinel.com #[Tacoda Code]

127.0.0.1  te.trb.com

# [Misc News via Village Voice Media]

127.0.0.1  adindex.laweekly.com

127.0.0.1  adindex.nashvillescene.com

127.0.0.1  ads2.newtimes.com

127.0.0.1  adindex.ocweekly.com

127.0.0.1  adindex.seattleweekly.com

127.0.0.1  adindex.villagevoice.com

127.0.0.1  oas.villagevoice.com

# [Newrack.eu Nl][94.102.50.128 - 94.102.50.191]

# [Newrack.eu Nl][AS20495][92.48.201.0 - 92.48.201.63]

# [Nforce][AS16265][85.17.52.0 - 85.17.52.255]

127.0.0.1  andr.net

127.0.0.1  topsites.andr.net

127.0.0.1  www.andr.net

127.0.0.1  keygen.us #[Troj/Favadd-D]

127.0.0.1  www.keygen.us

127.0.0.1  newcracks.net #[Win32.Alcan.C]

127.0.0.1  www.newcracks.net

127.0.0.1  serials.ws #[SiteAdvisor.serials.ws]

127.0.0.1  www.serials.ws

127.0.0.1  thebugs.ws #[Trojan.Win32.StartPage.fg]

127.0.0.1  img.thebugs.ws

127.0.0.1  www.thebugs.ws #[Trojan.Favadd]

# [Nforce via Elena Varavva]

127.0.0.1  www.allseek.info #[Trojan/StartPage.FG]

127.0.0.1  anycracks.com #[Trojan.Favadd]

127.0.0.1  bestserials.com #[Troj/Favadd-D]

127.0.0.1  bugsforum.com

127.0.0.1  icracks.net #[Trojan.Win32.Favadd.d]

# [Nforce via Endi Streff]

127.0.0.1  cracksplanet.com #[Trojan.Clicker.Small.IS]

127.0.0.1  www.cracksplanet.com

127.0.0.1  crackzplanet.com #[StopBadware.Warning]

127.0.0.1  www.crackzplanet.com

# [Nforce via Big Host LLC][Alex Goldstein]

127.0.0.1  crackway.com

127.0.0.1  www.crackway.com #[Trojan/StartPage.FG]

127.0.0.1  freexxxpages.net

127.0.0.1  img.freexxxpages.net

127.0.0.1  www.freexxxpages.net

127.0.0.1  mscracks.com #[Troj/Favadd-D][fuck-access.com]

127.0.0.1  flz.mscracks.com

127.0.0.1  img.mscracks.com

127.0.0.1  www.mscracks.com

# [Nforce via TheBUGS Ltd]

127.0.0.1  links.crackportal.com #[SiteAdvisor.crackportal.com]

127.0.0.1  www.crackportal.com #[Trojan.Win32.Favadd.d]

127.0.0.1  crackspider.net #[Trojan.Favadd]

127.0.0.1  www.crackspider.net #[Trojan.Win32.StartPage.fg]

# [Nm2771-ripe][AS48974][92.38.0.40 - 92.38.0.44]

127.0.0.1  getdwnld.com

127.0.0.1  loyaldown11.com #[Win32/Adware.WinPCDefender]

127.0.0.1  loyaltube10.com

127.0.0.1  totalmalwareprotection.com

127.0.0.1  setup.totalmalwareprotection.com #[getdwnld.com][209.160.21.4]

127.0.0.1  www.totalmalwareprotection.com

127.0.0.1  totalvirusprotection.com

127.0.0.1  setup.totalvirusprotection.com #[getdwnld.com][209.160.21.4]

127.0.0.1  www.totalvirusprotection.com

127.0.0.1  xpvirusprotection.com

127.0.0.1  setup.xpvirusprotection.com #[getdwnld.com][209.160.21.4]

127.0.0.1  www.xpvirusprotection.com

127.0.0.1  tubeloyal.com

# [Noc4hosts - Tampa][AS29802][206.51.224.0 - 206.51.239.255]

127.0.0.1  www.clicks4u.com

127.0.0.1  doollli.erotic-place.org #[Google Warning]

127.0.0.1  mkadtraffic.com

# [Noc4hosts - New York][66.232.96.0 - 66.232.127.255]

127.0.0.1  www.adnetworkonline.com

127.0.0.1  www.adultkeeper.com #[SiteAdvisor.adultkeeper.com]

127.0.0.1  litefly.net #[Google.Diagnostic]

127.0.0.1  pretty-portal.net

127.0.0.1  virus-labs2009.com

127.0.0.1  virus-response.com

127.0.0.1  www.virus-response.com

127.0.0.1  virusresponse2009.com

127.0.0.1  ystat.biz

# [Noc4hosts via Eric Marshall][66.232.117.1 - 66.232.117.255]

# [Noc4hosts - Tampa][74.50.96.0 - 74.50.127.255]

127.0.0.1  allpc-softportal.net

127.0.0.1  anothersoftportal09.net #[Google.Diagnostic]

127.0.0.1  astrumavr.com

127.0.0.1  astrumavrpro.com

127.0.0.1  www.bmxok.info

127.0.0.1  celebs-on-video-08.net

127.0.0.1  celebrity-on-video-2008.net

127.0.0.1  cleansoftportal.net

127.0.0.1  cracksdownload.cleansoftportal.net

127.0.0.1  cleansoftportal08.net

127.0.0.1  cleansoftportal2009.net

127.0.0.1  codecdownload.cleansoftportal2009.net

127.0.0.1  domain5122.net

127.0.0.1  e-softpoertals2008.net

127.0.0.1  codecdownload.e-softpoertals2008.net

127.0.0.1  downloadmanager.e-softpoertals2008.net

127.0.0.1  codecdownload.funportalsoft.net

127.0.0.1  hot-porn-tube-2008.net

127.0.0.1  hot-porntube-08.net

127.0.0.1  codecdownload.main-downloadportal.net #[Trojan.Codec]

127.0.0.1  codecdownload.main-softwaredownload.net #[Win32/TrojanDownloader.Zlob.CTI]

127.0.0.1  new-porn-tubeportal.net

127.0.0.1  newer-porntube.com

127.0.0.1  newest-porn-tube.net #[Google.Diagnostic]

127.0.0.1  new-porns-hub.net

127.0.0.1  soft4funportal.net

# [Noc4Hosts via Intensive Care Holdings][74.50.104.0 - 74.50.111.255]

127.0.0.1  pubs.hiddennetwork.com

127.0.0.1  www.jethit.com

127.0.0.1  virtrigger.com

127.0.0.1  virtriggersupport.com

127.0.0.1  virus-trigger.com

127.0.0.1  virus-triggers.com

# [North Tone][AS13477][208.74.148.0 - 208.74.151.255]

127.0.0.1  ballrs.info

127.0.0.1  servedby.blamads.com

127.0.0.1  www.servedby.blamads.com

127.0.0.1  www.wwe-divas.org

# [Nova-net][AS48031][91.207.60.0 - 91.207.61.255]

127.0.0.1  addded.com

127.0.0.1  banner-count.com

127.0.0.1  www.banner-count.com

127.0.0.1  google-analytlcs.com

127.0.0.1  installdiskscaner.net

127.0.0.1  lineacount.info

127.0.0.1  mypersonalhttp.com

127.0.0.1  www.mypersonalhttp.com

127.0.0.1  pornorawa.com

127.0.0.1  tangoing.info

127.0.0.1  tinnily.info

127.0.0.1  warwork.info

127.0.0.1  wovens.info

# [Nozone Inc][][208.100.0.0 - 208.100.63.255]

127.0.0.1  porn.dailynewmedia.com

127.0.0.1  banners.earnunited.com

127.0.0.1  pixel1097.everesttech.net

127.0.0.1  pixel1324.everesttech.net

127.0.0.1  pixel1370.everesttech.net #[WebBug]

127.0.0.1  pixel1553.everesttech.net

127.0.0.1  pixel1739.everesttech.net

127.0.0.1  www.klixmedia.com

127.0.0.1  raskrutka.ucoz.com

127.0.0.1  xxxdatabase.info #[Malicious.Links.Codec]

# [NTColo / Plitochnik][AS48669][194.165.4.0 - 194.165.5.255]

127.0.0.1  av-payment.com

127.0.0.1  avpayments.com

127.0.0.1  freshcodecupdate.com

127.0.0.1  generalantivirus.com

127.0.0.1  general-antivirus.com

127.0.0.1  goproscan.com

127.0.0.1  livestopbadware.com

127.0.0.1  personal-antivirus.com

127.0.0.1  pornotube912.com

127.0.0.1  pornotube914.com

127.0.0.1  porno-online-tube.com

127.0.0.1  pornproductions09.com

127.0.0.1  pornproductions09.net

127.0.0.1  pornotubeonline10.com

127.0.0.1  pornotube911.com

127.0.0.1  privacy-centar.org

127.0.0.1  privacy-tools-pack.com

127.0.0.1  privacyupdate447.com

# [N.t. Technology][206.223.144.0 - 206.223.159.255]

127.0.0.1  40ch.com #[Spamdexing.Codec]

127.0.0.1  www.40ch.com

127.0.0.1  chincho.net #[IFrame.Exploit]

127.0.0.1  www.chincho.net

127.0.0.1  highwayside.st #[Spamdexing.Codec]

127.0.0.1  pinkcount.com

127.0.0.1  www.pinkcount.com

# [Ntt America][AS2914][199.236.0.0 - 199.239.255.255]

127.0.0.1  intelinet-global.net #[Win32/Adware.IntelinetSmartSecurity]

127.0.0.1  www.intelinet-global.net

127.0.0.1  www.tsgonline.com

127.0.0.1  voena.net #[Google.Warning]

# [Ntt America][AS2914][204.0.0.0 - 204.3.255.255]

127.0.0.1  affiliate.dtiserv.com

# [Oemtec, Ltd]

127.0.0.1  spyspotter.com #[Symantec.spyspotter.com]

127.0.0.1  c.spyspotter.com #[a1393.g.akamai.net]

127.0.0.1  config.spyspotter.com

127.0.0.1  download.spyspotter.com #[a1487.g.akamai.net]

127.0.0.1  e.spyspotter.com

127.0.0.1  www.spyspotter.com #[SunBelt.SpySpotter]

# [Omniture][Wildcard DNS]

127.0.0.1  2o7.net #[McAfee.Cookie-2O7][Ewido.TrackingCookie.2o7]

127.0.0.1  102.112.207.net #[2 zero 7]

127.0.0.1  102.112.2o7.net #[Tenebril.Tracking.Cookie]

127.0.0.1  102.122.2o7.net #[Panda.Spyware:Cookie/2o7.net]

127.0.0.1  192.168.112.2o7.net #[SpySweeper.Spy.Cookie]

127.0.0.1  192.168.122.2o7.net

127.0.0.1  1105governmentinformationgroup.122.2o7.net

127.0.0.1  3gupload.112.2o7.net

127.0.0.1  10xhellometro.112.2o7.net

127.0.0.1  acckalaharinet.112.2o7.net

127.0.0.1  acpmagazines.112.2o7.net

127.0.0.1  adbrite.122.2o7.net

127.0.0.1  advertisingcom.122.2o7.net

127.0.0.1  aehistory.112.2o7.net

127.0.0.1  aetv.112.2o7.net

127.0.0.1  affilcrtopcolle.112.2o7.net

127.0.0.1  agamgreetingscom.112.2o7.net

127.0.0.1  agbmcom.112.2O7.net

127.0.0.1  agegreetings.112.2o7.net

127.0.0.1  agmsnag.112.2o7.net

127.0.0.1  agwebshots.112.2o7.net

127.0.0.1  ameritradeogilvy.112.2o7.net

127.0.0.1  ameritradeamerivest.112.2o7.net

127.0.0.1  angiba.112.2o7.net

127.0.0.1  angmar.112.2o7.net

127.0.0.1  angmil.112.2o7.net

127.0.0.1  angpar.112.2O7.net

127.0.0.1  aolbks.122.2o7.net

127.0.0.1  aolcamember.122.2o7.net

127.0.0.1  aolcg.122.2o7.net

127.0.0.1  aolcmp.122.2o7.net

127.0.0.1  aolcommem.122.2o7.net

127.0.0.1  aolcommvid.122.2o7.net

127.0.0.1  aolcsmen.122.2o7.net

127.0.0.1  aoldlama.122.2o7.net

127.0.0.1  aoldrambuie.122.2o7.net

127.0.0.1  aolgam.122.2o7.net

127.0.0.1  aolgamedaily.122.2o7.net

127.0.0.1  aoljournals.122.2o7.net

127.0.0.1  aollatblog.122.2o7.net

127.0.0.1  aollove.122.2o7.net

127.0.0.1  aolmov.122.2o7.net

127.0.0.1  aolmus.122.2o7.net

127.0.0.1  aolnews.122.2o7.net

127.0.0.1  aolnssearch.122.2o7.net

127.0.0.1  aolpf.122.2o7.net

127.0.0.1  aolpolls.122.2o7.net

127.0.0.1  aolsearch.122.2o7.net

127.0.0.1  aolshred.122.2o7.net

127.0.0.1  aolsports.122.2o7.net

127.0.0.1  aolstylist.122.2o7.net

127.0.0.1  aolsvc.122.2o7.net

127.0.0.1  aolswitch.122.2o7.net

127.0.0.1  aoltruveo.122.2o7.net

127.0.0.1  aoltmz.122.2o7.net

127.0.0.1  aolturnercnnmoney.122.2o7.net

127.0.0.1  aolturnersi.122.2o7.net

127.0.0.1  aoluk.122.2o7.net

127.0.0.1  aolvideo.122.2o7.net

127.0.0.1  aolwinamp.122.2o7.net

127.0.0.1  aolwbautoblog.122.2o7.net

127.0.0.1  aolwbcinema.122.2o7.net

127.0.0.1  aolwbdnlsq.122.2o7.net

127.0.0.1  aolwbengadget.122.2o7.net

127.0.0.1  aolwbgadling.122.2o7.net

127.0.0.1  aolwbluxist.122.2o7.net

127.0.0.1  aolwbtvsq.122.2o7.net

127.0.0.1  aolwbpspfboy.122.2o7.net

127.0.0.1  aolwbwowinsd.122.2o7.net

127.0.0.1  aolwpmq.122.2o7.net

127.0.0.1  aolwpnscom.122.2o7.net

127.0.0.1  aolwpnswhatsnew.112.2o7.net

127.0.0.1  aolyedda.122.2o7.net

127.0.0.1  apdigitalorgovn.112.2o7.net

127.0.0.1  apdigitalorg.112.2o7.net

127.0.0.1  apnonline.112.2o7.net

127.0.0.1  aporg.112.2o7.net

127.0.0.1  aumo123usedcarscom.112.2o7.net

127.0.0.1  aumoautomotivectl.112.2o7.net

127.0.0.1  aumocarsbelowinvoice.112.2o7.net

127.0.0.1  aumointernetautoguidecom.112.2o7.net

127.0.0.1  aumonewcarcom.112.2o7.net

127.0.0.1  aumotradeinvaluecom.112.2o7.net

127.0.0.1  autobytel.112.2o7.net

127.0.0.1  autobytelcorppopup.112.2o7.net

127.0.0.1  autoanythingcom.112.2o7.net

127.0.0.1  autoscout24.112.2o7.net

127.0.0.1  autoweb.112.2o7.net

127.0.0.1  avgtechnologies.112.2o7.net

127.0.0.1  avon.112.2o7.net

127.0.0.1  awarenesstech.122.2o7.net

127.0.0.1  babycentercom.112.2o7.net

127.0.0.1  bhgdiabeticliving.112.2o7.net

127.0.0.1  bhgdiy.112.2o7.net

127.0.0.1  bhgkitchenbath.112.2o7.net

127.0.0.1  bhgscrap.112.2o7.net

127.0.0.1  bhgremodel.112.2o7.net

127.0.0.1  bhgquilting.112.2o7.net

127.0.0.1  bnkholic.112.2o7.net

127.0.0.1  bellglobemediapublishing.122.2o7.net

127.0.0.1  bertelwissenprod.122.2o7.net

127.0.0.1  bet.122.2o7.net

127.0.0.1  betterhg.112.2o7.net

127.0.0.1  bigpond.122.2o7.net

127.0.0.1  bizjournals.112.2o7.net

127.0.0.1  blockbuster.112.2o7.net

127.0.0.1  blockbustercom.112.2o7.net

127.0.0.1  bnkr8dev.112.2o7.net

127.0.0.1  bonneville.112.2o7.net

127.0.0.1  boostmobile.112.2o7.net

127.0.0.1  bostoncommonpress.112.2o7.net

127.0.0.1  brightcove.112.2o7.net

127.0.0.1  builderonlinecom.112.2o7.net

127.0.0.1  businessweekpoc.112.2o7.net

127.0.0.1  buycom.122.2o7.net

127.0.0.1  buzznet.112.2o7.net

127.0.0.1  byubroadcast.112.2o7.net

127.0.0.1  cancalgary.112.2o7.net

127.0.0.1  canfinancialpost.112.2o7.net

127.0.0.1  cannationalpost.112.2o7.net

127.0.0.1  canottowa.112.2o7.net

127.0.0.1  canwest.112.2O7.net

127.0.0.1  canwestdose.112.2o7.net

127.0.0.1  capcityadvcom.112.2o7.net

127.0.0.1  capecodonlinecom.112.2o7.net

127.0.0.1  care2.112.2o7.net

127.0.0.1  carlsonradisson.112.2o7.net

127.0.0.1  cartoonnetwork.122.2o7.net

127.0.0.1  cbc.122.2o7.net

127.0.0.1  cbcnewmedia.112.2o7.net

127.0.0.1  cbmsn.112.2o7.net

127.0.0.1  cbglobal.112.2O7.net

127.0.0.1  cbs.112.2o7.net #[SpySweeper.Spy.Cookie]

127.0.0.1  cbscom.112.2O7.net

127.0.0.1  cbsdigitalmedia.112.2o7.net

127.0.0.1  cbsnfl.112.2O7.net

127.0.0.1  cbspgatour.112.2o7.net

127.0.0.1  cbsspln.112.2O7.net

127.0.0.1  ccrgaviscom.112.2o7.net

127.0.0.1  chacha.112.2o7.net

127.0.0.1  chchoice.112.2o7.net

127.0.0.1  chghowardjohnson.112.2o7.net

127.0.0.1  chgsupereight.112.2o7.net

127.0.0.1  ciaocom.122.2o7.net

127.0.0.1  cnhicrossvillechronicle.122.2o7.net

127.0.0.1  cnhidailyindependent.122.2o7.net

127.0.0.1  cnhienid.122.2o7.net

127.0.0.1  cnnireport.122.2o7.net

127.0.0.1  cnetasiapacific.122.2o7.net

127.0.0.1  chgwyndham.112.2o7.net

127.0.0.1  chicagosuntimes.122.2o7.net

127.0.0.1  chumtv.122.2o7.net

127.0.0.1  ciaoshopcouk.122.2o7.net

127.0.0.1  ciaoshopit.122.2o7.net

127.0.0.1  classmatescom.112.2o7.net

127.0.0.1  clubmom.122.2o7.net

127.0.0.1  cmp.112.2o7.net

127.0.0.1  cmpdotnetjunkiescom.112.2o7.net

127.0.0.1  cmpglobalvista.112.2o7.net

127.0.0.1  cmtvia.112.2o7.net

127.0.0.1  cnetaustralia.122.2o7.net

127.0.0.1  cneteurope.122.2O7.net

127.0.0.1  cnetjapan.122.2o7.net

127.0.0.1  cnetnews.112.2o7.net

127.0.0.1  cnettech.112.2O7.net

127.0.0.1  cnetzdnet.112.2o7.net

127.0.0.1  cnheagletribune.112.2o7.net

127.0.0.1  cnhiautovertical.122.2o7.net

127.0.0.1  cnhibatesvilleheraldtribune.122.2o7.net

127.0.0.1  cnhibdtonline.122.2o7.net

127.0.0.1  cnhieagletribune.122.2o7.net

127.0.0.1  cnhijohnstown.122.2o7.net

127.0.0.1  cnhijoplinglobe.122.2o7.net

127.0.0.1  cnhinewscourier.122.2o7.net

127.0.0.1  cnhinewsservicedev.122.2o7.net

127.0.0.1  cnhirecordeagle.122.2o7.net

127.0.0.1  cnn.122.2O7.net

127.0.0.1  cnnglobal.122.2O7.net

127.0.0.1  cnocanoecaprod.112.2o7.net

127.0.0.1  cnoompprod.112.2o7.net

127.0.0.1  computerworldcom.112.2o7.net

127.0.0.1  conpst.112.2o7.net

127.0.0.1  corelcom.112.2o7.net

127.0.0.1  coreluk.112.2o7.net

127.0.0.1  costargroup.112.2o7.net

127.0.0.1  couhome.112.2o7.net

127.0.0.1  couponchief.122.2o7.net

127.0.0.1  coxhsi.112.2o7.net

127.0.0.1  coxnetmasterglobal.112.2o7.net

127.0.0.1  cpusall.112.2o7.net

127.0.0.1  creditcardscom.112.2o7.net

127.0.0.1  csoonlinecom.112.2o7.net

127.0.0.1  ctvcrimelibrary.112.2o7.net

127.0.0.1  ctvmaincom.112.2o7.net

127.0.0.1  ctvsmokinggun.112.2O7.net

127.0.0.1  ctvtsgtv.112.2o7.net

127.0.0.1  cwportal.112.2o7.net

127.0.0.1  cxociocom.112.2o7.net

127.0.0.1  cxocomdev.112.2o7.net

127.0.0.1  dailyheraldpaddockpublication.112.2o7.net

127.0.0.1  dardenrestaurants.112.2o7.net

127.0.0.1  dealnews.122.2o7.net

127.0.0.1  delightful.112.2o7.net

127.0.0.1  divx.112.2o7.net

127.0.0.1  dixonscouk.112.2o7.net

127.0.0.1  dmvguidecom.112.2o7.net

127.0.0.1  dotster.112.2O7.net

127.0.0.1  dotsterdomaincom.112.2o7.net

127.0.0.1  dotsterdotsteraug08.112.2o7.net

127.0.0.1  dreamhome.112.2o7.net

127.0.0.1  eaeacom.112.2o7.net

127.0.0.1  eagamesuk.112.2o7.net

127.0.0.1  eaglemiles.112.2o7.net

127.0.0.1  eapogocom.112.2o7.net

127.0.0.1  earthlink.122.2o7.net

127.0.0.1  earthlnkpsplive.122.2o7.net

127.0.0.1  edietsmain.112.2o7.net

127.0.0.1  edmundscom.112.2o7.net

127.0.0.1  efashionsolutions.122.2o7.net

127.0.0.1  electronicarts.112.2o7.net

127.0.0.1  enterprisenewsmedia.122.2o7.net

127.0.0.1  entrepreneur.122.2o7.net

127.0.0.1  entrepreneurpoc.122.2O7.net

127.0.0.1  epebuild.112.2o7.net

127.0.0.1  eplans.112.2o7.net

127.0.0.1  eremedia.112.2o7.net

127.0.0.1  eurostar.122.2o7.net

127.0.0.1  evepdaikencom.112.2o7.net

127.0.0.1  evepdcharleston.112.2o7.net

127.0.0.1  evepdaggiesports.112.2o7.net

127.0.0.1  evepdbrazossports.112.2o7.net

127.0.0.1  evepdeagledev.112.2o7.net

127.0.0.1  ewsabilene.112.2o7.net

127.0.0.1  ewscorpuschristi.112.2o7.net

127.0.0.1  ewsmemphis.112.2o7.net

127.0.0.1  ewsnaples.112.2o7.net

127.0.0.1  ewsventura.112.2o7.net

127.0.0.1  expedia1.112.2o7.net

127.0.0.1  expedia6vt.112.2o7.net

127.0.0.1  expedia8.112.2o7.net

127.0.0.1  extrovert.122.2o7.net

127.0.0.1  ezgds.112.2o7.net

127.0.0.1  f2communitynews.112.2o7.net

127.0.0.1  f2nbt.112.2o7.net

127.0.0.1  f2nmycareer.112.2o7.net

127.0.0.1  f2nsmh.112.2o7.net

127.0.0.1  f2ntheage.112.2o7.net

127.0.0.1  factiva.122.2o7.net

127.0.0.1  farecastcom.122.2o7.net

127.0.0.1  fbfredericksburgcom.112.2o7.net

127.0.0.1  figlobal.112.2o7.net

127.0.0.1  ford.112.2o7.net

127.0.0.1  foxamw.112.2o7.net

127.0.0.1  foxcom.112.2o7.net

127.0.0.1  foxidol.112.2o7.net

127.0.0.1  furnlevitz.112.2o7.net

127.0.0.1  furniturecom.112.2o7.net

127.0.0.1  gatehousemedia.122.2o7.net

127.0.0.1  gateway.122.2o7.net

127.0.0.1  genetree.112.2o7.net

127.0.0.1  geosign.112.2o7.net

127.0.0.1  gifastcompanycom.112.2o7.net

127.0.0.1  gjfastcompanycom.112.2o7.net

127.0.0.1  gjincscobleizer.112.2o7.net

127.0.0.1  giftscom.122.2o7.net

127.0.0.1  gmgoodwrenchdmaprod.112.2o7.net

127.0.0.1  gntbcstkare.112.2o7.net

127.0.0.1  gntbcstksdk.112.2o7.net

127.0.0.1  gntbcstkthv.112.2o7.net

127.0.0.1  gntbcstkxtv.112.2o7.net

127.0.0.1  gntbcstwbir.112.2o7.net

127.0.0.1  gntbcstwfmy.112.2o7.net

127.0.0.1  gntbcstwkyc.112.2o7.net

127.0.0.1  gntbcstwlbz.112.2o7.net

127.0.0.1  gntbcstwmaz.112.2o7.net

127.0.0.1  gntbcstwcsh.112.2o7.net

127.0.0.1  gntbcstwltx.112.2o7.net

127.0.0.1  gntbcstwtlv.112.2o7.net

127.0.0.1  gntbcstwtsp.112.2o7.net

127.0.0.1  gntbcstwusa.112.2o7.net

127.0.0.1  gntbcstwxia.112.2o7.net

127.0.0.1  gntbcstwzzm.112.2o7.net

127.0.0.1  gntbcstglobal.112.2o7.net

127.0.0.1  gntbcstkusa.112.2o7.net

127.0.0.1  gourmetgiftbaskets.112.2o7.net

127.0.0.1  gpaper105.112.2o7.net

127.0.0.1  gpaper106.112.2o7.net

127.0.0.1  gpaper107.112.2o7.net

127.0.0.1  gpaper108.112.2o7.net

127.0.0.1  gpaper109.112.2o7.net

127.0.0.1  gpaper110.112.2O7.net

127.0.0.1  gpaper111.112.2o7.net

127.0.0.1  gpaper112.112.2o7.net

127.0.0.1  gpaper114.112.2O7.net

127.0.0.1  gpaper115.112.2o7.net

127.0.0.1  gpaper116.112.2o7.net

127.0.0.1  gpaper117.112.2o7.net

127.0.0.1  gpaper119.112.2O7.net

127.0.0.1  gpaper120.112.2o7.net

127.0.0.1  gpaper121.112.2O7.net

127.0.0.1  gpaper122.112.2o7.net

127.0.0.1  gpaper123.112.2O7.net

127.0.0.1  gpaper124.112.2O7.net

127.0.0.1  gpaper125.112.2o7.net

127.0.0.1  gpaper127.112.2o7.net

127.0.0.1  gpaper128.112.2o7.net

127.0.0.1  gpaper131.112.2o7.net

127.0.0.1  gpaper132.112.2o7.net

127.0.0.1  gpaper133.112.2o7.net

127.0.0.1  gpaper134.112.2o7.net

127.0.0.1  gpaper135.112.2o7.net

127.0.0.1  gpaper136.112.2O7.net

127.0.0.1  gpaper137.112.2o7.net

127.0.0.1  gpaper138.112.2o7.net

127.0.0.1  gpaper139.112.2o7.net

127.0.0.1  gpaper140.112.2o7.net

127.0.0.1  gpaper141.112.2o7.net

127.0.0.1  gpaper142.112.2o7.net

127.0.0.1  gpaper143.112.2o7.net

127.0.0.1  gpaper144.112.2o7.net

127.0.0.1  gpaper145.112.2O7.net

127.0.0.1  gpaper147.112.2o7.net

127.0.0.1  gpaper149.112.2O7.net #[eTrust.Tracking.Cookie]

127.0.0.1  gpaper150.112.2o7.net

127.0.0.1  gpaper151.112.2o7.net

127.0.0.1  gpaper152.112.2o7.net

127.0.0.1  gpaper156.112.2o7.net

127.0.0.1  gpaper157.112.2o7.net

127.0.0.1  gpaper158.112.2O7.net

127.0.0.1  gpaper160.112.2o7.net

127.0.0.1  gpaper161.112.2o7.net

127.0.0.1  gpaper162.112.2o7.net

127.0.0.1  gpaper163.112.2o7.net

127.0.0.1  gpaper164.112.2o7.net

127.0.0.1  gpaper166.112.2o7.net

127.0.0.1  gpaper167.112.2o7.net

127.0.0.1  gpaper168.112.2o7.net

127.0.0.1  gpaper169.112.2o7.net

127.0.0.1  gpaper170.112.2o7.net

127.0.0.1  gpaper171.112.2o7.net

127.0.0.1  gpaper172.112.2o7.net

127.0.0.1  gpaper173.112.2o7.net

127.0.0.1  gpaper174.112.2o7.net

127.0.0.1  gpaper175.112.2o7.net

127.0.0.1  gpaper176.112.2o7.net

127.0.0.1  gpaper177.112.2o7.net

127.0.0.1  gpaper178.112.2o7.net

127.0.0.1  gpaper180.112.2o7.net

127.0.0.1  gpaper182.112.2o7.net

127.0.0.1  gpaper183.112.2o7.net

127.0.0.1  gpaper184.112.2o7.net

127.0.0.1  gpaper185.112.2O7.net

127.0.0.1  gpaper186.112.2o7.net

127.0.0.1  gpaper187.112.2o7.net

127.0.0.1  gpaper188.112.2o7.net

127.0.0.1  gpaper190.112.2o7.net

127.0.0.1  gpaper191.112.2o7.net

127.0.0.1  gpaper194.112.2o7.net

127.0.0.1  gpaper195.112.2o7.net

127.0.0.1  gpaper196.112.2o7.net

127.0.0.1  gpaper197.112.2o7.net

127.0.0.1  gpaper199.112.2O7.net

127.0.0.1  gpaper201.112.2o7.net

127.0.0.1  gpaper202.112.2o7.net #[Ad-Aware.Tracking.Cookie]

127.0.0.1  gpaper204.112.2O7.net

127.0.0.1  gpaper211.112.2o7.net

127.0.0.1  gpaper214.112.2o7.net

127.0.0.1  gpaper218.112.2o7.net

127.0.0.1  gpaper223.112.2o7.net

127.0.0.1  gpaper231.112.2o7.net

127.0.0.1  gpaper246.112.2o7.net

127.0.0.1  gpapercareer.112.2o7.net

127.0.0.1  hallmarkibmcom.112.2o7.net

127.0.0.1  harconsumer.112.2o7.net

127.0.0.1  harrahscom.112.2o7.net

127.0.0.1  harpo.122.2o7.net

127.0.0.1  hchrmain.112.2o7.net

127.0.0.1  hearstmagazines.112.2o7.net

127.0.0.1  heavycom.122.2o7.net

127.0.0.1  hertz.122.2o7.net

127.0.0.1  highbeam.122.2o7.net

127.0.0.1  himedia.112.2o7.net

127.0.0.1  homepjlconline.com.112.2o7.net

127.0.0.1  homepproav.112.2o7.net

127.0.0.1  homestore.122.2o7.net

127.0.0.1  hotelscom.122.2o7.net

127.0.0.1  hphqglobal.112.2o7.net

127.0.0.1  hswmedia.122.2o7.net

127.0.0.1  hulu.112.2o7.net

127.0.0.1  huludev.112.2o7.net

127.0.0.1  ibibo.112.2o7.net

127.0.0.1  ice.112.2o7.net

127.0.0.1  imc2.122.2o7.net

127.0.0.1  imeem.112.2o7.net

127.0.0.1  imiliving.122.2o7.net

127.0.0.1  incisivemedia.112.2o7.net

127.0.0.1  infratotalduicom.122.2O7.net

127.0.0.1  infoworldmediagroup.112.2o7.net

127.0.0.1  intelcorpchan.112.2o7.net

127.0.0.1  intelcorperror.112.2o7.net

127.0.0.1  intelcorpsupp.112.2o7.net

127.0.0.1  interland.122.2o7.net

127.0.0.1  instadia.112.2o7.net

127.0.0.1  ipcwebuserprod.122.2o7.net

127.0.0.1  ipcuncut.122.2o7.net

127.0.0.1  itmedia.122.2o7.net

127.0.0.1  itv.112.2o7.net

127.0.0.1  iusacomlive.112.2o7.net

127.0.0.1  ivillageglobal.112.2o7.net

127.0.0.1  jetbluepkgcs.112.2o7.net

127.0.0.1  jijsonline.112.2o7.net

127.0.0.1  jijsonline.122.2o7.net

127.0.0.1  jiktnv.122.2o7.net

127.0.0.1  jiwire.112.2o7.net

127.0.0.1  jiwtmj.122.2o7.net

127.0.0.1  jmsyap.112.2o7.net

127.0.0.1  johnlewis.112.2o7.net

127.0.0.1  jrcdelcotimescom.122.2O7.net

127.0.0.1  jrcom.112.2o7.net

127.0.0.1  journalregistercompany.122.2o7.net

127.0.0.1  kaboose.112.2o7.net

127.0.0.1  kasperthreatpostprod.112.2o7.net

127.0.0.1  kaspersky.122.2o7.net

127.0.0.1  kbbmain.112.2o7.net

127.0.0.1  kelleybluebook.112.2o7.net

127.0.0.1  kiplinger.112.2o7.net

127.0.0.1  lab88inc.112.2o7.net

127.0.0.1  laptopmag.122.2o7.net

127.0.0.1  laxnws.112.2o7.net #[WebBug]

127.0.0.1  laxprs.112.2o7.net

127.0.0.1  laxpsd.112.2o7.net

127.0.0.1  laxwht.122.2o7.net

127.0.0.1  laxwht.112.2o7.net

127.0.0.1  leaitworldprod.112.2o7.net

127.0.0.1  leeenterprises.112.2o7.net

127.0.0.1  ldsfch.112.2o7.net

127.0.0.1  livedealcom.112.2o7.net

127.0.0.1  livenation.122.2o7.net

127.0.0.1  mailtribunecom.112.2o7.net

127.0.0.1  mapscom2.112.2o7.net

127.0.0.1  marinermarketing.112.2o7.net

127.0.0.1  marketlive.122.2o7.net

127.0.0.1  marketworksinc.122.2o7.net

127.0.0.1  marksandspencer.122.2o7.net

127.0.0.1  mattressusa.122.2o7.net

127.0.0.1  maxim.122.2o7.net

127.0.0.1  mcclatchy.112.2o7.net

127.0.0.1  mdjacksonville.112.2O7.net

127.0.0.1  mdpparents.112.2o7.net

127.0.0.1  mdwathens.112.2o7.net

127.0.0.1  mdwaugusta.112.2o7.net

127.0.0.1  mdwjuneau.112.2o7.net

127.0.0.1  mdwoakridge.112.2o7.net

127.0.0.1  mdwsavannah.112.2o7.net

127.0.0.1  mediabistro.112.2o7.net

127.0.0.1  mediabistrocom.112.2o7.net

127.0.0.1  medialogic.122.2o7.net

127.0.0.1  mediamatters.112.2o7.net

127.0.0.1  meetupdev.122.2O7.net

127.0.0.1  memberservicesinc.122.2o7.net

127.0.0.1  metacafe.122.2o7.net

127.0.0.1  mgdothaneagle.112.2o7.net

127.0.0.1  mghickoryrecord.112.2o7.net

127.0.0.1  mgjournalnow.112.2O7.net

127.0.0.1  mgoanow.112.2o7.net

127.0.0.1  mngitwincities.112.2o7.net

127.0.0.1  mgstarexponent.112.2o7.net

127.0.0.1  mgtbo.112.2O7.net

127.0.0.1  mgtbopanels.112.2O7.net

127.0.0.1  mgtimesdispatch.112.2o7.net

127.0.0.1  mgwcbd.112.2o7.net

127.0.0.1  mgwjar.112.2o7.net

127.0.0.1  mgwnct.112.2O7.net

127.0.0.1  mgwsav.112.2o7.net

127.0.0.1  mgwsls.112.2O7.net

127.0.0.1  milbglobal.112.2o7.net

127.0.0.1  microsofteup.112.2o7.net #[Panda.Spyware:Cookie/Microsofte]

127.0.0.1  microsoftinternetexplorer.112.2o7.net

127.0.0.1  microsoftmachinetranslation.112.2o7.net

127.0.0.1  microsoftoffice.112.2o7.net

127.0.0.1  microsoftsto.112.2o7.net

127.0.0.1  microsoftuk.122.2o7.net

127.0.0.1  microsoftwga.112.2o7.net

127.0.0.1  microsoftwindows.112.2o7.net

127.0.0.1  microsoftwlmailmkt.112.2o7.net

127.0.0.1  microsoftwlmessengermkt.112.2o7.net

127.0.0.1  microsoftwlmobilemkt.112.2o7.net

127.0.0.1  microsoftwlsearchcrm.112.2o7.net

127.0.0.1  midala.112.2o7.net

127.0.0.1  midar.112.2o7.net

127.0.0.1  midcru.112.2o7.net

127.0.0.1  midsen.112.2o7.net

127.0.0.1  mkcthehomemarketplace.112.2o7.net

127.0.0.1  mkt10.122.2o7.net

127.0.0.1  mlbatlanta.112.2o7.net

127.0.0.1  mlbcincinnati.112.2o7.net

127.0.0.1  mlbcom.112.2o7.net

127.0.0.1  mlbglobal.112.2o7.net

127.0.0.1  mlbglobal08.112.2o7.net

127.0.0.1  mlbsanfrancisco.112.2o7.net

127.0.0.1  mlsglobal.112.2o7.net

127.0.0.1  mngidailybreeze.112.2o7.net

127.0.0.1  mngimng.112.2o7.net

127.0.0.1  mngirockymtnnews.112.2o7.net

127.0.0.1  mngislctrib.112.2o7.net

127.0.0.1  mngisv.112.2o7.net

127.0.0.1  mngiyhnat.112.2o7.net

127.0.0.1  morningnewsonline.112.2o7.net

127.0.0.1  mpire.112.2o7.net

127.0.0.1  mngidmn.112.2O7.net

127.0.0.1  mngimercurynews.112.2o7.net

127.0.0.1  mseupwinxpfam.112.2o7.net

127.0.0.1  msna1com.112.2o7.net

127.0.0.1  msnaccountservices.112.2o7.net

127.0.0.1  msnbcom.112.2o7.net

127.0.0.1  msnbc.112.2o7.net

127.0.0.1  msneshopbase.112.2o7.net

127.0.0.1  msninvite.112.2o7.net

127.0.0.1  msninviteprod.112.2O7.net

127.0.0.1  msnlivefavorites.112.2o7.net

127.0.0.1  msnmercom.112.2o7.net

127.0.0.1  msnmercustacqprod.112.2o7.net

127.0.0.1  msnonecare.112.2o7.net

127.0.0.1  msnportalaffiliate.112.2o7.net

127.0.0.1  msnportalaunews.112.2O7.net

127.0.0.1  msnportalbeetoffice2007.112.2o7.net

127.0.0.1  msnportalhome.112.2O7.net

127.0.0.1  msnportalgame.112.2O7.net

127.0.0.1  msnportallatino.112.2O7.net

127.0.0.1  msnportalmsgboardsrvc.112.2O7.net

127.0.0.1  msnportalvideo.112.2o7.net

127.0.0.1  msntrademarketing.112.2o7.net

127.0.0.1  msnwinonecare.112.2o7.net #[Windows OneCare]

127.0.0.1  msnportal.112.2o7.net #[SpySweeper.Spy.Cookie]

127.0.0.1  msnportallive.112.2O7.net

127.0.0.1  msnservices.112.2o7.net

127.0.0.1  mssbcprod.112.2o7.net

127.0.0.1  mswlspcmktdev.112.2O7.net

127.0.0.1  multiply.112.2o7.net

127.0.0.1  mxmacromedia.112.2o7.net

127.0.0.1  myfamilyancestry.112.2o7.net

127.0.0.1  nasdaqdev.122.2O7.net

127.0.0.1  natgeoedit.112.2o7.net

127.0.0.1  natgeoeditcom.112.2o7.net

127.0.0.1  natgeoglobal.112.2o7.net

127.0.0.1  natgeohomepage.112.2o7.net

127.0.0.1  natgeonavcom.112.2o7.net

127.0.0.1  natgeonews.112.2o7.net

127.0.0.1  natgeongkidsmagccom.112.2o7.net

127.0.0.1  natgeongmcom.112.2o7.net

127.0.0.1  natgeopeopleplaces.112.2o7.net

127.0.0.1  natgeotravelermagcom.112.2o7.net

127.0.0.1  natgeovideo.112.2o7.net

127.0.0.1  nbcuniversal.122.2o7.net

127.0.0.1  neber.112.2o7.net

127.0.0.1  nebnr.112.2o7.net

127.0.0.1  neref.112.2o7.net

127.0.0.1  networksolutions.112.2o7.net

127.0.0.1  newsinteractive.112.2o7.net

127.0.0.1  newsok.112.2o7.net

127.0.0.1  newstimeslivecom.112.2o7.net

127.0.0.1  newyorkmagazine.112.2o7.net

127.0.0.1  nielsen.112.2o7.net

127.0.0.1  nikefootball.112.2o7.net

127.0.0.1  nikefootballglobal.112.2o7.net

127.0.0.1  nikegoddess.112.2o7.net

127.0.0.1  nikehome.112.2o7.net

127.0.0.1  nikerunning.112.2o7.net

127.0.0.1  nikerunningglobal.112.2o7.net

127.0.0.1  njmvc.112.2o7.net

127.0.0.1  nmanchorage.112.2o7.net

127.0.0.1  nmbakersfieldca.112.2o7.net

127.0.0.1  nmbeaufort.112.2o7.net

127.0.0.1  nmbelleville.112.2o7.net

127.0.0.1  nmbradenton.112.2o7.net

127.0.0.1  nmcharlotte.112.2o7.net

127.0.0.1  nmcomnancomedia.112.2o7.net

127.0.0.1  nmeprod.122.2O7.net

127.0.0.1  nmfortworth.112.2o7.net

127.0.0.1  nmfresno.112.2o7.net

127.0.0.1  nmhiltonhead.112.2o7.net

127.0.0.1  nmkansascity.112.2o7.net

127.0.0.1  nmlexington.112.2o7.net

127.0.0.1  nmmclatchy.112.2o7.net

127.0.0.1  nmmerced.112.2o7.net

127.0.0.1  nmmiami.112.2o7.net

127.0.0.1  nmminneapolis.112.2o7.net

127.0.0.1  nmmodesto.112.2o7.net

127.0.0.1  nmraleigh.112.2o7.net

127.0.0.1  nmrockhill.112.2o7.net

127.0.0.1  nmsacramento.112.2O7.net

127.0.0.1  nmsanluisobispo.112.2o7.net

127.0.0.1  nmstatecollege.112.2o7.net

127.0.0.1  nmthatsracin.112.2o7.net

127.0.0.1  nortelcom.112.2o7.net

127.0.0.1  northjersey.112.2o7.net

127.0.0.1  northwestairlines.112.2o7.net

127.0.0.1  novell.112.2o7.net

127.0.0.1  novellcom.112.2o7.net

127.0.0.1  nsdldlese.112.2o7.net

127.0.0.1  nttcommunications.122.2o7.net

127.0.0.1  nysun.com.112.2o7.net

127.0.0.1  nytbglobe.112.2O7.net

127.0.0.1  nytrflorence.112.2o7.net

127.0.0.1  nytrgainesville.112.2o7.net

127.0.0.1  nytrhendersonville.112.2o7.net

127.0.0.1  nytrlakeland.112.2o7.net

127.0.0.1  nytrlexington.112.2o7.net

127.0.0.1  nytrocala.112.2o7.net

127.0.0.1  nytrsantarosa.112.2o7.net

127.0.0.1  nytrsarasota.112.2o7.net

127.0.0.1  nytrthibodaux.112.2o7.net

127.0.0.1  nytrtuscaloosa.112.2o7.net

127.0.0.1  nytrwilmington.112.2o7.net

127.0.0.1  nytrworcester.112.2o7.net

127.0.0.1  nyttechnology.112.2O7.net

127.0.0.1  oberonincredig.112.2o7.net

127.0.0.1  oklahomadepartmentofcommerce.112.2o7.net

127.0.0.1  omniture.112.2o7.net #[McAfee.Cookie-Omniture]

127.0.0.1  omniturecom.112.2o7.net

127.0.0.1  omniturebanners.112.2o7.net

127.0.0.1  omniscbt.112.2o7.net

127.0.0.1  omvisidtest1.112.2o7.net

127.0.0.1  onetoone.112.2o7.net

127.0.0.1  onlinegurupopularsitecom.112.2o7.net

127.0.0.1  oodpreprod.122.2o7.net

127.0.0.1  optimost.112.2o7.net

127.0.0.1  oraclecom.112.2o7.net

127.0.0.1  ottdailytidingscom.112.2o7.net

127.0.0.1  ottacknet.112.2o7.net

127.0.0.1  overstock.com.112.2o7.net

127.0.0.1  overturecom.112.2o7.net

127.0.0.1  overturecomvista.112.2o7.net

127.0.0.1  pandasoftware.112.2o7.net

127.0.0.1  partygaming.122.2o7.net

127.0.0.1  partygamingglobal.122.2O7.net

127.0.0.1  pch.122.2o7.net

127.0.0.1  pctoolscom.112.2o7.net

127.0.0.1  pentonmedia.122.2o7.net

127.0.0.1  petakfc.112.2o7.net

127.0.0.1  petamain.112.2o7.net

127.0.0.1  philips.112.2o7.net

127.0.0.1  phillyburbscom.112.2o7.net

127.0.0.1  phillycom.112.2o7.net

127.0.0.1  planetout.122.2o7.net

127.0.0.1  pldev.112.2o7.net

127.0.0.1  plsoyfoods.112.2o7.net

127.0.0.1  poacprod.122.2o7.net

127.0.0.1  poconorecordcom.112.2o7.net

127.0.0.1  powellsbooks.122.2o7.net

127.0.0.1  poweronemedia.122.2o7.net

127.0.0.1  premiumtv.122.2o7.net

127.0.0.1  primediabusiness.122.2o7.net

127.0.0.1  primestarmagazine.112.2o7.net

127.0.0.1  prnewswire.122.2o7.net

127.0.0.1  primemensfitness.112.2o7.net

127.0.0.1  pulkauaiworld.112.2o7.net

127.0.0.1  pultheworldlink.112.2o7.net

127.0.0.1  questiacom.112.2o7.net

127.0.0.1  qwestfull.112.2o7.net

127.0.0.1  rainbowmedia.122.2o7.net

127.0.0.1  rakuten.112.2o7.net

127.0.0.1  rcntelecom.112.2o7.net

127.0.0.1  rebtelnetworks.112.2o7.net

127.0.0.1  recordeaglecom.112.2o7.net

127.0.0.1  recordnetcom.112.2o7.net

127.0.0.1  recordonlinecom.112.2o7.net

127.0.0.1  registercom.122.2o7.net

127.0.0.1  remodelingonlinecom.112.2o7.net

127.0.0.1  rentcom.112.2o7.net

127.0.0.1  reunioncom.112.2o7.net

127.0.0.1  riptownmedia.122.2o7.net

127.0.0.1  riverdeep.112.2o7.net

127.0.0.1  rmgparcelforcecom.112.2o7.net

127.0.0.1  rmgroyalmailcom.112.2o7.net

127.0.0.1  rrpartners.122.2o7.net

127.0.0.1  safaribooks.112.2o7.net

127.0.0.1  saksfifthavenue.122.2o7.net

127.0.0.1  santacruzsentinelcom.112.2o7.net

127.0.0.1  saxobutlereagle.122.2o7.net

127.0.0.1  saxoconcordmonitor.122.2o7.net

127.0.0.1  saxoeverett.122.2o7.net

127.0.0.1  saxofosters.122.2o7.net

127.0.0.1  saxogoerie.122.2o7.net

127.0.0.1  saxogreensboro.122.2o7.net

127.0.0.1  saxoorklamedia.122.2o7.net

127.0.0.1  saxopeninsuladailynews.122.2o7.net

127.0.0.1  saxorutland.122.2o7.net

127.0.0.1  saxosumteritem.122.2o7.net

127.0.0.1  saxotech.122.2o7.net

127.0.0.1  saxotechtylerpaper.122.2o7.net

127.0.0.1  saxotelegraph.122.2o7.net

127.0.0.1  saxotoledo.122.2o7.net

127.0.0.1  saxowenworld.122.2o7.net

127.0.0.1  saxowesterncommunications.122.2o7.net

127.0.0.1  sbsblukgov.112.2o7.net

127.0.0.1  sciamcom.112.2o7.net

127.0.0.1  scottrade.112.2o7.net

127.0.0.1  scrippsdiy.112.2o7.net

127.0.0.1  scrippsfineliving.112.2o7.net

127.0.0.1  scrippsfoodnet.112.2o7.net

127.0.0.1  scrippsfoodnetnew.112.2o7.net

127.0.0.1  scrippsgac.112.2o7.net

127.0.0.1  scrippshgtv.112.2o7.net

127.0.0.1  scrippshgtvpro.112.2o7.net

127.0.0.1  scrippsrecipezaar.112.2o7.net

127.0.0.1  seacoastonlinecom.112.2o7.net

127.0.0.1  sears.112.2o7.net

127.0.0.1  searscom.112.2o7.net

127.0.0.1  searskmartcom.112.2o7.net

127.0.0.1  sento.122.2o7.net

127.0.0.1  sevenoneintermedia.112.2o7.net

127.0.0.1  schaeffers.112.2o7.net

127.0.0.1  shawnewspapers.112.2o7.net

127.0.0.1  shopping.112.2o7.net

127.0.0.1  skyauction.122.2O7.net

127.0.0.1  slbbbcom.112.2o7.net

127.0.0.1  sltravelcom.112.2o7.net

127.0.0.1  smartmoney.112.2o7.net

127.0.0.1  smibs.112.2o7.net

127.0.0.1  smpopmech.112.2o7.net

127.0.0.1  smwww.112.2O7.net

127.0.0.1  snapfish.112.2o7.net

127.0.0.1  softonic.112.2o7.net

127.0.0.1  sonychina.112.2o7.net

127.0.0.1  sonycorporate.112.2o7.net

127.0.0.1  sonyscei.112.2o7.net

127.0.0.1  southcoasttodaycom.112.2o7.net

127.0.0.1  spamfighter.112.2o7.net

127.0.0.1  sparknetworks.112.2o7.net

127.0.0.1  sportingnews.122.2o7.net

127.0.0.1  sprintglobal.112.2o7.net

127.0.0.1  stampscom.112.2o7.net

127.0.0.1  starz.122.2o7.net

127.0.0.1  stpetersburgtimes.122.2o7.net

127.0.0.1  stubhub.122.2o7.net

127.0.0.1  stylincom.112.2o7.net

127.0.0.1  sunglobal.112.2o7.net

127.0.0.1  superpages.122.2o7.net

127.0.0.1  surfline.112.2o7.net

127.0.0.1  survey.112.2o7.net

127.0.0.1  swsoft.122.2o7.net

127.0.0.1  sympmsnglobalen.112.2o7.net

127.0.0.1  sympmsnmusic.112.2o7.net

127.0.0.1  tbstv.112.2o7.net

127.0.0.1  techreview.112.2o7.net

127.0.0.1  tel3adv.112.2o7.net

127.0.0.1  telefloracom.112.2o7.net

127.0.0.1  thayhoteldelcoronado.112.2o7.net

127.0.0.1  thayhiltonlongisland.112.2o7.net

127.0.0.1  thayvenetian.112.2o7.net

127.0.0.1  thedailystarcom.112.2o7.net

127.0.0.1  thgalecom.112.2o7.net

127.0.0.1  thelibraryofcongress.122.2o7.net

127.0.0.1  thestar.122.2O7.net

127.0.0.1  thestardev.122.2O7.net

127.0.0.1  thinkgeek.112.2o7.net

127.0.0.1  thomasvillefurniture.122.2o7.net

127.0.0.1  thome.112.2o7.net

127.0.0.1  timecom.112.2o7.net

127.0.0.1  timecom.122.2o7.net

127.0.0.1  timeew.122.2o7.net

127.0.0.1  timeessence.122.2o7.net

127.0.0.1  timefoodandwine.122.2o7.net

127.0.0.1  timefortune.112.2o7.net

127.0.0.1  timehealthtips.122.2o7.net

127.0.0.1  timeinc.122.2o7.net

127.0.0.1  timelife.122.2o7.net

127.0.0.1  timepeople.122.2o7.net

127.0.0.1  timepespanol.122.2o7.net

127.0.0.1  timeteenpeople.122.2o7.net

127.0.0.1  tirerackcom.112.2o7.net

127.0.0.1  tgn.122.2o7.net

127.0.0.1  tjx.112.2o7.net

127.0.0.1  tmslexus.112.2o7.net

127.0.0.1  tmstoyota.112.2o7.net

127.0.0.1  tnttv.112.2o7.net

127.0.0.1  torstardigital.122.2o7.net

127.0.0.1  toyota.112.2o7.net

127.0.0.1  trailblazers.122.2o7.net

127.0.0.1  tribuneinteractive.122.2o7.net

127.0.0.1  trinitymirror.112.2o7.net

127.0.0.1  turnerclassic.112.2o7.net

127.0.0.1  turnersports.112.2o7.net

127.0.0.1  tvguide.112.2o7.net

127.0.0.1  uolfreeservers.112.2o7.net

127.0.0.1  uoljunocom2.112.2o7.net

127.0.0.1  uolnetzeronet2.112.2o7.net

127.0.0.1  uolphotosite.112.2o7.net

127.0.0.1  upi.112.2o7.net

127.0.0.1  usatoday1.112.2o7.net

127.0.0.1  usdm.122.2o7.net

127.0.0.1  usnews.122.2o7.net

127.0.0.1  tbsveryfunnyads.112.2o7.net

127.0.0.1  vcomdeepdiscount.112.2o7.net

127.0.0.1  vcommerce.112.2o7.net

127.0.0.1  verisignwildcard.112.2o7.net #[sitefinder.verisign.com]

127.0.0.1  viaaddictingclips.112.2o7.net

127.0.0.1  viaaddictinggames.112.2o7.net

127.0.0.1  viaatom.112.2o7.net

127.0.0.1  viacomedycentralrl.112.2o7.net

127.0.0.1  viagametrailers.112.2o7.net

127.0.0.1  vialogoonline.112.2o7.net

127.0.0.1  vialogorollup.112.2o7.net

127.0.0.1  viamtvcom.112.2o7.net

127.0.0.1  viamtvtr.112.2o7.net

127.0.0.1  viashockwave.112.2o7.net

127.0.0.1  viamtvukdev.112.2o7.net

127.0.0.1  viamtvnvideo.112.2o7.net

127.0.0.1  viaquiz.112.2o7.net

127.0.0.1  viarnd.112.2o7.net

127.0.0.1  viavh1com.112.2o7.net

127.0.0.1  viay2m.112.2o7.net

127.0.0.1  victoriaadvocate.112.2o7.net

127.0.0.1  vintacom.112.2o7.net

127.0.0.1  vintadream.112.2o7.net

127.0.0.1  viamtvuk.112.2o7.net

127.0.0.1  viavh1scandalist.112.2o7.net

127.0.0.1  viavh1video.112.2o7.net

127.0.0.1  vitacost.122.2o7.net

127.0.0.1  videotroncom.112.2o7.net

127.0.0.1  volkswagen.122.2o7.net

127.0.0.1  walgrns.112.2o7.net

127.0.0.1  walmartcom.112.2o7.net

127.0.0.1  warnerbros.112.2o7.net

127.0.0.1  warnerbrothersrecords.112.2o7.net

127.0.0.1  wbextecd.112.2o7.net

127.0.0.1  wbnews.112.2o7.net

127.0.0.1  wbprocurement.112.2o7.net

127.0.0.1  webroot.112.2o7.net

127.0.0.1  whitecastle.122.2o7.net

127.0.0.1  winecom.112.2o7.net

127.0.0.1  winmpmain.112.2O7.net #[Windows MarketPlace]

127.0.0.1  wissende.122.2o7.net

127.0.0.1  wlaptoplogic.122.2o7.net

127.0.0.1  worldnowboston.112.2o7.net

127.0.0.1  wpni.112.2o7.net

127.0.0.1  wrigley.122.2o7.net

127.0.0.1  wwatchcomusa.112.2o7.net

127.0.0.1  wweconsumer.112.2o7.net

127.0.0.1  wwecorp2.112.2o7.net

127.0.0.1  xhealth.112.2o7.net

127.0.0.1  xhealthmobiltools.112.2o7.net

127.0.0.1  yellcom.122.2o7.net

127.0.0.1  yrkdsp.112.2O7.net

127.0.0.1  yukoyuko.112.2o7.net

127.0.0.1  zag.112.2O7.net

127.0.0.1  zango.112.2o7.net

127.0.0.1  zdau-builder.122.2O7.net

127.0.0.1  ziffdavisenterprise.112.2o7.net

127.0.0.1  ziffdavisenterpriseglobal.112.2o7.net

127.0.0.1  ziffdavisfilefront.112.2o7.net

127.0.0.1  ziffdavisglobal.112.2o7.net

127.0.0.1  ziffdavispennyarcade.112.2o7.net

127.0.0.1  stats.esomniture.com #[SpySweeper.Spy.Cookie]

127.0.0.1  www.omniture.com

127.0.0.1  www.touchclarity.com

# [Omniture via Misc Sites]

127.0.0.1  metric.10best.com

127.0.0.1  ewstv.abc15.com

127.0.0.1  n.accessmylibrary.com

127.0.0.1  metrics.accuweather.com

127.0.0.1  stats.adobe.com

127.0.0.1  metric.advanceautoparts.com

127.0.0.1  analytic.ae.com

127.0.0.1  metrics.aftonbladet.se

127.0.0.1  metric.allrecipes.com

127.0.0.1  o.sa.aol.com

127.0.0.1  s.sa.aol.com

127.0.0.1  metrics.apartmentfinder.com

127.0.0.1  metrics.apple.com

127.0.0.1  metrics.appellationamerica.com

127.0.0.1  metrics.autobytel.com

127.0.0.1  metrics.azfamily.com

127.0.0.1  metrics.b5media.com

127.0.0.1  a.beliefnet.com

127.0.0.1  n.betus.com

127.0.0.1  metrics.bhg.com

127.0.0.1  mtrcs.bizrate.com #[bizrate.com.122.2o7.net]

127.0.0.1  vs.blackplanet.com

127.0.0.1  n.bodybuilding.com

127.0.0.1  metrics.boston.com

127.0.0.1  om.businessweek.com

127.0.0.1  stats.cafepress.com

127.0.0.1  metrics.car.com

127.0.0.1  stats.cartoonnetwork.com

127.0.0.1  omniture.chip.de

127.0.0.1  om.cnet.co.uk

127.0.0.1  metrics.cleveland.com

127.0.0.1  metrics.clipmarks.com

127.0.0.1  metrics.cnn.com

127.0.0.1  serviceo.comcast.net

127.0.0.1  metric.current.com

127.0.0.1  metrics.dallasnews.com

127.0.0.1  m.dell.com

127.0.0.1  metrics.dentonrc.com

127.0.0.1  dodsdexonline.dexknows.com

127.0.0.1  z.digg.com

127.0.0.1  a.divinecaroline.com

127.0.0.1  om.dogpile.com

127.0.0.1  om.dowjoneson.com

127.0.0.1  stats.drugstore.com

127.0.0.1  metrics.eldiariony.com

127.0.0.1  o.evite.com

127.0.0.1  stats.examiner.com

127.0.0.1  metrics.experts-exchange.com

127.0.0.1  om.expedia.com

127.0.0.1  vs.faithbase.com

127.0.0.1  stats.fastcompany.com

127.0.0.1  metrics.fitnessmagazine.com

127.0.0.1  metrics.flyingmag.com

127.0.0.1  sc-attache.forbes.com

127.0.0.1  sc-forbes.forbes.com

127.0.0.1  a.fox.com

127.0.0.1  metrics.fox11az.com

127.0.0.1  metrics.foxnews.com

127.0.0.1  analytics.freedom.com

127.0.0.1  metrics.fsci.com

127.0.0.1  hits.guardian.co.uk

127.0.0.1  vs.glee.com

127.0.0.1  w88.go.com

127.0.0.1  metrics.govpro.com

127.0.0.1  metrics.health.com

127.0.0.1  minerva.healthcentral.com

127.0.0.1  metrics.hm.com

127.0.0.1  wasc.homedepot.com

127.0.0.1  metrics.howstuffworks.com

127.0.0.1  my.iheartradio.com

127.0.0.1  metric.infoworld.com

127.0.0.1  www91.intel.com

127.0.0.1  stats.investors.com

127.0.0.1  stats.iso.com

127.0.0.1  metric.jibjab.com

127.0.0.1  dc.kaboodle.com

127.0.0.1  metrics.kgw.com

127.0.0.1  metrics.khou.com

127.0.0.1  metrics.king5.com

127.0.0.1  ww9.kohls.com

127.0.0.1  metrics.krem.com

127.0.0.1  metric.news.ktar.com

127.0.0.1  metrics.ktvb.com

127.0.0.1  metrics.kvue.com

127.0.0.1  ewstv.kypost.com

127.0.0.1  metrics.latina.com

127.0.0.1  metrics.lehighvalleylive.com

127.0.0.1  metrics.lhj.com

127.0.0.1  om.metacrawler.com

127.0.0.1  metrics.metrobostonnews.com

127.0.0.1  metric.mmarated.com

127.0.0.1  metrics.more.com

127.0.0.1  ostats.mozilla.com

127.0.0.1  metrics.musiciansfriend.com

127.0.0.1  metrics.mysanantonio.com

127.0.0.1  stats.nascar.com

127.0.0.1  metrics.nba.com

127.0.0.1  oimg.nbcuni.com

127.0.0.1  om.neimanmarcus.com

127.0.0.1  n.news.com

127.0.0.1  metrix.newsok.com

127.0.0.1  metrics.nfl.com

127.0.0.1  metrics.nj.com

127.0.0.1  metrics.nola.com

127.0.0.1  metrics.npr.org

127.0.0.1  stats.nowpublic.com

127.0.0.1  stats.nutritiondata.com

127.0.0.1  metric.nwsource.com

127.0.0.1  std.o.nytimes.com

127.0.0.1  metrics.oregonlive.com

127.0.0.1  stats.oxfordclub.com

127.0.0.1  metric.parallels.com

127.0.0.1  metrics.parents.com

127.0.0.1  metrics.pe.com

127.0.0.1  metrics.pennlive.com

127.0.0.1  metrics.penton.com

127.0.0.1  metrics.philly.com

127.0.0.1  om.philly.com

127.0.0.1  a.playboy.com

127.0.0.1  metrics.post-gazette.com

127.0.0.1  om.pokerlistings.com

127.0.0.1  mtrcs.popcap.com

127.0.0.1  c.p-real.com

127.0.0.1  metrics.pricegrabber.co.uk

127.0.0.1  metrics1.pricegrabber.com

127.0.0.1  metrics2.pricegrabber.com

127.0.0.1  wa.proflowers.com

127.0.0.1  metrics.projo.com

127.0.0.1  metrics.quick6.com

127.0.0.1  metrics.quickdfw.com

127.0.0.1  omtrkpix.rd.com

127.0.0.1  metrics.recroom.com

127.0.0.1  dc.redcatsusa.com

127.0.0.1  mtrcs.redhat.com

127.0.0.1  metric.rent.com

127.0.0.1  metric.reunion.com

127.0.0.1  metrics.ripetv.com

127.0.0.1  metrics.roadandtrack.com

127.0.0.1  metrics.rottentomatoes.com

127.0.0.1  metrics.seattlepi.com

127.0.0.1  info.seek.com

127.0.0.1  tracking.sevenload.com

127.0.0.1  om.sfgate.com

127.0.0.1  mtrcs.shopzilla.com

127.0.0.1  metrics.si.com

127.0.0.1  metrics.silive.com

127.0.0.1  metrics.solarwinds.com

127.0.0.1  metrics.sony.com

127.0.0.1  metrics.sonystyle.com

127.0.0.1  metrics.southwest.com

127.0.0.1  m.standardinteractive.com

127.0.0.1  stumbleupon.stumble-upon.com

127.0.0.1  stats.men.style.com

127.0.0.1  metrics.sun.com

127.0.0.1  metric.superpages.com

127.0.0.1  om.symantec.com

127.0.0.1  oms.symantec.com

127.0.0.1  metrics.syracuse.com

127.0.0.1  tel.telegraaf.nl

127.0.0.1  info.telstra.com

127.0.0.1  mtr.tfponline.com

127.0.0.1  metrics.thefrisky.com

127.0.0.1  tlp.thelondonpaper.com

127.0.0.1  n.thestar.com

127.0.0.1  m.trb.com

127.0.0.1  metrics.tvguide.com

127.0.0.1  om.usnews.com

127.0.0.1  s.ugo.com

127.0.0.1  statsomni.vehix.com

127.0.0.1  sc.vmware.com

127.0.0.1  cx.vox.com

127.0.0.1  stats.voyages-sncf.com

127.0.0.1  metrics.washingtonpost.com

127.0.0.1  odc.weather.com

127.0.0.1  om.webcrawler.com

127.0.0.1  std.o.webmd.com #[webmdglobal.122.2o7.net][Web Bug]

127.0.0.1  osc.webroot.com

127.0.0.1  stats.wetpaint.com

127.0.0.1  metrics.wfaa.com

127.0.0.1  metrics.whitepages.com

127.0.0.1  metrics.windowsitpro.com

127.0.0.1  metric.wtop.com

127.0.0.1  online.yodle.com

127.0.0.1  om.zdnet.co.uk

127.0.0.1  instadia.net #[Ad-Aware.Tracking.Cookie]

# [Omniture via Offermatica]

127.0.0.1  mbox.offermatica.intuit.com

127.0.0.1  geo.offermatica.com

127.0.0.1  mbox3.offermatica.com

127.0.0.1  mbox4.offermatica.com

127.0.0.1  mbox4e.offermatica.com

127.0.0.1  mbox5.offermatica.com

127.0.0.1  mbox6.offermatica.com

127.0.0.1  mbox9.offermatica.com

127.0.0.1  mbox9e.offermatica.com

127.0.0.1  mbox12.offermatica.com

# [Omniture via WebSideStory]

127.0.0.1  hitbox.com

127.0.0.1  ai.hitbox.com

127.0.0.1  aibg.hitbox.com

127.0.0.1  counter.hitbox.com

127.0.0.1  ehg.hitbox.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  ehg-aarp.hitbox.com

127.0.0.1  ehg-accuweather.hitbox.com

127.0.0.1  ehg-adaptivemarketing.hitbox.com

127.0.0.1  ehg-adteractive.hitbox.com

127.0.0.1  ehg-adversitement.hitbox.com

127.0.0.1  ehg-agency.hitbox.com

127.0.0.1  ehg-aha.hitbox.com #[Tenebril.Tracking.Cookie]

127.0.0.1  ehg-akagourmet.hitbox.com

127.0.0.1  ehg-akronbeacon.hitbox.com

127.0.0.1  ehg-alt64.hitbox.com

127.0.0.1  ehg-apollogroup.hitbox.com

127.0.0.1  ehg-aspca.hitbox.com

127.0.0.1  ehg-associatednewmedia.hitbox.com

127.0.0.1  ehg-ati.hitbox.com

127.0.0.1  ehg-att2.hitbox.com

127.0.0.1  ehg-attcorp.hitbox.com

127.0.0.1  ehg-autodesk.hitbox.com

127.0.0.1  ehg-autotrader.hitbox.com

127.0.0.1  ehg-autozone.hitbox.com

127.0.0.1  ehg-backweb.hitbox.com

127.0.0.1  ehg-bandwidth.hitbox.com

127.0.0.1  ehg-barclaysglobal.hitbox.com

127.0.0.1  ehg-bareweb.hitbox.com

127.0.0.1  ehg-bbc.hitbox.com

127.0.0.1  ehg-bbcworldwide.hitbox.com

127.0.0.1  ehg-bce.hitbox.com

127.0.0.1  ehg-bestbuy.hitbox.com

127.0.0.1  ehg-bestwestern.hitbox.com

127.0.0.1  ehg-bizjournals.hitbox.com

127.0.0.1  ehg-borgata.hitbox.com

127.0.0.1  ehg-bskyb.hitbox.com

127.0.0.1  ehg-cafepress.hitbox.com

127.0.0.1  ehg-camcorderinfo.hitbox.com

127.0.0.1  ehg-campmor.hitbox.com

127.0.0.1  ehg-capitalgroup.hitbox.com

127.0.0.1  ehg-cardomain.hitbox.com

127.0.0.1  ehg-cbc.hitbox.com

127.0.0.1  ehg-cbs.hitbox.com

127.0.0.1  ehg-centaur.hitbox.com

127.0.0.1  ehg-cisco.hitbox.com #[SunBelt.Ehg-Cisco.Hitbox]

127.0.0.1  ehg-channelwave.hitbox.com

127.0.0.1  ehg-chartercommunications.hitbox.com

127.0.0.1  ehg-chcf.hitbox.com

127.0.0.1  ehg-chrysler.hitbox.com

127.0.0.1  ehg-citrixonline.hitbox.com

127.0.0.1  ehg-classifiedventures.hitbox.com

127.0.0.1  ehg-classmates.hitbox.com

127.0.0.1  ehg-clearchannel.hitbox.com

127.0.0.1  ehg-comcast.hitbox.com

127.0.0.1  ehg-cometsystems.hitbox.com

127.0.0.1  ehg-commjun.hitbox.com

127.0.0.1  ehg-connorsgroup.hitbox.com

127.0.0.1  ehg-copenhagen.hitbox.com

127.0.0.1  ehg-corusentertainment.hitbox.com

127.0.0.1  ehg-crain.hitbox.com

127.0.0.1  ehg-ctv.hitbox.com

127.0.0.1  ehg-cygnusbm.hitbox.com

127.0.0.1  ehg-danskin.hitbox.com

127.0.0.1  ehg-darden.hitbox.com

127.0.0.1  ehg-darksideprod.hitbox.com

127.0.0.1  ehg-datamonitor.hitbox.com

127.0.0.1  ehg-davidsbridal.hitbox.com

127.0.0.1  ehg-deltatre.hitbox.com

127.0.0.1  ehg-ddadigital.hitbox.com

127.0.0.1  ehg-dig.hitbox.com

127.0.0.1  ehg-digg.hitbox.com

127.0.0.1  ehg-dolphins.hitbox.com

127.0.0.1  ehg-editorialpro.hitbox.com

127.0.0.1  ehg-electrum.hitbox.com

127.0.0.1  ehg-eline.hitbox.com

127.0.0.1  ehg-emmiscommunications.hitbox.com

127.0.0.1  ehg-equifax.hitbox.com

127.0.0.1  ehg-esa.hitbox.com

127.0.0.1  ehg-eset.hitbox.com

127.0.0.1  ehg-espn.hitbox.com #[SunBelt.Ehg-ESPN.Hitbox]

127.0.0.1  ehg-findlaw.hitbox.com

127.0.0.1  ehg-foundation.hitbox.com

127.0.0.1  ehg-foxinteractive.hitbox.com

127.0.0.1  ehg-foxmovies.hitbox.com

127.0.0.1  ehg-foxnewsnetworkllc.hitbox.com

127.0.0.1  ehg-foxsports.hitbox.com

127.0.0.1  ehg-france24.hitbox.com

127.0.0.1  ehg-freshpairllc.hitbox.com

127.0.0.1  ehg-futurepub.hitbox.com

127.0.0.1  ehg-fxcm.hitbox.com

127.0.0.1  ehg-gamedaily.hitbox.com

127.0.0.1  ehg-gameshownet.hitbox.com

127.0.0.1  ehg-gamespot.hitbox.com

127.0.0.1  ehg-gatehousemedia.hitbox.com

127.0.0.1  ehg-globalgamingleague.hitbox.com

127.0.0.1  ehg-groupernetworks.hitbox.com

127.0.0.1  ehg-harleydavidson.hitbox.com

127.0.0.1  ehg-hartfordfireinsurance.hitbox.com

127.0.0.1  ehg-herenetworks.hitbox.com

127.0.0.1  ehg-hollywoodmedia.hitbox.com

127.0.0.1  ehg-hollywood.hitbox.com

127.0.0.1  ehg-icelandair.hitbox.com

127.0.0.1  ehg-idg.hitbox.com

127.0.0.1  ehg-idgentertainment.hitbox.com

127.0.0.1  ehg-ifilm.hitbox.com #[SiteAdvisor.ifilm.com]

127.0.0.1  ehg-ignitemedia.hitbox.com

127.0.0.1  ehg-imedia.hitbox.com

127.0.0.1  ehg-indemand.hitbox.com

127.0.0.1  ehg-independent.hitbox.com

127.0.0.1  ehg-intellextinc.hitbox.com

127.0.0.1  ehg-interactivateinc.hitbox.com

127.0.0.1  ehg-ittoolbox.hitbox.com

127.0.0.1  ehg-itworldcanada.hitbox.com

127.0.0.1  ehg-iwantoneofthose.hitbox.com

127.0.0.1  ehg-jaygroup.hitbox.com

127.0.0.1  ehg-jellyfish.hitbox.com

127.0.0.1  ehg-jobster.hitbox.com

127.0.0.1  ehg-jockey.hitbox.com

127.0.0.1  ehg-kasperskylab.hitbox.com

127.0.0.1  ehg-kingstontechnology.hitbox.com

127.0.0.1  ehg-knightridder.hitbox.com

127.0.0.1  ehg-kodak.hitbox.com

127.0.0.1  ehg-ladbrokes.hitbox.com

127.0.0.1  ehg-learningco.hitbox.com

127.0.0.1  ehg-leapfrog.hitbox.com

127.0.0.1  ehg-legacy.hitbox.com

127.0.0.1  ehg-legonewyorkinc.hitbox.com

127.0.0.1  ehg-lexmark.hitbox.com

127.0.0.1  ehg-limelightnetworks.hitbox.com

127.0.0.1  ehg-linksys.hitbox.com

127.0.0.1  ehg-lls.hitbox.com

127.0.0.1  ehg-lowermybills.hitbox.com #[SiteAdvisor.belnk.com]

127.0.0.1  ehg-majorbaseball.hitbox.com

127.0.0.1  ehg-maniatv.hitbox.com

127.0.0.1  ehg-mastercard.hitbox.com

127.0.0.1  ehg-mattress.hitbox.com

127.0.0.1  ehg-mccormick.hitbox.com

127.0.0.1  ehg-meevee.hitbox.com

127.0.0.1  ehg-metainterfacesllc.hitbox.com

127.0.0.1  ehg-mgmmirageoperations.hitbox.com

127.0.0.1  ehg-mgnlimited.hitbox.com

127.0.0.1  ehg-mh.hitbox.com

127.0.0.1  ehg-micron.hitbox.com

127.0.0.1  ehg-milesmediagroup.hitbox.com

127.0.0.1  ehg-mindshare.hitbox.com

127.0.0.1  ehg-minglematch.hitbox.com

127.0.0.1  ehg-mivadirect.hitbox.com

127.0.0.1  ehg-motive.hitbox.com

127.0.0.1  ehg-mshanken.hitbox.com

127.0.0.1  ehg-mtv.hitbox.com

127.0.0.1  ehg-myspaceinc.hitbox.com

127.0.0.1  ehg-nbif.hitbox.com

127.0.0.1  ehg-nestlepurinapetcare.hitbox.com

127.0.0.1  ehg-nestleusainc.hitbox.com

127.0.0.1  ehg-netapparel.hitbox.com

127.0.0.1  ehg-nexusmedia.hitbox.com

127.0.0.1  ehg-newegg.hitbox.com

127.0.0.1  ehg-newscientist.hitbox.com

127.0.0.1  ehg-newsint.hitbox.com

127.0.0.1  ehg-nfusiongroup.hitbox.com

127.0.0.1  ehg-nike.hitbox.com

127.0.0.1  ehg-nokiafin.hitbox.com

127.0.0.1  ehg-northjerseymediagroup.hitbox.com

127.0.0.1  ehg-nvidia.hitbox.com

127.0.0.1  ehg-orangecountyregister.hitbox.com

127.0.0.1  ehg-oreilly.hitbox.com

127.0.0.1  ehg-osiris.hitbox.com

127.0.0.1  ehg-overseenet.hitbox.com

127.0.0.1  ehg-pcsecurityshield.hitbox.com

127.0.0.1  ehg-pennwell.hitbox.com

127.0.0.1  ehg-pfizer.hitbox.com

127.0.0.1  ehg-pharmacia.hitbox.com

127.0.0.1  ehg-pizzahut.hitbox.com

127.0.0.1  ehg-playboy.hitbox.com #[Panda.Spyware:Cookie/Hitbox]

127.0.0.1  ehg-proflowers.hitbox.com

127.0.0.1  ehg-qualcomm.hitbox.com

127.0.0.1  ehg-questex.hitbox.com

127.0.0.1  ehg-randomhouse.hitbox.com

127.0.0.1  ehg-redherring.hitbox.com

127.0.0.1  ehg-reed.hitbox.com

127.0.0.1  ehg-rfa.hitbox.com

127.0.0.1  ehg-rodale.hitbox.com

127.0.0.1  ehg-salonmedia.hitbox.com

127.0.0.1  ehg-samsungusa.hitbox.com

127.0.0.1  ehg-saraleeintimate.hitbox.com

127.0.0.1  ehg-schwannssales.hitbox.com

127.0.0.1  ehg-sfcvb.hitbox.com

127.0.0.1  ehg-shanken.hitbox.com

127.0.0.1  ehg-sharpelectronic.hitbox.com

127.0.0.1  ehg-shoes.hitbox.com

127.0.0.1  ehg-shopathome.hitbox.com

127.0.0.1  ehg-silverpop.hitbox.com

127.0.0.1  ehg-simstar.hitbox.com

127.0.0.1  ehg-sixapart.hitbox.com

127.0.0.1  ehg-sonycomputer.hitbox.com

127.0.0.1  ehg-sonyelec.hitbox.com

127.0.0.1  ehg-sonyesolutions.hitbox.com

127.0.0.1  ehg-sonyeu.hitbox.com

127.0.0.1  ehg-sonyny.hitbox.com

127.0.0.1  ehg-space.hitbox.com #[SunBelt.Ehg-Space.hitbox]

127.0.0.1  ehg-speakeasy.hitbox.com

127.0.0.1  ehg-stampsdotcom.hitbox.com

127.0.0.1  ehg-starbucks.hitbox.com

127.0.0.1  ehg-studentuniverse.hitbox.com

127.0.0.1  ehg-sueddeutsche.hitbox.com

127.0.0.1  ehg-suite101.hitbox.com

127.0.0.1  ehg-superwarehouse.hitbox.com

127.0.0.1  ehg-systemax.hitbox.com

127.0.0.1  ehg-techtarget.hitbox.com

127.0.0.1  ehg-tempurpedic.hitbox.com

127.0.0.1  ehg-tfl.hitbox.com

127.0.0.1  ehg-thegazette.hitbox.com

127.0.0.1  ehg-theheritagefoundation.hitbox.com

127.0.0.1  ehg-theviptour.hitbox.com

127.0.0.1  ehg-thomas.hitbox.com

127.0.0.1  ehg-thomsonhealthcareinc.hitbox.com

127.0.0.1  ehg-ti.hitbox.com

127.0.0.1  ehg-tigerdirect2.hitbox.com

127.0.0.1  ehg-timeinc.hitbox.com

127.0.0.1  ehg-tiscover.hitbox.com

127.0.0.1  ehg-tmgolf.hitbox.com

127.0.0.1  ehg-toditocorp.hitbox.com

127.0.0.1  ehg-topps.hitbox.com

127.0.0.1  ehg-traderpublishing.hitbox.com

127.0.0.1  ehg-traderelectronicmedia.hitbox.com

127.0.0.1  ehg-tumbleweed.hitbox.com

127.0.0.1  ehg-twi.hitbox.com

127.0.0.1  ehg-u3.hitbox.com

127.0.0.1  ehg-ubid.hitbox.com

127.0.0.1  ehg-ubisoft.hitbox.com

127.0.0.1  ehg-uniontrib.hitbox.com

127.0.0.1  ehg-veohnetworksinc.hitbox.com

127.0.0.1  ehg-viacom.hitbox.com

127.0.0.1  ehg-vmixmediainc.hitbox.com

127.0.0.1  ehg-vmware.hitbox.com

127.0.0.1  ehg-vonage.hitbox.com

127.0.0.1  ehg-wachovia.hitbox.com

127.0.0.1  ehg-warnerbrothers.hitbox.com

127.0.0.1  ehg-webchutney.hitbox.com

127.0.0.1  ehg-websense.hitbox.com

127.0.0.1  ehg-wetseal.hitbox.com

127.0.0.1  ehg-win2000mag.hitbox.com

127.0.0.1  ehg-wss.hitbox.com

127.0.0.1  ehg-wsseurope.hitbox.com

127.0.0.1  ehg-wssuk.hitbox.com

127.0.0.1  ehg-wizardsofthecoast.hitbox.com

127.0.0.1  ehg-worldvision.hitbox.com

127.0.0.1  ehg-worldwildlifefund.hitbox.com

127.0.0.1  ehg-xandria.hitbox.com

127.0.0.1  ehg-y2m.hitbox.com

127.0.0.1  ehg-yakpak.hitbox.com

127.0.0.1  ehg-youtube.hitbox.com

127.0.0.1  ehg-zazzle.hitbox.com

127.0.0.1  ehg-zentropypartners.hitbox.com

127.0.0.1  ehg-zoom.hitbox.com

127.0.0.1  ehg-zvents.hitbox.com

127.0.0.1  evwr.hitbox.com

127.0.0.1  get.hitbox.com

127.0.0.1  hg1.hitbox.com #[Trojan-Clicker.Win32.NetBuie.a]

127.0.0.1  ias.hitbox.com

127.0.0.1  ibg.hitbox.com

127.0.0.1  ics.hitbox.com

127.0.0.1  js1.hitbox.com

127.0.0.1  phg.hitbox.com

127.0.0.1  resources.hitbox.com

127.0.0.1  rd1.hitbox.com

127.0.0.1  sitesearch.hitbox.com

127.0.0.1  stats.hitbox.com

127.0.0.1  tools.hitbox.com

127.0.0.1  tools2.hitbox.com

127.0.0.1  vwr1.hitbox.com

127.0.0.1  w1.hitbox.com

127.0.0.1  w2.hitbox.com

127.0.0.1  w3.hitbox.com

127.0.0.1  w4.hitbox.com

127.0.0.1  w5.hitbox.com #[Ewido.TrackingCookie.Hitbox]

127.0.0.1  w6.hitbox.com

127.0.0.1  w7.hitbox.com

127.0.0.1  w8.hitbox.com

127.0.0.1  w9.hitbox.com

127.0.0.1  w10.hitbox.com

127.0.0.1  w11.hitbox.com

127.0.0.1  w12.hitbox.com

127.0.0.1  w13.hitbox.com

127.0.0.1  w14.hitbox.com

127.0.0.1  w15.hitbox.com

127.0.0.1  w16.hitbox.com

127.0.0.1  w17.hitbox.com

127.0.0.1  w18.hitbox.com

127.0.0.1  w19.hitbox.com

127.0.0.1  w20.hitbox.com

127.0.0.1  w21.hitbox.com

127.0.0.1  w22.hitbox.com

127.0.0.1  w23.hitbox.com

127.0.0.1  w24.hitbox.com

127.0.0.1  w25.hitbox.com

127.0.0.1  w26.hitbox.com

127.0.0.1  w27.hitbox.com

127.0.0.1  w28.hitbox.com

127.0.0.1  w29.hitbox.com

127.0.0.1  w30.hitbox.com

127.0.0.1  w31.hitbox.com

127.0.0.1  w32.hitbox.com

127.0.0.1  w33.hitbox.com

127.0.0.1  w101.hitbox.com

127.0.0.1  w116.hitbox.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  w117.hitbox.com

127.0.0.1  w118.hitbox.com

127.0.0.1  w119.hitbox.com

127.0.0.1  w120.hitbox.com

127.0.0.1  ww2.hitbox.com

127.0.0.1  ww3.hitbox.com

127.0.0.1  wwa.hitbox.com

127.0.0.1  wwc.hitbox.com

127.0.0.1  wwd.hitbox.com

127.0.0.1  www.hitbox.com

127.0.0.1  statmarket.com

127.0.0.1  stats.statmarket.com

127.0.0.1  websidestory.com

127.0.0.1  support.websidestory.com

127.0.0.1  www.websidestory.com #[SunBelt.WebSideStory.com]

# [WebSideStory via Misc Sites]

127.0.0.1  wt.aafp.org

127.0.0.1  bat.adeptscience.co.uk

127.0.0.1  a.adultentertainmentexpo.com

127.0.0.1  a.advanstar.com

127.0.0.1  c.alladultchannel.com

127.0.0.1  h.allrecipes.com

127.0.0.1  ehg.allstate.com

127.0.0.1  h.alot.com

127.0.0.1  a.amd.com

127.0.0.1  a.answers.com

127.0.0.1  www-t.apartments.com

127.0.0.1  a.autoexpress.co.uk

127.0.0.1  track.bestbuy.com

127.0.0.1  a.bizarremag.com

127.0.0.1  a.bluewin.ch

127.0.0.1  peach.bskyb.com

127.0.0.1  a.cbc.ca

127.0.0.1  vendorweb.citibank.com

127.0.0.1  my.clearchannelradio.com

127.0.0.1  a.computerbuyer.co.uk

127.0.0.1  b.computerworlduk.com

127.0.0.1  a.consumerreports.org

127.0.0.1  a.cricinfo.com

127.0.0.1  stats.crossmediaservices.com

127.0.0.1  a.csmonitor.com

127.0.0.1  a.current.tv

127.0.0.1  a.custompc.co.uk

127.0.0.1  ap101.curves.com

127.0.0.1  y.digg.com

127.0.0.1  b.digitmag.co.uk #[ehg-idg.hitbox.com]

127.0.0.1  a.eastvalleytribune.com

127.0.0.1  a.environmentaldefense.org

127.0.0.1  a.evo.co.uk

127.0.0.1  a.fandango.com

127.0.0.1  a.findarticles.com

127.0.0.1  tracking.foxnews.com #[ehg-foxnewsnetworkllc.hitbox.com]

127.0.0.1  h.foxsports.com

127.0.0.1  a.ftd.de

127.0.0.1  c.gamelink.com

127.0.0.1  tul.gamesradar.com

127.0.0.1  d.hamptonroads.com

127.0.0.1  webr.harley-davidson.com

127.0.0.1  wss.hbpl.co.uk

127.0.0.1  a.heretv.com

127.0.0.1  a.hi5.com

127.0.0.1  h.hollywood.com

127.0.0.1  t.ifilm.com

127.0.0.1  a.independent.co.uk

127.0.0.1  a.insidepokermag.co.uk

127.0.0.1  a.itpro.co.uk

127.0.0.1  h.iwin.com

127.0.0.1  hits.gureport.co.uk

127.0.0.1  a.law.com

127.0.0.1  lxk235.lexmark.com

127.0.0.1  a.macuser.co.uk

127.0.0.1  a.macworld.com

127.0.0.1  a.maximmag.co.uk

127.0.0.1  a.modernmedicine.com

127.0.0.1  cs.montrealplus.ca

127.0.0.1  a.networkworld.com

127.0.0.1  a.nexstardigital.com

127.0.0.1  a.newcars.com #[ehg-classifiedventures.hitbox.com]

127.0.0.1  ths.news.com.au

127.0.0.1  a.nvidia.com

127.0.0.1  a.nypost.com

127.0.0.1  a.oceansalive.org

127.0.0.1  a.ocregister.com

127.0.0.1  b.pcadvisor.co.uk

127.0.0.1  a.pcpro.co.uk

127.0.0.1  a.peoplepc.com

127.0.0.1  tul.pcgamer.com

127.0.0.1  hb.pcworld.com

127.0.0.1  a.playlistmag.com

127.0.0.1  cmt.us.playstation.com

127.0.0.1  a.pokerplayermagazine.co.uk

127.0.0.1  webanalytics.qualcomm.com

127.0.0.1  hb.razorgator.com

127.0.0.1  c.realtytrac.com

127.0.0.1  a.salon.com

127.0.0.1  wss.scmagazine.com #[ehg-haymarket.hitbox.com]

127.0.0.1  a.scotsman.com

127.0.0.1  a.seenon.com

127.0.0.1  a.shutterfly.com

127.0.0.1  a.shop.com

127.0.0.1  t.sixflags.com

127.0.0.1  a.solarwinds.com

127.0.0.1  a.spicetv.com

127.0.0.1  a.sourcemedia.com

127.0.0.1  t.spike.com

127.0.0.1  a.stern.de

127.0.0.1  a.taunton.com

127.0.0.1  b.techworld.com

127.0.0.1  ww0.timeout.com

127.0.0.1  a.timesunion.com

127.0.0.1  a.timewarnercable.com

127.0.0.1  a.tomshardware.com

127.0.0.1  a.totalgambler.com

127.0.0.1  ngd.thesun.co.uk

127.0.0.1  tgd.timesonline.co.uk

127.0.0.1  a.tiscali.co.uk

127.0.0.1  a.undoit.org

127.0.0.1  a.venetian.com

127.0.0.1  a.vonage.com

127.0.0.1  a.webcpa.com

127.0.0.1  h.which.co.uk

127.0.0.1  i.wynnlasvegas.com

# [One Planet Holding[24.244.171.0 - 24.244.171.254]

# [Ooo Medialand][88.212.200.0 - 88.212.200.127]

127.0.0.1  100-100.ru

127.0.0.1  www.100-100.ru

127.0.0.1  engine.adland.ru #[eTrust.Tracking.Cookie]

127.0.0.1  engine.adnet.ru

127.0.0.1  business.lbn.ru

127.0.0.1  www.business.lbn.ru

127.0.0.1  fun.lbn.ru

127.0.0.1  www.fun.lbn.ru

127.0.0.1  234.media.lbn.ru

127.0.0.1  adland.medialand.ru

127.0.0.1  adnet.medialand.ru

127.0.0.1  content.medialand.ru

127.0.0.1  flymedia-mladnet.medialand.ru

127.0.0.1  popunder-mladnet.medialand.ru

# [Ooo Uvm][AS15756][212.158.166.0 - 212.158.167.255]

127.0.0.1  top100videoz.com

# [Opsource Inc][209.34.80.0 - 209.34.95.255]

127.0.0.1  adtology.com

127.0.0.1  adtology2.com

127.0.0.1  adtology3.com

127.0.0.1  www.adtology3.com

127.0.0.1  www.avnads.com

127.0.0.1  pages.etology.com

127.0.0.1  srv.etology.com

127.0.0.1  rtt.rapt.com

# [Outservices][190.183.63.220]

# [Oversee.net][204.13.160.0 - 204.13.163.255]

127.0.0.1  searchportal.cq2.net

127.0.0.1  domainsponsor.com #[Ad-Aware.Tracking.Cookie][WIPO.D2006-0523]

127.0.0.1  images.domainsponsor.com

127.0.0.1  searchportal.domainsponsor.com #[McAfee.Cookie-SearchPortal]

127.0.0.1  spi.domainsponsor.com

127.0.0.1  www.domainsponsor.com #[Panda.Spyware:Cookie/DomainSponsor]

127.0.0.1  searchportal.dnparking.com #[Parking Service]

127.0.0.1  search.information.com

127.0.0.1  sp2.information.com

127.0.0.1  sp17.information.com

127.0.0.1  sprw.information.com

127.0.0.1  www.information.com

127.0.0.1  track.newslettersponsor.com

127.0.0.1  www.newslettersponsor.com

127.0.0.1  oversee.net

127.0.0.1  blizzard.thor.oversee.net

127.0.0.1  domainsponsor.oversee.net

127.0.0.1  popupsponsor.com #[Parasite.ClientMan]

127.0.0.1  ads.popupsponsor.com #[SunBelt.PopupSponsor]

127.0.0.1  mediatrack.popupsponsor.com

127.0.0.1  view.popupsponsor.com

127.0.0.1  www.popupsponsor.com

127.0.0.1  revenue.net

127.0.0.1  ads.revenue.net #[SunBelt.Revenue.net]

127.0.0.1  ads.kw.revenue.net

127.0.0.1  ads0.revenue.net

127.0.0.1  ads1.revenue.net #[SpySweeper.Spy.Cookie][Adware-Adlogix]

127.0.0.1  ads2.revenue.net

127.0.0.1  ads4.revenue.net

127.0.0.1  count.revenue.net #[popupsponsor.com]

127.0.0.1  images.revenue.net

127.0.0.1  mediatrack.revenue.net #[Tenebril.Tracking.Cookie]

127.0.0.1  view.revenue.net

127.0.0.1  www.revenue.net

# [Oversee.net][208.73.208.0 - 208.73.215.255]

127.0.0.1  landing.domainsponsor.com #[Microsoft.Typo-Patrol]

127.0.0.1  inboxrewards.com

127.0.0.1  www.inboxrewards.com

127.0.0.1  dp.information.com

127.0.0.1  searchportal.information.com #[Panda.Spyware:Cookie/Searchportal]

127.0.0.1  sp6.information.com

127.0.0.1  spcn01.information.com

127.0.0.1  searchportal.name8.cn #[spcn01.information.com]

127.0.0.1  search.trafficclub.com #[Microsoft.Typo-Patrol]

# [Oversee.net via Seevast][Moniker][Kanoodle]

127.0.0.1  pops.404search.com #[McAfee.Adware-404Search]

127.0.0.1  secure.404search.com #[Adware-404Search][ADW_404SEARCH.A]

127.0.0.1  www.404search.com #[Sophos.404Search]

127.0.0.1  c2.edapebaf.com

127.0.0.1  app1.jkahfmal.com #[McAfee.Adware-SurfSideKick.dr]

127.0.0.1  app2.jkahfmal.com

127.0.0.1  banners.kanoodle.com

127.0.0.1  bt1.kanoodle.com

127.0.0.1  clickthrough.kanoodle.com

127.0.0.1  context1.kanoodle.com

127.0.0.1  context2.kanoodle.com

127.0.0.1  context3.kanoodle.com

127.0.0.1  context4.kanoodle.com

127.0.0.1  context5.kanoodle.com

127.0.0.1  safe.kanoodle.com

127.0.0.1  webmail.kanoodle.com

127.0.0.1  www.kanoodle.com #[SiteAdvisor.kanoodle.com]

127.0.0.1  content.pulse360.com

# [Ovh Sas][213.186.33.0 - 213.186.33.255]

127.0.0.1  cesp.be #[HTML/TrojanDownloader.Agent.NAB]

127.0.0.1  www.new-phpmailer.com #[Win32/Bifrose.E]

127.0.0.1  www.pubpremium3.com

# [Ovh Sas][213.251.131.0 - 213.251.131.255]

127.0.0.1  a1.x-traceur.com

127.0.0.1  a3.x-traceur.com

127.0.0.1  a12.x-traceur.com

127.0.0.1  a18.x-traceur.com

127.0.0.1  a20.x-traceur.com

127.0.0.1  logos.x-traceur.com

127.0.0.1  services.x-traceur.com

# [Ovh Sas][91.121.160.0 - 91.121.191.255]

127.0.0.1  fr.1sponsor.com

127.0.0.1  ads.ad2m.fr

127.0.0.1  stats.click-internet.fr

127.0.0.1  geoloc12.geovisite.com

127.0.0.1  geoloc14.geovisite.com

127.0.0.1  paulsads.com

127.0.0.1  zbiornik.com

# [Pacific Communications][216.240.139.128 - 216.240.139.191]

# [Pacific Internet via various][220.232.128.0 - 220.232.255.255]

# [Pacific Internet via Clive Rand]

127.0.0.1  www.crackserver.com #[StopBadware.Report]

127.0.0.1  gotphaze.com #[Win32/Adware.Toolbar.Eztracks]

127.0.0.1  www.gotphaze.com

127.0.0.1  www.hacked-xxx.com

127.0.0.1  fullxxxmovies.net

127.0.0.1  www.fullxxxmovies.net #[Malicious.Links.Codec]

# [Parked.com]

127.0.0.1  images.parked.com

127.0.0.1  www.searchnut.com

# [PayCounter.com][64.255.164.0 - 64.255.164.255]

127.0.0.1  paycounter.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  count.paycounter.com

127.0.0.1  images1.paycounter.com

127.0.0.1  in.paycounter.com #[SpySweeper.Spy.Cookie]

127.0.0.1  stats.paycounter.com

127.0.0.1  www.paycounter.com #[SunBelt.PayCounter.com]

127.0.0.1  sort.trafficjuicer.com

127.0.0.1  stats.trafficjuicer.com

127.0.0.1  www.trafficjuicer.com

# [Pcextreme Bv][89.18.166.0 - 89.18.168.255]

# [Pcextreme Bvv][89.18.189.0 - 89.18.189.255]

# [Pc Ions][217.150.254.0 - 217.150.254.63]

# [Peel Inc][64.192.135.128 - 64.192.135.191]

127.0.0.1  ad1.peel.com

127.0.0.1  ad3.peel.com #[SunBelt.Peel]

127.0.0.1  ads.peel.com

127.0.0.1  ad4.peel.com #[Tenebril.Tracking.Cookie]

127.0.0.1  ads5.peel.com

127.0.0.1  freeps3.peel.com

127.0.0.1  www.peel.com

127.0.0.1  www.peel.net

# [Peer 1][209.25.128.0 - 209.25.255.255]

127.0.0.1  www.maxbounty.com

127.0.0.1  www.mb01.com

# [Peer 1][AS11388][66.40.0.0 - 66.40.255.25550]

127.0.0.1  50websads.com

# [Peer 1 via Qitx Inc ][AS13768][69.90.81.128 - 69.90.81.191]

127.0.0.1  currentsession.net

127.0.0.1  c.currentsession.net #[Javascript.Exploit]

# [Performance Systems][130.117.0.0 - 130.117.255.255]

# [Peter Emonds][Alla Lakaeva][WorldToStart B.V.]

127.0.0.1  findthewebsiteyouneed.com #[Trojan JAVA_NEEDY.A]

127.0.0.1  click.findthewebsiteyouneed.com

127.0.0.1  searchbar.findthewebsiteyouneed.com #[BackDoor.Afcore.AL]

127.0.0.1  www.findthewebsiteyouneed.com #[Trojan-Downloader.Win32.VB.aiy]

127.0.0.1  linksummary.com

127.0.0.1  click.linksummary.com

127.0.0.1  demon1.linksummary.com

127.0.0.1  demon2.linksummary.com

127.0.0.1  redirect.linksummary.com

127.0.0.1  searchbar.linksummary.com

127.0.0.1  www.linksummary.com

127.0.0.1  www.mediahighway.net

127.0.0.1  yourstartingpage.com

127.0.0.1  www.yourstartingpage.com #[SunBelt.Tro.YourStartingPage]

# [PeterHost.Ru][80.93.49.0 - 80.93.49.255]

127.0.0.1  adskape.ru

127.0.0.1  p543.adskape.ru

127.0.0.1  p13178.adskape.ru

127.0.0.1  p1574.adskape.ru

127.0.0.1  p2408.adskape.ru

127.0.0.1  p4010.adskape.ru

127.0.0.1  p9762.adskape.ru

127.0.0.1  popunder.ru

127.0.0.1  1gavcom.popunder.ru

127.0.0.1  anrysys.popunder.ru

127.0.0.1  balakin.popunder.ru

127.0.0.1  basterr.popunder.ru

127.0.0.1  bizbor.popunder.ru

127.0.0.1  bugera.popunder.ru

127.0.0.1  clik2008.popunder.ru

127.0.0.1  darseo.popunder.ru

127.0.0.1  djeps.popunder.ru

127.0.0.1  ead-soft.popunder.ru

127.0.0.1  freegroupvideo.popunder.ru

127.0.0.1  gajime.popunder.ru

127.0.0.1  h0rnd0g.popunder.ru

127.0.0.1  jabu.popunder.ru

127.0.0.1  kamasutra.popunder.ru

127.0.0.1  kinofree.popunder.ru

127.0.0.1  low-hacker.popunder.ru

127.0.0.1  luksona.popunder.ru

127.0.0.1  milioner.popunder.ru

127.0.0.1  palmebi.popunder.ru

127.0.0.1  rapsubs.popunder.ru

127.0.0.1  sayhello.popunder.ru

127.0.0.1  soski.popunder.ru

127.0.0.1  spike669.popunder.ru

127.0.0.1  stepan007.popunder.ru

127.0.0.1  tengo.popunder.ru

127.0.0.1  the-kret.popunder.ru

127.0.0.1  tvzebra.popunder.ru

127.0.0.1  vaime.net.popunder.ru

127.0.0.1  viper.popunder.ru

127.0.0.1  vistas.popunder.ru

127.0.0.1  wera.popunder.ru

127.0.0.1  zampolit1990.popunder.ru

127.0.0.1  zonawm.biz.popunder.ru

127.0.0.1  traf.biz

# [Perspectiva][85.249.228.0 - 85.249.228.255]

# [Phantographics via various][66.230.175.0 - 66.230.175.255]

127.0.0.1  go.hqtrace.com

127.0.0.1  st.hqtrace.com

127.0.0.1  nuclearporno.com

127.0.0.1  go.pornforgay.com

127.0.0.1  zhirok.com #[Spamdexing]

# [Phil Vizzaccaro]

127.0.0.1  www.123counts.com

127.0.0.1  hitslink.com

127.0.0.1  counter.hitslink.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  counter2.hitslink.com #[Ewido.TrackingCookie.Hitslink]

127.0.0.1  profiles.hitslink.com

127.0.0.1  www2.hitslink.com #[SpySweeper.Spy.Cookie]

127.0.0.1  www.hitslink.com #[SunBelt.hitslink.com]

127.0.0.1  loc1.hitsprocessor.com

127.0.0.1  www.toolshack.com

# [Pilosoft][AS26627][216.12.163.0 - 216.12.163.255]

127.0.0.1  c20.valary.com

# [Pilosoft][AS26627][69.31.0.0 - 69.31.143.255]

127.0.0.1  actualfinds.com

127.0.0.1  alloha.info #[Malicious.Links]

127.0.0.1  astalavista.box.sk #[SiteAdvisor.astalavista.box.sk]

127.0.0.1  gfx.dvlabs.com

127.0.0.1  klipads.dvlabs.com

127.0.0.1  goserv.com #[VBS/Exploit.Phel.A]

127.0.0.1  a.hqtms.com

127.0.0.1  hqtms.com #[Malicious.Links.Codec]

127.0.0.1  www.hqtms.com #[Spamdexing]

127.0.0.1  momhotportal.com #[Malicious.Links.Codec]

127.0.0.1  mommyinsex.com

127.0.0.1  titsbrew.sex2inc.com #[IFrame.Exploit]

127.0.0.1  teens.teenssites.net #[Win32/TrojanDownloader.Ani.Gen]

127.0.0.1  x.teenssites.net

127.0.0.1  to-porn.com #[Spamdexing.Codec]

127.0.0.1  total-search.info #[ISANS.Alert]

127.0.0.1  trafficroup.com #[Malicious.Links]

127.0.0.1  unisearch.name #[Spamdexing]

127.0.0.1  content.unisearch.name

127.0.0.1  unitedseo.com #[Google Warning]

127.0.0.1  www.unitedseo.com

127.0.0.1  usedstone.com

127.0.0.1  c12.valary.com

127.0.0.1  xml.valary.com

127.0.0.1  videozfree.com #[Google Warning]

127.0.0.1  www.videozfree.com

127.0.0.1  wannasearch.biz

127.0.0.1  windows-security-update.com

127.0.0.1  worldofadult.com #[IFrame.Exploit]

# [Piradius Net][124.217.224.0 - 124.217.255.255]

127.0.0.1  versteckspiel.com

# [Piradius Net via Ottavio Bizzio Group][Alexey Smirnoff]

127.0.0.1  www.bytecode.biz

127.0.0.1  www.insorg.net

# [PointRoll][Gannett]

127.0.0.1  pointroll.com

127.0.0.1  ads.pointroll.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  ev.ads.pointroll.com

127.0.0.1  ami.pointroll.com #[p.mii.instacontent.net]

127.0.0.1  clk.pointroll.com

127.0.0.1  media.pointroll.com #[Panda.Spyware:Cookie/PointRoll]

127.0.0.1  mirror.pointroll.com #[Ewido.TrackingCookie.Pointroll]

127.0.0.1  speed.pointroll.com #[a1343.g.akamai.net]

127.0.0.1  t.pointroll.com

127.0.0.1  track.pointroll.com #[eTrust.Tracking.Cookie]

127.0.0.1  www.pointroll.com

# [Pressflex]

127.0.0.1  b.blogads.com

127.0.0.1  banners.blogads.com

127.0.0.1  c.blogads.com

127.0.0.1  cache.blogads.com

127.0.0.1  d.blogads.com

127.0.0.1  f.blogads.com

127.0.0.1  img.blogads.com

127.0.0.1  st.blogads.com #[WebBug]

127.0.0.1  stat.blogads.com #[WebBug]

127.0.0.1  weblog.blogads.com

127.0.0.1  z.blogads.com

127.0.0.1  www.blogads.com

127.0.0.1  adz.liberianobserver.com

127.0.0.1  ads.pressflex.com

127.0.0.1  adserver.pressflex.com #[SiteAdvisor.liberianobserver.com]

127.0.0.1  fishadz.pressflex.net

# [PrimeNet][77.244.220.0 - 77.244.220.255]

# [Privacy Protect][Parking Service]

127.0.0.1  cm3.bnmq.com

127.0.0.1  images.bnmq.com

127.0.0.1  www.bnmq.com

127.0.0.1  search.in

# [Provider Local Registry][83.170.64.0 - 83.170.127.255]

127.0.0.1  wpills.info #[Google.Diagnostic]

127.0.0.1  www.wpills.info

# [Provider Local Registry][83.170.64.0 - 83.170.127.255]

# [Prq-net-colo][88.80.2.0 - 88.80.7.255]

127.0.0.1  b.skitodayplease.com #[TR/Killav.OE]

127.0.0.1  b.whataboutadog.com #[Downloader-BEW]

# [Psinet][AS174][38.0.0.0 - 38.255.255.255]

127.0.0.1  oasis.411affiliates.ca

127.0.0.1  adsaway.com #[HTML/TrojanDownloader.Agent.BP trojan]

127.0.0.1  www.adsaway.com #[Google.Warning]

127.0.0.1  ad.alldanzradio.com

127.0.0.1  tracker.banned-celebpics.com

127.0.0.1  counter.bizland.com

127.0.0.1  canadianhw.ca #[VBS/Envary.A]

127.0.0.1  www.canadianhw.ca

127.0.0.1  copperheadsecurity.com #[Rogue.Antispyware]

127.0.0.1  www.copperheadsecurity.com

127.0.0.1  ppc-parked.domainsite.com #[Parking Service]

127.0.0.1  vcontent.e-messenger.net

127.0.0.1  exitexchange.com #[SiteAdvisor.exitexchange.com]

127.0.0.1  ads.exitexchange.com

127.0.0.1  count.exitexchange.com #[McAfee.Cookie-Exitexchange]

127.0.0.1  www.exitexchange.com #[SpySweeper.Spy.Cookie]

127.0.0.1  www.factorygames.com #[SiteAdvisor.factorygames.com]

127.0.0.1  www.fatpenguinmedia.com

127.0.0.1  adserver.filefront.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  ads.financialcontent.com

127.0.0.1  adserver.finditquick.com

127.0.0.1  partner.finditquick.com #[klikadvertising]

127.0.0.1  fishclix.com

127.0.0.1  www.fishclix.com

127.0.0.1  c.fsx.com

127.0.0.1  in6ck.com

127.0.0.1  ad.internetradioinc.com

127.0.0.1  click.linkstattrack.com #[SiteAdvisor.linkstattrack.com]

127.0.0.1  www.lynxtrack.com

127.0.0.1  www.mediagridwork.com

127.0.0.1  ads.movieflix.com

127.0.0.1  trizvez.netfirms.com #[Win32/Spy.Banker]

127.0.0.1  ads.newgrounds.com

127.0.0.1  ads.onemodelplace.com

127.0.0.1  prior-network.com

127.0.0.1  www.pythonpays.com

127.0.0.1  ads.redlightcenter.com

127.0.0.1  ads.sockshots.com

127.0.0.1  tincash.com #[JS/Exploit.ADODB.Stream.NAP]

127.0.0.1  ad.trident.net

127.0.0.1  ads1.updated.com

127.0.0.1  vernariostar.com

127.0.0.1  a.xanga.com

# [QTK Internet]

127.0.0.1  www.atomictime.net

127.0.0.1  www.infa.net

127.0.0.1  sweetbabes.com #[atomictime.net]

127.0.0.1  www.sweetbabes.com

# [Quantcast]

127.0.0.1  quantserve.com

127.0.0.1  edge.quantserve.com

127.0.0.1  www.edge.quantserve.com

# [Quantcast][AS27281][64.94.107.0 - 64.94.107.255]

127.0.0.1  flash.quantserve.com

127.0.0.1  pixel.quantserve.com #[WebBug]

127.0.0.1  secure.quantserve.com

# [Quinstreet Inc][70.42.0.0 - 70.42.255.255]

127.0.0.1  www.ad-souk.com

127.0.0.1  bilbob.com

127.0.0.1  didtal.com

127.0.0.1  hartim.com

127.0.0.1  ad.howstuffworks.com #[RealMedia][SpySweeper.Spy.Cookie]

127.0.0.1  quinst.com

127.0.0.1  ad.turn.com

127.0.0.1  r.turn.com #[ad.turn.com]

# [Qunying Network][59.34.148.0 - 59.34.148.255]

127.0.0.1  a.keyrun.com #[Adware-TargetAD]

127.0.0.1  code16.keyrun.com

127.0.0.1  u.keyrun.com

127.0.0.1  union.keyrun.com

127.0.0.1  ww.keyrun.com

127.0.0.1  ww4.keyrun.com

127.0.0.1  www1.keyrun.com

127.0.0.1  www4.keyrun.com

127.0.0.1  wwv.keyrun.com

127.0.0.1  www.keyrun.com

127.0.0.1  wwv.onetad.com

# [Rabbit Marketing Services]

127.0.0.1  netword.com #[Adware.Netword]

127.0.0.1  qry.netword.com

127.0.0.1  reg.netword.com

127.0.0.1  www.netword.com

127.0.0.1  www.rabbitmarketing.com #[ADW_NETWORD.A]

# [Rackforce Hosting][64.46.32.0 - 64.46.63.255]

127.0.0.1  adtrafficserv.com

# [Rackspace.com via various][67.192.0.0 - 67.192.255.255]

127.0.0.1  www.adfusion.com

127.0.0.1  www.adversalservers.com

127.0.0.1  www.gxplugin.com #[HJTH.Adult Content Dialer]

127.0.0.1  www.traffic-director.net

# [Rackspace.com via Acez Software][72.3.128.0 - 72.3.255.255]

127.0.0.1  s1.acez.com

127.0.0.1  www.acez.com #[AdWare.BHO.MegaSearch.b][SiteAdvisor.acez.com]

127.0.0.1  www.acezsoftware.com

127.0.0.1  www.searchnugget.com #[Adware.SearchNugget]

127.0.0.1  www.screengizmos.com

127.0.0.1  www.siteerror.com #[siteError.dll]

# [Rackspace.com via various][72.32.0.0 - 72.32.255.255]

127.0.0.1  www.adroz.com #[AIM Smileys]

127.0.0.1  ads.capablenet.com

127.0.0.1  members.commissionmonster.com

127.0.0.1  www.couponsandoffers.com #[Adware.TopMoxie]

127.0.0.1  track.dmipartners.com

127.0.0.1  www.free-counter.com

127.0.0.1  gd.geobytes.com

127.0.0.1  ads.herbalsmokeshop.com

127.0.0.1  preview.leadmediapartners.com

127.0.0.1  reklama.metacafe.com

127.0.0.1  syndicate.powerofads.com

127.0.0.1  www.powerofads.com

127.0.0.1  ads.psxextreme.com

127.0.0.1  ads.queendom.com

127.0.0.1  secure2.segpay.com #[Rogue/Suspect Affiliate.sites]

127.0.0.1  adserver.sharewareonline.com #[nictechnetworks.com]

127.0.0.1  adserver.softwareonline.com

127.0.0.1  www.text-link-ads.com

127.0.0.1  www.textlinkads.com

127.0.0.1  www.vivo7.com

# [Rackvibe Llc][AS14037][209.250.224.0 - 209.250.255.255]

127.0.0.1  am-scan.com

127.0.0.1  buckswareadmin.com

127.0.0.1  fastpayprocess.com #[Fraudware.Pandora-Software]

127.0.0.1  gm-system-scan.com #[Win32/Adware.SpyProtector.I]

127.0.0.1  system-protector.net

127.0.0.1  www.system-protector.net

# [Rambler Web Services][81.19.70.0 -  81.19.70.255]

127.0.0.1  ad.rambler.ru #[SecuritySpace.WebBug]

127.0.0.1  ad2.rambler.ru

127.0.0.1  ad3.rambler.ru

127.0.0.1  counter.rambler.ru #[SunBelt.Rambler.ru]

127.0.0.1  id.rambler.ru

127.0.0.1  images.rambler.ru

127.0.0.1  info-images.rambler.ru

127.0.0.1  scnt.rambler.ru

127.0.0.1  scounter.rambler.ru

127.0.0.1  top100.rambler.ru

127.0.0.1  top100-images.rambler.ru

# [Razor Media][DestinyWeb][N-Light]

127.0.0.1  www.paypergig.com

127.0.0.1  www.razormedia.net

127.0.0.1  www.trafficneeds.com

# [Rcp.net][AS30407][206.53.48.0 - 206.53.63.255]

127.0.0.1  abtracker.adultbouncer.com

127.0.0.1  malwarecatcher.net

127.0.0.1  pay1.malwarecatcher.net

127.0.0.1  update1.malwarecatcher.net

127.0.0.1  update2.malwarecatcher.net

127.0.0.1  www.malwarecatcher.net

127.0.0.1  onlinescan-ultraantivirus2009.com

127.0.0.1  rlamba.biz

127.0.0.1  sutds.info

127.0.0.1  updvms.net

127.0.0.1  virusalarm-scanvirus.net

127.0.0.1  virusshieldpro.com

127.0.0.1  pay1.virusshieldpro.com

127.0.0.1  update1.virusshieldpro.com

127.0.0.1  www.virusshieldpro.com

127.0.0.1  virussweeper-scanvirus.com

127.0.0.1  virussweeper-scanvirus.net

# [Real_host_net][AS8206][213.182.197.0 - 213.182.197.15]

127.0.0.1  bestxvids.info

127.0.0.1  evamedstore.com #[ScamFraudAlert.Pharmacy]

127.0.0.1  goxxxweb.info

127.0.0.1  porntube21.com

127.0.0.1  www.porntube21.com

127.0.0.1  tubeololo.org #[Fake.PornTube.Codec][server down?]

127.0.0.1  viagrabe.com

127.0.0.1  yesey.net #[server down?]

127.0.0.1  yourcrackkey.com

# [Real International][AS46636][88.214.192.0 - 88.214.255.255]

127.0.0.1  2009-search.com

127.0.0.1  24x7live.net #[klikadvertising]

127.0.0.1  adultsiteshop.biz

127.0.0.1  allmovie4u.com #[Malicious.Links.Codec]

127.0.0.1  allpornsites.info

127.0.0.1  amateur-porn-links.com #[Malicious.Links]

127.0.0.1  besthqvideo.com #[Malicious.Links.Codec]

127.0.0.1  bestsearch2007.com

127.0.0.1  bestsearchlink.com #[Spamdexing]

127.0.0.1  www.bestsearchlink.com

127.0.0.1  bezruler.net #[Malicious.Links.Codec][Google.Diagnostic]

127.0.0.1  www.bezruler.net

127.0.0.1  celebflix.us

127.0.0.1  www.celebflix.us #[Malicious.Links.Codec]

127.0.0.1  celebsvids.net

127.0.0.1  www.celebsvids.net

127.0.0.1  video.cnn08.com

127.0.0.1  ehho.com

127.0.0.1  engine-global-online.com #[klikadvertising]

127.0.0.1  e-orgasm.org

127.0.0.1  www.e-orgasm.org #[Malicious.Links.Codec]

127.0.0.1  erotica-deluxe.com

127.0.0.1  www.erotica-deluxe.com #[Malicious.Links.Codec]

127.0.0.1  evacafe.net

127.0.0.1  www.findin.org

127.0.0.1  fonblog.net #[Spamdexing.Codec]

127.0.0.1  www.foundhere.ws #[Spamdexing]

127.0.0.1  freegodbooks.net #[klikadvertising]

127.0.0.1  freemovplayer.com #[Malicious.Links.Codec]

127.0.0.1  freshpiercing.com #[Spamdexing]

127.0.0.1  stats2.gamak.info #[klikadvertising.com]

127.0.0.1  gbscript.com

127.0.0.1  googleclear.com

127.0.0.1  gotouzsite.org #[klikadvertising]

127.0.0.1  gpftt.com

127.0.0.1  www.gpftt.com

127.0.0.1  greatfound.net #[Google.Diagnostic]

127.0.0.1  www.hardcoreamateurmoviess.com

127.0.0.1  hlth-care.com #[klikadvertising]

127.0.0.1  hotvidz.info

127.0.0.1  hotwn.com

127.0.0.1  info4us.info #[server down?]

127.0.0.1  infodist1.com #[Spamdexing.Codec]

127.0.0.1  intop20.net #[Vivids Media GmbH]

127.0.0.1  justimg.net

127.0.0.1  katiereesphotos.org #[Trojan.Codec]

127.0.0.1  www.katiereesphotos.org

127.0.0.1  www.klikvipresources.com #[Spamdexing]

127.0.0.1  la34.info

127.0.0.1  lilaccube.com #[klikadvertising][Vivids Media GmbH]

127.0.0.1  livebare.biz

127.0.0.1  www.mnogotrafa.net #[Spamdexing]

127.0.0.1  seoprom.msk.ru

127.0.0.1  mycigarworld.info #[server down?]

127.0.0.1  my-tds.net

127.0.0.1  onlyfind.net

127.0.0.1  orgtraffic.com #[Goroshko Igor]

127.0.0.1  petrenko.biz

127.0.0.1  prodtraffic.com

127.0.0.1  salmaxayru.us #[klikadvertising]

127.0.0.1  restraffic.com

127.0.0.1  seaarch.info #[Spamdexing]

127.0.0.1  search-insurance.com #[klikadvertising]

127.0.0.1  self-relax-massage.com

127.0.0.1  sexcoolgirls.com

127.0.0.1  sexportals.info

127.0.0.1  sextapegirls.net

127.0.0.1  sextds.com

127.0.0.1  sexxxporno.ru

127.0.0.1  sexyhotvideo.com

127.0.0.1  a.srchtop.com

127.0.0.1  tds.srchtop.com

127.0.0.1  www.srchtop.com #[Spamdexing]

127.0.0.1  supertopstar.net

127.0.0.1  tds7.info #[Malicious.Links.Codec]

127.0.0.1  tdska.biz

127.0.0.1  techit.name

127.0.0.1  the-search.us

127.0.0.1  r.the-search.us #[Spamdexing]

127.0.0.1  top-result.net #[klikadvertising]

127.0.0.1  topusguide.info

127.0.0.1  traffic-system.info #[Malicious.Links.Codec]

127.0.0.1  tumler.com

127.0.0.1  v3search.com

127.0.0.1  voodoomovie.biz

127.0.0.1  www.wofldsex.com #[MHTMLRedir.Exploit]

127.0.0.1  wstraffic.net

127.0.0.1  x-wallpapers.net

127.0.0.1  zr0.net

127.0.0.1  ztraffic.biz

# [Real International via Vasily Pupkin]

127.0.0.1  www.blonde-mature-hot-babes.biz #[Malicious.Links.Codec]

127.0.0.1  big-tits-orgasm.biz

127.0.0.1  www.big-tits-orgasm.biz #[Malicious.Links.Codec]

127.0.0.1  free-porn-thumbz.com

127.0.0.1  www.free-porn-thumbz.com #[Malicious.Links.Codec]

127.0.0.1  free-porn-galleries.biz

127.0.0.1  www.free-porn-galleries.biz

127.0.0.1  www.gangbanged.biz

127.0.0.1  hairy-pussy-hardcore-fucked.biz #[Malicious.Links.Codec]

127.0.0.1  www.hairy-pussy-hardcore-fucked.biz

127.0.0.1  www.maledomination.net

127.0.0.1  megapizda.com

127.0.0.1  www.megapizda.com #[Malicious.Links.Codec]

127.0.0.1  www.mmmff.com

127.0.0.1  www.pantied.net

127.0.0.1  porn-forever.com

127.0.0.1  www.porn-forever.com

127.0.0.1  www.posing.biz

127.0.0.1  sex-list.us

127.0.0.1  www.sex-list.us

127.0.0.1  www.thumbz.biz

127.0.0.1  www.toplees.net

127.0.0.1  www.wowtgp.org

127.0.0.1  zhopa.net

127.0.0.1  www.zhopa.net

# [Reality Check][64.111.206.0 - 64.111.207.255]

127.0.0.1  anyvideoclips.com

127.0.0.1  www.freepicsandmovies.com #[Win32/Dialer.Asian.RAW]

# [Reality Check][AS23393][66.230.161.0 - 66.230.161.255]

127.0.0.1  alluring-sex.biz #[Google.Diagnostic]

# [Recurring International][85.92.152.0 - 85.92.159.255]

127.0.0.1  free.and-sex.net

127.0.0.1  www.celebsgetcaught.com

127.0.0.1  coolblueads.biz

127.0.0.1  top.freeadultsex.info

# [Reflected Networks via various][64.210.128.0 - 64.210.159.255]

# [Reflected Networks via various][66.254.96.0 - 66.254.127.255]

# [Reflected Networks via Hinckley LLC]

127.0.0.1  www.amateurvideopro.com

127.0.0.1  www.analvideopro.com

127.0.0.1  www.bigtitsvideopro.com

127.0.0.1  www.cashvideopro.com #[otherchance.com]

127.0.0.1  www.gayvideopro.com

127.0.0.1  www.lesbovideopro.com

127.0.0.1  www.teenvideopro.com

127.0.0.1  www.transvideopro.com

# [Relevence Marketing Group]

127.0.0.1  453searches.com #[SunBelt.UpMedia.Search]

127.0.0.1  cpv.453searches.com

127.0.0.1  directory.453searches.com #[Adware.Searchtool]

127.0.0.1  icons.453searches.com

127.0.0.1  more.453searches.com

127.0.0.1  app.asmartershopper.com

127.0.0.1  www.asmartershopper.com #[TR/Dldr.SmartShop.2]

127.0.0.1  checkin100.com #[SiteAdvisor.smutvidoftheday.com]

127.0.0.1  dist.checkin100.com #[W32/Adload.FPS]

127.0.0.1  checkin101.com

127.0.0.1  a.downloadmediacentral.com #[SiteAdvisor.myadultexplorer.com]

127.0.0.1  ads.downloadmediacentral.com

127.0.0.1  exe.downloadmediacentral.com

127.0.0.1  fpa.downloadmediacentral.com #[aff.primaryads.com][MVPS.Criteria]

127.0.0.1  img.downloadmediacentral.com

127.0.0.1  link.downloadmediacentral.com

127.0.0.1  media.downloadmediacentral.com #[Win32/TrojanDownloader.Agent.AUV]

127.0.0.1  www.downloadmediacentral.com

127.0.0.1  www.holdem-u.com

127.0.0.1  marksdirtysecrets.com

127.0.0.1  myadultexplorer.com

127.0.0.1  client.myadultexplorer.com

127.0.0.1  onlyfreeadult.com

127.0.0.1  www.onlyfreeadult.com

127.0.0.1  puzzledesktop.com

127.0.0.1  client.puzzledesktop.com

127.0.0.1  sudoku.puzzledesktop.com

127.0.0.1  www.puzzledesktop.com #[Trojan.Downloader.Agent.CZ]

127.0.0.1  quickdatasearch.com

127.0.0.1  rapidinfosearch.com

127.0.0.1  relevancemarketingltd.com

127.0.0.1  www.relevancemarketingltd.com #[Trojan-Downloader.Win32.Agent.auv]

127.0.0.1  search.searchme100.com #[search.thinktarget.com]

127.0.0.1  searchme101.com

127.0.0.1  sense-expert.com

127.0.0.1  sense-pro.com

127.0.0.1  sense-super.com

127.0.0.1  sense-wonder.com

127.0.0.1  super-context.com

127.0.0.1  swiftinfosearch.com

127.0.0.1  wonder-context.com #[Adware.Searchtool]

127.0.0.1  app.wonder-context.com

127.0.0.1  new.wonder-context.com

127.0.0.1  wonder-search.com

# [Register.com][AS16805][96.9.0.0 - 96.9.63.255]

127.0.0.1  best-antispyware.net #[Rogue/Suspect Affiliate.sites]

127.0.0.1  www.best-antispyware.net

# [Renome Service][78.26.161.0 - 78.26.191.255]

127.0.0.1  scan.antispyware-free-scanner.com #[WinFixer]

# [Retrostats]

127.0.0.1  www.groovystats.com

127.0.0.1  www.petstats.com

127.0.0.1  www.pridestats.com

127.0.0.1  www.retrostats.com

127.0.0.1  www.zodiacstats.com

# [RevenueScience]

127.0.0.1  ads.revsci.net #[Ad-Aware Tracking.Cookie]

127.0.0.1  js.revsci.net

127.0.0.1  jsl.revsci.net

127.0.0.1  pix01.revsci.net #[TrackingPixelCode]

127.0.0.1  pix02.revsci.net

127.0.0.1  pix03.revsci.net

127.0.0.1  pix04.revsci.net

127.0.0.1  revsci.tvguide.com

127.0.0.1  rsi.tvguide.com

# [Reverian.com][AS21788][66.197.165.35 - 66.197.165.44]

127.0.0.1  1hentaiporntube.com

127.0.0.1  xxxladyporn.net

# [Ricardo Carreras][200.63.45/24]

# [Rogue/Suspect Anti-Spyware Products]

127.0.0.1  6d-antivirus.com

127.0.0.1  www.6d-antivirus.com

127.0.0.1  www.ad-purge.com #[thespywareshield.com]

127.0.0.1  www.adware-remover.net #[ADS Adware Remover]

127.0.0.1  antiadwarepro.com

127.0.0.1  www.antiadwarepro.com

127.0.0.1  buylicensekey.com

127.0.0.1  www.codeclean.co.kr #[Adware-CodeClean]

127.0.0.1  www.doctorvaccine.co.kr #[McAfee.DoctorVaccine]

127.0.0.1  errordoctor.com

127.0.0.1  www.errordoctor.com #[Win32/Adware.ErrorDoctor]

127.0.0.1  www.esunsofttechnologies.com #[Symantec.MyBugFreePc]

127.0.0.1  update1.findnavi.co.kr #[Adware.FindNavi]

127.0.0.1  www.findnavi.co.kr

127.0.0.1  msantispyware2009.com #[Win32/FakeAV.ACP]

127.0.0.1  www.msantispyware2009.com

127.0.0.1  www.mycleanerpc.com #[Symantec.MyCleanerPC]

127.0.0.1  www.oreware.com

127.0.0.1  www.pchealthplan.com #[Symantec.PCHealthPlan]

127.0.0.1  pcmightymax.net

127.0.0.1  www.pcmightymax.net

127.0.0.1  adware.privacy-solution.com

127.0.0.1  www.privacy-solution.com

127.0.0.1  www.professionalcash.com

127.0.0.1  quickcleaner.com

127.0.0.1  www.quickcleaner.com #[QCV6C030.Install]

127.0.0.1  downloads.rabio.com

127.0.0.1  server.rabio.com

127.0.0.1  www.rabio.com #[Adware.Rabio]

127.0.0.1  rebrandsoftware.com

127.0.0.1  www.rebrandsoftware.com

127.0.0.1  www.scanspyware.net #[SiteAdvisor.scanspyware.net]

127.0.0.1  www.shareware4web.com

127.0.0.1  www.software4yoursuccess.com #[Froggie Scan]

127.0.0.1  www.spybot-spyware-removal.com #[palsol.com]

127.0.0.1  spy-kill.com

127.0.0.1  deluxe.spy-kill.com

127.0.0.1  www.spy-kill.com

127.0.0.1  spywarecrusher.com

127.0.0.1  www.spywarecrusher.com

127.0.0.1  www.spywareit.com

127.0.0.1  www.spywareremovalwizard.com #[Symantec.SpywareRemovalWizard]

127.0.0.1  system-defender.com #[Symantec.SystemDefender]

127.0.0.1  www.system-defender.com #[SiteAdvisor.system-defender.com]

127.0.0.1  www.tekeffect.com

127.0.0.1  thespywaredetective.com

127.0.0.1  www.thespywaredetective.com #[Symantec.TheSpywareDetective]

127.0.0.1  www.trackzapper.com

127.0.0.1  www.truesuite.com #[TrueWatch]

127.0.0.1  www.x-conspywaredestroyer.com

127.0.0.1  xen.name

127.0.0.1  www.zzztech.com

# [Armor2net Software]

127.0.0.1  www.armor2net.com #[Rogue/Suspect]

127.0.0.1  www.spywarekiller.net #[Rogue/Suspect]

127.0.0.1  www.totalfax.net

# [CNetmedia Group][2Squared][72.32.242.168 - 72.32.242.175]

127.0.0.1  adware.pro

127.0.0.1  www.adware.pro

127.0.0.1  adwarealert.com

127.0.0.1  download.adwarealert.com

127.0.0.1  www.adwarealert.com

127.0.0.1  adwarearrest.com

127.0.0.1  www.adwarearrest.com

127.0.0.1  adwarepro.org

127.0.0.1  www.adwarepro.org #[Symantec.AdwarePro2Sqr]

127.0.0.1  antispyware.com #[SunBelt.AntiSpywareApp]

127.0.0.1  download.antispyware.com

127.0.0.1  setup.antispyware.com

127.0.0.1  www.antispyware.com #[FraudTool.Win32.AntiSpyware.d]

127.0.0.1  antispywarebot.com

127.0.0.1  download.antispywarebot.com

127.0.0.1  www.antispywarebot.com #[FraudTool.Win32.Antispyware.c]

127.0.0.1  www.2squared.com

127.0.0.1  errorkiller.com #[Symantec.ErrorKiller]

127.0.0.1  download.errorkiller.com

127.0.0.1  www.errorkiller.com

127.0.0.1  errorsmart.com

127.0.0.1  download.errorsmart.com

127.0.0.1  www.errorsmart.com

127.0.0.1  download.evidenceeraser.com

127.0.0.1  www.evidenceeraser.com

127.0.0.1  free-pc-repair.com

127.0.0.1  www.free-pc-repair.com

127.0.0.1  macrovirus.com

127.0.0.1  download.macrovirus.com

127.0.0.1  www.macrovirus.com

127.0.0.1  malwarebot.com #[SiteAdvisor.malwarebot.com]

127.0.0.1  download.malwarebot.com

127.0.0.1  www.malwarebot.com

127.0.0.1  registrybot.com

127.0.0.1  download.registrybot.com

127.0.0.1  www.registrybot.com

127.0.0.1  download.registryclear.com

127.0.0.1  www.registryclear.com

127.0.0.1  registrysmart.com

127.0.0.1  download.registrysmart.com

127.0.0.1  www.registrysmart.com

127.0.0.1  regrecall.com

127.0.0.1  download.regrecall.com

127.0.0.1  www.regrecall.com

127.0.0.1  regsweep.com

127.0.0.1  download.regsweep.com

127.0.0.1  www.regsweep.com

127.0.0.1  remover.org

127.0.0.1  www.remover.org

127.0.0.1  restore-pc.com

127.0.0.1  www.restore-pc.com

127.0.0.1  spywarebot.com

127.0.0.1  download.spywarebot.com

127.0.0.1  www.spywarebot.com

127.0.0.1  spywareremover.com

127.0.0.1  download.spywareremover.com

127.0.0.1  www.spywareremover.com

# [EAV Software]

127.0.0.1  www.anti-viruses.net #[Symantec.TrojanGuarder]

127.0.0.1  www.your-soft.com

# [Elite Concepts]

127.0.0.1  www.adwarespy.com #[Symantec.AdwareSpy]

127.0.0.1  www.buildtraffic.com

127.0.0.1  www.buildtrafficx.com

127.0.0.1  www.eliteconcepts.com

127.0.0.1  www.loggerx.com

127.0.0.1  www.spywarespy.com #[Rogue/Suspect]

# [Mandel Enterprises][David Da Silva]

127.0.0.1  adwarexterminator.com #[AdWare.ToolBar.AlexaBar.A]

127.0.0.1  www.adwarexterminator.com

127.0.0.1  adwarepatrol.com #[Rogue/Suspect]

127.0.0.1  www.adwarepatrol.com

127.0.0.1  adwaredeluxe.com #[Rogue/Suspect]

127.0.0.1  www.adwaredeluxe.com

127.0.0.1  adwareremover.ws

127.0.0.1  adwaresafety.com

127.0.0.1  adwaretools.com

127.0.0.1  www.adwaretools.com

127.0.0.1  alertspy.com #[Rogue/Suspect][ibill.com]

127.0.0.1  antispyadvanced.com

127.0.0.1  www.antispyadvanced.com

127.0.0.1  antivirusadvance.com

127.0.0.1  www.antivirusadvance.com

127.0.0.1  antiviruspremium.com

127.0.0.1  www.antiviruspremium.com

127.0.0.1  antivirusprotector.com

127.0.0.1  www.antivirusprotector.com

127.0.0.1  antivirusprotectionsite.com

127.0.0.1  www.antivirusprotectionsite.com

127.0.0.1  avadvance.com

127.0.0.1  www.avadvance.com

127.0.0.1  doctoradware.com #[Rogue/Suspect]

127.0.0.1  doctoradwarepro.com #[Rogue/Suspect][Symantec.DoctorAdwarePro]

127.0.0.1  etdscanner.com #[Symantec.ETDScanner]

127.0.0.1  www.etdscanner.com

127.0.0.1  expertcash.com

127.0.0.1  flashdollars.com

127.0.0.1  www.flashdollars.com

127.0.0.1  imp3download.com

127.0.0.1  www.microantivirus.com

127.0.0.1  microantivirusxp.com

127.0.0.1  pestbot.com

127.0.0.1  www.pestbot.com #[Rogue/Suspect]

127.0.0.1  pestprotector.com

127.0.0.1  platinumpartner.com

127.0.0.1  www.platinumpartner.com

127.0.0.1  popprotection.com

127.0.0.1  registryrepair.ws

127.0.0.1  spyadvanced.com #[Rogue/Suspect]

127.0.0.1  spydestroy.com

127.0.0.1  www.spydestroy.com

127.0.0.1  spywareremoval.ws #[SpwareRemoval]

127.0.0.1  spywarexp.com #[Rogue/Suspect]

127.0.0.1  unknownip.com

127.0.0.1  www.unknownip.com

127.0.0.1  virusscansite.com

127.0.0.1  www.virusscansite.com

# [PAL Solutions Ltd]

127.0.0.1  www.jcspyware-remover.com #[Rogue/Suspect]

127.0.0.1  palsol.com #[Rogue/Suspect]

127.0.0.1  www.palsol.com

127.0.0.1  www.palsol.net

# [Pandora-Software Group][Oleg Dvorezky][ThePayOnline Company][Bakasoftware]

127.0.0.1  secure.innovagest2000.com

127.0.0.1  www.innovagest2000.com #[Rogue/Suspect]

# [Sawert Alliance]

127.0.0.1  srv1.e-statist.com

127.0.0.1  software-traff.com

127.0.0.1  software-traffic.com

# [SpyDefenderPro]

127.0.0.1  myfindonline.com

127.0.0.1  windowsspywaredefender.com

# [End of Rogue/Suspect]

# [Ronn Chang][AS21548][76.76.103.160 - 76.76.103.167]

127.0.0.1  guardlab2009.biz

127.0.0.1  guardlab2009.net

# [Root Esolutions][AS44042][195.24.72.0 - 195.24.79.255]

127.0.0.1  1sense.info

127.0.0.1  1speed.info #[Malicious.Links]

127.0.0.1  2speed.info #[Google.Warning]

127.0.0.1  premium-search.org

127.0.0.1  top-name.cn

# [Root Esolutions][AS44042][212.117.160.0 - 212.117.175.255]

127.0.0.1  7addition.info

127.0.0.1  approved-payments.com

127.0.0.1  enterprisestat.net

127.0.0.1  givemystats.com

127.0.0.1  measurehits.com #[server down?]

127.0.0.1  pleaselinkmeto.com

127.0.0.1  statsnclick.com #[server down?]

127.0.0.1  usa-antispy.com

127.0.0.1  waytotheprofit.com #[Google.Diagnostic][server down?]

127.0.0.1  webscannertools.com

127.0.0.1  www.webscannertools.com

127.0.0.1  welovesandi.com #[server down?]

# [Round Up 4 Network]

127.0.0.1  http100.content.ru4.com #[Ewido.TrackingCookie.Ru4]

127.0.0.1  http300.content.ru4.com #[McAfee.Cookie-RU4][SpySweeper.Spy.Cookie]

127.0.0.1  http.content.ru4.com #[SunBelt.Ru4.com][pd.mii.instacontent.net]

127.0.0.1  http.edge.ru4.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  http300.edge.ru4.com #[Accuserve Ad System]

127.0.0.1  https.edge.ru4.com #[pd.mirror-image.net]

127.0.0.1  http400.edge.ru4.com #[pd.mirror-image.net]

# [Ruboskizo SL]

127.0.0.1  www.adbars.com #[SunBelt.AdBars]

127.0.0.1  alt.impresionesweb.com

127.0.0.1  code.impresionesweb.com

127.0.0.1  gb.impresionesweb.com

127.0.0.1  www.impresionesweb.com

127.0.0.1  alternativos.iw-advertising.com

# [Rydium Canada/PCSTATS.COM]

127.0.0.1  ad-flow.com #[Tenebril.Tracking.Cookie]

127.0.0.1  www.techlinks100.com

# [Sago Networks][207.150.160.0 - 207.150.191.255]

127.0.0.1  www.2008g2feed.com

127.0.0.1  adlik.akavita.com

127.0.0.1  www.d88.biz

127.0.0.1  www.lookxml.com

# [Sago Networks][65.110.32.0 - 65.110.63.255]

127.0.0.1  www.my1235.com

# [Sago Networks][65.110.57.90 - 65.110.57.99]

127.0.0.1  www.bressey.com

127.0.0.1  www.ddirk.com

127.0.0.1  www.exalt123.com

# [Sago Networks][66.118.128.0 - 66.118.191.255]

127.0.0.1  www.2008feisearch.com

127.0.0.1  www.ahahgo.com

127.0.0.1  www.big2feed.com

127.0.0.1  www.cheapadv.com

127.0.0.1  www.liveforsearch.com

127.0.0.1  www.mvav.com

127.0.0.1  www.ncfeed.com

127.0.0.1  adserver2.oxdl.com

127.0.0.1  www.seeturn.com

127.0.0.1  www.tipsgeo.com

127.0.0.1  adserver.wowsearch.info

# [Said Inc][208.88.50.0 - 208.88.50.255]

# [Said Inc][208.88.53.0 - 208.88.53.255]

# [Saturn-m][77.91.229.96 - 77.91.229.127]

# [SBAsoft.com via SageMetrics][63.150.145.0 - 63.150.145.31]

127.0.0.1  st.mirror.co.uk #[st.sageanalyst.net]

127.0.0.1  amp.st.sageanalyst.net

127.0.0.1  matchnet.st.sageanalyst.net #[McAfee.Cookie-Sageanalyst]

127.0.0.1  st.sageanalyst.net #[Ad-Aware.Tracking.Cookie]

127.0.0.1  st.virginmedia.com #[770.st.sageanalyst.net]

# [Secured Servers][209.188.0.0 - 209.188.31.255]

127.0.0.1  ads.jt.org

127.0.0.1  banners.lativio.com

127.0.0.1  banners.moreniche.com #[banners.lativio.com]

127.0.0.1  track.moreniche.com

127.0.0.1  bbw.sexyads.com

127.0.0.1  reseller.sexyads.com

127.0.0.1  pix.sexyads.net

127.0.0.1  www.sexyads.net #[SunBelt.SexyAds.net]

# [Sedo LLC Group][Parking Service]

127.0.0.1  www.adsedo.com

127.0.0.1  imgs.request.net

127.0.0.1  www1.request.net #[sedoparking.com]

127.0.0.1  pics.searchresultsdirect.com

127.0.0.1  www2.searchresultsdirect.com

127.0.0.1  www3.searchresultsdirect.com

127.0.0.1  pics.www3.searchresultsdirect.com

127.0.0.1  js.www3.searchresultsdirect.com

127.0.0.1  sedoparking.com

127.0.0.1  img.sedoparking.com

127.0.0.1  www.sedoparking.com #[Microsoft.Typo-Patrol]

127.0.0.1  www1.sedoparking.com

127.0.0.1  www.sedotracker.com

127.0.0.1  www.sedotracker.de

# [Seed Corn Advertising Group]

127.0.0.1  happytofind.com #[Trojan-Dropper.Win32.Agent.hl]

127.0.0.1  download.happytofind.com

127.0.0.1  search.happytofind.com

127.0.0.1  www.happytofind.com #[Win32/TrojanClicker.IntelliAdvert]

127.0.0.1  www.seedcornadvertising.com

127.0.0.1  www.seedcornadv.com

# [Sergey Tegniryadno][AS41665][213.155.3.152 - 213.155.3.159]

127.0.0.1  alll-online.com

127.0.0.1  all-tube.cn

127.0.0.1  cinemacafe.tv

127.0.0.1  fabulous-videos.com

127.0.0.1  fevertube.com #[Google.Diagnostic]

127.0.0.1  fresh-video-news.com #[server down?]

127.0.0.1  high-quality-videos.net

127.0.0.1  ibmvideo.com

127.0.0.1  last-porno-news.com

127.0.0.1  last-sex-news.com #[server down?]

127.0.0.1  last-worlds-news.com

127.0.0.1  new-sex-video.com #[server down?]

127.0.0.1  new100videos.com

127.0.0.1  sexy-top-news.com

127.0.0.1  shocking-stars.net

127.0.0.1  video-pomp.com

127.0.0.1  video-trailers.net

127.0.0.1  watch-for-free.net

127.0.0.1  worldnews-video.net

# [ServePath][AS26228][208.96.0.0 - 208.96.63.255]

127.0.0.1  partners.realgirlsmedia.com

127.0.0.1  ads.reddit.com

127.0.0.1  po4.realtimematrix.net

# [ServePath][AS26228][216.93.160.0 - 216.93.191.255]

127.0.0.1  ads.hookedmediagroup.com

127.0.0.1  www.hookedmediagroup.com

127.0.0.1  www.mylovecards.com #[Win32/AdInstaller][Gabor Timis]

# [Serverbeach][64.34.160.0 - 64.34.175.255]

127.0.0.1  dlx.getupdate.com #[AdvWare.ToolBar.VB.b][Adware.Getup]

127.0.0.1  ads.lawnsite.com

127.0.0.1  veely.com #[Google.Warning]

127.0.0.1  www.veely.com

127.0.0.1  www.win-fix.com

# [Serverbeach][66.135.32.0 - 66.135.63.255]

127.0.0.1  ads.7days.ae

127.0.0.1  amefin.com

127.0.0.1  openads.hiphopsite.com

# [Serverbeach via Soft.sol.inc][76.74.249.0 - 76.74.249.31]

# [Server Central Network][216.246.0.0 - 216.246.127.255]

127.0.0.1  www.keywordbarn.com

127.0.0.1  searchclickads.net #[McAfee.Adware-BkdSpace.dr]

127.0.0.1  www.searchclickads.net

127.0.0.1  www.sparxads.com

127.0.0.1  upliftsearch.com #[klikadvertising]

# [Server Central Network][66.225.192.0 - 66.225.255.255]

127.0.0.1  404ads.net

127.0.0.1  www.404ads.net

127.0.0.1  www.adconduit.net

127.0.0.1  tag2b.ads55.com

127.0.0.1  www.ads55.com

127.0.0.1  demiurge.arstechnica.com

127.0.0.1  playteen.centralserver.net

127.0.0.1  www.mixmaxmedia.com

127.0.0.1  searchfu.net #[eTrust.SearchFu/123Search]

127.0.0.1  www.zappbrannigan.com

127.0.0.1  www.zoombar.net #[SunBelt.ZoomBar]

# [Server Central Network]

127.0.0.1  bookedspace.com

127.0.0.1  www.bookedspace.com #[Adware.Bookedspace]

127.0.0.1  download.centralserver.net #[McAfee.Adware-BkdSpace]

# [Serverconnect][AS29518][83.233.165.0 - 83.233.165.255]

127.0.0.1  megatubexxx.net

127.0.0.1  www.megatubexxx.net

127.0.0.1  www.mixporntube.com

# [Serveur-express-nerim][AS13193][80.65.232.0 - 80.65.232.255]

127.0.0.1  stats.ref2000.com

127.0.0.1  cpc.trafiz.net

127.0.0.1  t3.trafiz.net

127.0.0.1  track.trafiz.net

127.0.0.1  track-683.trafiz.net

127.0.0.1  track-711.trafiz.net

# [Sharman License Holdings]

127.0.0.1  kazaa.com

127.0.0.1  desktop.kazaa.com #[Tenebril.Tracking.Cookie]

127.0.0.1  download.kazaa.com

127.0.0.1  images.kazaa.com

127.0.0.1  www.kazaa.com

127.0.0.1  kazaa.adserver.co.il

# [Shelron Group]

127.0.0.1  bestoffers.activeshopper.com

127.0.0.1  data2.activshopper.com #[Trackware.ActivShopper]

127.0.0.1  e-zshopper.activeshopper.com #[McAfee.Adware-ActivShop]

127.0.0.1  mini.activeshopper.com

127.0.0.1  mobile.activeshopper.com

127.0.0.1  search.activshopper.com

127.0.0.1  uk.activeshopper.com

127.0.0.1  www.shelrongroup.com

# [Sherv Inc][SiteAdvisor.sherv.net]

127.0.0.1  www.messengertools.net #[DrWeb.Tool.MsnSteal]

127.0.0.1  www.sherv.net #[AdWare.Win32.180Solutions][Adware-Sherv]

# [Shiny S.r.l]

127.0.0.1  codice.shinystat.com

127.0.0.1  codiceisp.shinystat.com

127.0.0.1  s1.shinystat.com

127.0.0.1  s2.shinystat.com

127.0.0.1  s3.shinystat.com

127.0.0.1  s4.shinystat.com

127.0.0.1  www.shinystat.com

127.0.0.1  codice.shinystat.it

127.0.0.1  codiceisp.shinystat.it

127.0.0.1  s1.shinystat.it

127.0.0.1  s2.shinystat.it #[SecuritySpace.WebBug]

127.0.0.1  s3.shinystat.it

127.0.0.1  s4.shinystat.it

127.0.0.1  www.shinystat.it

# [ShopNav][Walnut Ventures][Mike Thompson]

127.0.0.1  2020search.com #[Trojan.Digits][Spyware.2020search]

127.0.0.1  ws1.2020search.com

127.0.0.1  www.2020search.com #[CWS.Googlems.2][CWS.Winres]

127.0.0.1  appswebservice.com

127.0.0.1  ws1.appswebservice.com

127.0.0.1  404.drsnsrch.com

127.0.0.1  dlkw.drsnsrch.com #[SpySweeper.Adware.drsnsrch]

127.0.0.1  kw.drsnsrch.com

127.0.0.1  ron.drsnsrch.com

127.0.0.1  search.drsnsrch.com

127.0.0.1  search2.drsnsrch.com

127.0.0.1  toolbar.drsnsrch.com

127.0.0.1  websearch.drsnsrch.com #[Spyware.Shopnav.dl]

127.0.0.1  welcome.drsnsrch.com

127.0.0.1  www.drsnsrch.com

127.0.0.1  redzip.com #[SunBelt.Adw.RedZip.Toolbar]

127.0.0.1  www.redzip.com

127.0.0.1  shopnav.com

127.0.0.1  soda.shopnav.com

127.0.0.1  www.shopnav.com

127.0.0.1  srng.net #[ADW_SHOPNAV.D][CWS.ShopNav.D]

127.0.0.1  pop.popuptoast.com #[Spyware.2020search]

127.0.0.1  apps.webservicehosts.com #[Parasite.ShopNav]

127.0.0.1  dr.webservicehosts.com #[offeroptimizer.com]

127.0.0.1  gsim.webservicehosts.com

127.0.0.1  sc.webservicehosts.com #[McAfee.Downloader-AFN]

127.0.0.1  sn.webservicehosts.com #[McAfee.Adware-ShopNav]

# [Sia Css Group][][94.142.129.0 - 94.142.129.127]

127.0.0.1  utrxx.com

# [Sia Eliots Eirovins][AS41665][213.182.197.224 - 213.182.197.239]

127.0.0.1  8addition.info

# [Sia Nano It][AS43513][91.203.68.0 - 91.203.71.255]

127.0.0.1  zuxmash.info #[Google.Diagnostic]

# [Sia Nano It via Baltconn-net][AS43513][193.138.172.0 - 193.138.175.255]

# [Sia Teron][AS35695][195.88.80.0 - 195.88.81.255]

127.0.0.1  bitsinfoware.net

# [Siarhei Shandrokha][AS24940][78.46.205.64 - 78.46.205.71]

# [Siarhei Shandrokha][78.46.216.232 - 78.46.216.239]

127.0.0.1  secure.securedpaymentsystem.com

127.0.0.1  worldsoftwarestore.com

# [Siarhei Shandrokha][78.47.91.152 - 78.47.91.159]

127.0.0.1  bestbuysystem.com

# [Siarhei Shandrokha][78.47.100.184 - 78.47.100.191]

127.0.0.1  searchinspace.com

# [Siarhei Shandrokha][78.47.168.80 - 78.47.168.87]

# [Siarhei Shandrokha][78.47.172.64 - 78.47.172.71]

127.0.0.1  advanedpromalwarescanner.com

127.0.0.1  live-payment-system.com

# [Siarhei Shandrokha][78.47.186.160 - 78.47.186.167]

127.0.0.1  hitmidpoint.com

127.0.0.1  proovenstats.com

# [Siarhei Shandrokha][78.47.248.112 - 78.47.248.119]

127.0.0.1  secure.privatesecuredpayments.com

# [Siarhei Shandrokha][78.47.30.192 - 78.47.30.199]

# [Siarhei Shandrokha][78.47.63.248 - 78.47.63.255]

# [Siarhei Shandrokha][Michael Schramm][78.47.91.152 - 78.47.91.159]

# [Simpli Hosting via Rampell Software][208.69.176.0 - 208.69.183.255]

127.0.0.1  didtheyreadit.com

127.0.0.1  www.didtheyreadit.com

127.0.0.1  www.readnotify.com #[Email Tracker]

127.0.0.1  www.returnreceipt.com #[Email Tracker]

127.0.0.1  xpostmail.com

# [Singapore Pte Ltd][203.211.136.0 - 203.211.136.255]

127.0.0.1  admarketcenter.com

127.0.0.1  mypussyworld.com

# [Singer-computer Ltd][62.176.16.0 - 62.176.19.255]

# [Sistemnet Telekomunikasyon][Serv2u.com][AS44097][79.135.160.0 - 79.135.191.255]

127.0.0.1  lousecn.cn

# [Sistemnet Telecom via various][88.255.74.0 - 88.255.74.255]

# [SiteMeter Inc][Tracking Service]

127.0.0.1  sitemeter.com #[SecuritySpace.WebBug]

127.0.0.1  ads.sitemeter.com

127.0.0.1  sm1.sitemeter.com

127.0.0.1  sm2.sitemeter.com #[SiteAdvisor.trustyhound.net]

127.0.0.1  sm3.sitemeter.com

127.0.0.1  sm4.sitemeter.com

127.0.0.1  sm5.sitemeter.com

127.0.0.1  sm6.sitemeter.com

127.0.0.1  sm7.sitemeter.com

127.0.0.1  sm8.sitemeter.com

127.0.0.1  sm9.sitemeter.com

127.0.0.1  s10.sitemeter.com

127.0.0.1  s11.sitemeter.com

127.0.0.1  s12.sitemeter.com

127.0.0.1  s13.sitemeter.com

127.0.0.1  s14.sitemeter.com

127.0.0.1  s15.sitemeter.com

127.0.0.1  s16.sitemeter.com

127.0.0.1  s17.sitemeter.com

127.0.0.1  s18.sitemeter.com

127.0.0.1  s19.sitemeter.com

127.0.0.1  s20.sitemeter.com

127.0.0.1  s21.sitemeter.com

127.0.0.1  s22.sitemeter.com

127.0.0.1  s23.sitemeter.com

127.0.0.1  s24.sitemeter.com

127.0.0.1  s25.sitemeter.com

127.0.0.1  s26.sitemeter.com

127.0.0.1  s27.sitemeter.com

127.0.0.1  s28.sitemeter.com

127.0.0.1  s29.sitemeter.com

127.0.0.1  s30.sitemeter.com

127.0.0.1  s31.sitemeter.com

127.0.0.1  s32.sitemeter.com

127.0.0.1  s33.sitemeter.com

127.0.0.1  s34.sitemeter.com

127.0.0.1  s35.sitemeter.com

127.0.0.1  s36.sitemeter.com

127.0.0.1  s37.sitemeter.com

127.0.0.1  s38.sitemeter.com

127.0.0.1  s39.sitemeter.com

127.0.0.1  s40.sitemeter.com

127.0.0.1  s41.sitemeter.com

127.0.0.1  s42.sitemeter.com

127.0.0.1  s43.sitemeter.com

127.0.0.1  s44.sitemeter.com

127.0.0.1  s45.sitemeter.com

127.0.0.1  s46.sitemeter.com

127.0.0.1  s47.sitemeter.com

127.0.0.1  s49.sitemeter.com

127.0.0.1  s48.sitemeter.com

127.0.0.1  s50.sitemeter.com

127.0.0.1  s51.sitemeter.com

127.0.0.1  www.sitemeter.com

# [Sixtyclear][AS36351][74.86.200.144 - 74.86.200.151]

# [SkyLabs Corporation][New York Internet Media][DL Enterprises]

127.0.0.1  www.favicon.com

127.0.0.1  searchblaster.com #[WIPO.Staples]

127.0.0.1  www.searchblaster.com #[Typo squatter]

# [Skyline Network Technologies]

127.0.0.1  ads.net-ad-vantage.com #[ntg.spinbox.net]

127.0.0.1  adtegrity.spinbox.net #[Ad-Aware.Tracking.Cookie]

127.0.0.1  ia.spinbox.net

127.0.0.1  netcomm.spinbox.net

127.0.0.1  spin.spinbox.net

127.0.0.1  vsii.spinbox.net #[SunBelt.SpinBox]

127.0.0.1  www.spinbox.net

# [Smartlogic Ltd][80.90.112.0 - 80.90.115.255]

127.0.0.1  dzenmoney.cn

# [Smartlogic Ltd][80.90.112.0 - 80.90.127.255]

127.0.0.1  etraff.net

# [Smartwave][AS2379][207.30.25.0 - 207.30.25.127]

127.0.0.1  miniscan4.com

127.0.0.1  ray4scan.com

127.0.0.1  scan4mix.com

127.0.0.1  scan4ray.com

127.0.0.1  starscan4.com

127.0.0.1  topscan4.com

# [Smv][207.58.187.0 - 207.58.187.255]

127.0.0.1  go13.info

127.0.0.1  hard-core-xxx.com

127.0.0.1  adult.hard-core-xxx.com

127.0.0.1  lsex.hard-core-xxx.com

127.0.0.1  osex.hard-core-xxx.com #[Porn-Dialer.Win32.Agent.aj]

127.0.0.1  ssex.hard-core-xxx.com #[Porn-Dialer.Win32.Agent.aj]

127.0.0.1  www.hard-core-xxx.com

# [Sobonito Investments][66.6.16.0 - 66.6.31.255]

127.0.0.1  mediaview.globalmailer.com

127.0.0.1  rt.globalmailer.com

127.0.0.1  pcash.globalmailer5.com

127.0.0.1  pcash.imlive.com

# [SoftBulldog][Ran Geva]

127.0.0.1  www.diyp2p.com

127.0.0.1  www.dustat.com

127.0.0.1  www.malwhere.com

127.0.0.1  www.processid.com

127.0.0.1  www.rangeva.com

127.0.0.1  www.sigster.com

127.0.0.1  www.softbulldog.com #[Adware.MediaInject]

127.0.0.1  urlblaze.com #[Adware.IEDriver]

127.0.0.1  www.urlblaze.com #[SunBelt.UrlBlaze]

127.0.0.1  www.yadaware.com

# [Softlayer Technologies][174.36.0.0 - 174.37.255.255]

127.0.0.1  daditraff.cn #[Google.Diagnostic]

127.0.0.1  fix-tool.com #[Symantec.FixTool]

127.0.0.1  www.fix-tool.com

127.0.0.1  fixupdates.com #[Fraudware.2squared]

127.0.0.1  girlsyork.com

127.0.0.1  google-moogle.com #[Spamdexing]

127.0.0.1  www.google-moogle.com

127.0.0.1  java-pc.com #[Fraudware.ClickBank]

127.0.0.1  www.java-pc.com

127.0.0.1  registry-updates.com #[Fraudware.2squared]

127.0.0.1  ads.right-ads.com

127.0.0.1  thelightsex.com

127.0.0.1  updates-micro.com

127.0.0.1  www.updates-micro.com

127.0.0.1  updatesprofessional.com

127.0.0.1  www-ms.com #[Fraudware.2squared]

# [Softlayer Technologies][208.101.0.0 - 208.101.63.255]

127.0.0.1  www.777seo.com #[Google.Warning]

127.0.0.1  www.e-googles.com

127.0.0.1  www.mypgn.com #[HTML.Exploit]

127.0.0.1  pp-pay.net

# [Softlayer Technologies][208.43.0.0 - 208.43.255.255]

127.0.0.1  error.000webhost.com

127.0.0.1  www.combl.com

127.0.0.1  oyaebu.com

127.0.0.1  abusing.stopspams.net

# [SoftLayer via Comdexx Solutions][AS36351][208.43.0.0 - 208.43.255.255]

127.0.0.1  videonewsland.com #[Google.Warning]

127.0.0.1  vidstream.cn

# [Softlayer Technologies via PolurNET][208.43.67.0 - 208.43.67.127]

# [Softlayer Technologies][66.228.112.0 - 66.228.127.255]

# [Softlayer Technologies][AS36351][67.228.0.0 - 67.228.255.255]

127.0.0.1  www.bulk-hot-sales.com

127.0.0.1  www.e-referrer.com

127.0.0.1  www.ezcq.net

127.0.0.1  gaagle.name

127.0.0.1  counter.plugin.ws

127.0.0.1  www.trlist.gen.tr #[Google.Diagnostic]

# [Softlayer Technologies][74.86.0.0 - 74.86.255.255]

127.0.0.1  www.1freecounter.com

127.0.0.1  adserverus.info

127.0.0.1  adultvidstore.info #[Malicious.Links.Codec]

127.0.0.1  banners.adventory.com

127.0.0.1  www.arcadebanners.com

127.0.0.1  www.autosurfpro.com

127.0.0.1  www.blogpatrol.com

127.0.0.1  www.clicking123.com

127.0.0.1  www.g8search.com #[Spamdexing]

127.0.0.1  rimvoyeur.ru #[Javascript.Exploit]

127.0.0.1  mycounter.tinycounter.com

127.0.0.1  www.w3exit.com

127.0.0.1  webcounter.com

127.0.0.1  www.webcounter.com

127.0.0.1  www.wwppc.com #[Spamdexing]

# [Softlayer Technologies][75.126.0.0 - 75.126.255.255]

127.0.0.1  www.game-advertising-online.com

127.0.0.1  grafitonline.com

127.0.0.1  obeus.com

127.0.0.1  onmysitenow.com

127.0.0.1  www.sacredphoenix.com

127.0.0.1  superfastsservers.com #[Spamdexing]

127.0.0.1  www.superfastsservers.com

# [SoftLayer via Dustin Larmier][75.126.0.0 - 75.126.255.255]

# [Softlayer Technologies via Clint Brown]

127.0.0.1  www.easyerase.com #[Rogue/Suspect]

127.0.0.1  www.easyspywarescanner.com

127.0.0.1  www.seekways.com

127.0.0.1  spywarescrapper.com

127.0.0.1  www.spywarescrapper.com #[Symantec.SpywareScrapper]

# [Soft Solutions][AS8312][77.74.48.96 - 77.74.48.127]

# [Software AdF]

127.0.0.1  www.downloadfree-games.com

127.0.0.1  www.downloadfreesoftware.net #[Adware.NewDotNet.B.Dropper]

127.0.0.1  www.download-free-screensavers.com

127.0.0.1  www.freecomputer-games.com

127.0.0.1  www.free-games-screensavers-wallpaper.com

127.0.0.1  www.free-games.to

127.0.0.1  www.freepc-games.com

127.0.0.1  www.freewallpaperbackgrounds.com #[AdWare.Win32.SaveNow.bo]

127.0.0.1  www.free-windows-games.com #[prompt.zangocash.com]

127.0.0.1  www.safedownloads.net #[Adware Bundler]

# [Software Delivery Systems][BPS][HOHOST.COM][H4Host.com]

127.0.0.1  www.adnuker.com

127.0.0.1  adwarecops.com #[Rogue/Suspect]

127.0.0.1  www.adwarecops.com

127.0.0.1  antispyware.bulletproofsoft.com #[SiteAdvisor.bulletproofsoft.com]

127.0.0.1  download.bulletproofsoft.com

127.0.0.1  software.bulletproofsoft.com

127.0.0.1  spywareremoval.bulletproofsoft.com

127.0.0.1  www.bulletproofsoft.com #[Rogue/Suspect]

127.0.0.1  www.bulletproofsoft.net

127.0.0.1  www.cleanbrowser.com

127.0.0.1  www.downloadupload.com

127.0.0.1  www.filehog.com

127.0.0.1  www.spywarecops.com #[Rogue/Suspect]

127.0.0.1  www.spystriker.com #[Rogue/Suspect]

127.0.0.1  www.spywarestriker.com

127.0.0.1  www.spywarezapper.com #[Rogue/Suspect]

# [Softwareworks Group][AS40595][65.75.128.0 - 65.75.191.255]

127.0.0.1  www.xcode.info

127.0.0.1  files.xeol.net #[SiteAdvisor.xeol.net]

127.0.0.1  pr.xeol.net

# [Sonet Network][195.234.159.0 - 195.234.159.255]

# [Sophus][89.145.118.0 - 89.145.118.255]

127.0.0.1  dailymail.sophus3.com #[WebBug]

127.0.0.1  guardian.sophus3.com

127.0.0.1  nma.sophus3.com

127.0.0.1  sun.sophus3.com

127.0.0.1  telegraph.sophus3.com

127.0.0.1  times.sophus3.com

127.0.0.1  trinity.sophus3.com

# [SourceForge]

127.0.0.1  images-aud.freshmeat.net

127.0.0.1  ads.osdn.com

127.0.0.1  sfads.osdn.com

127.0.0.1  images-aud-pg.osdn.com

127.0.0.1  tg-images.osdn.com

127.0.0.1  genweb.ostg.com

127.0.0.1  images-aud.slashdot.org

127.0.0.1  images-aud.sourceforge.net

# [SpecificMEDIA Inc][ValueAd Inc]

127.0.0.1  www.gogotools.com #[Adware.GoGoTools]

127.0.0.1  www.searchgogo.com

127.0.0.1  specificpop.com #[SunBelt.Specificpop.com]

127.0.0.1  www.specificpop.com #[SpySweeper.Spy.Cookie]

127.0.0.1  adopt.specificclick.net #[Ad-Aware.Tracking.Cookie]

127.0.0.1  afe.specificclick.net

127.0.0.1  bp.specificclick.net

127.0.0.1  dg.specificclick.net

127.0.0.1  images.specificclick.net

127.0.0.1  specificmedia.com

127.0.0.1  as.specificmedia.com #[usbansrv60]

127.0.0.1  cxtad.specificmedia.com

127.0.0.1  leads.specificmedia.com #[directtrack.com]

127.0.0.1  www.specificmedia.com #[eTrust.GoGoTools]

127.0.0.1  ac2.valuead.com

127.0.0.1  ads.valuead.com #[SpySweeper.Spy.Cookie]

127.0.0.1  adsignal.valuead.com

127.0.0.1  axxessads.valuead.com

127.0.0.1  banners.valuead.com #[ADW_VALUEAD.M][eTrust.Tracking.Cookie]

127.0.0.1  moads.valuead.com

127.0.0.1  oin.valuead.com #[outerinfo.com]

127.0.0.1  pmads.valuead.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  redux.valuead.com

127.0.0.1  reduxads.valuead.com #[Ewido.TrackingCookie.Valuead]

127.0.0.1  videodetectivenetwork.valuead.com

127.0.0.1  vdn.valuead.com

# [Speedbit Ltd][Feigenbaum, Idan]

127.0.0.1  ads.downloadaccelerator.com

127.0.0.1  ad1.speedbit.com

127.0.0.1  ad2.speedbit.com

127.0.0.1  ad3.speedbit.com

127.0.0.1  ad4.speedbit.com

127.0.0.1  ad5.speedbit.com

127.0.0.1  ad6.speedbit.com

127.0.0.1  ad7.speedbit.com

127.0.0.1  ad8.speedbit.com

127.0.0.1  ad9.speedbit.com

127.0.0.1  ad10.speedbit.com

127.0.0.1  ads1.speedbit.com

127.0.0.1  ads2.speedbit.com

127.0.0.1  ads3.speedbit.com

127.0.0.1  ads4.speedbit.com

127.0.0.1  ads5.speedbit.com

127.0.0.1  ads6.speedbit.com

127.0.0.1  ads7.speedbit.com

127.0.0.1  ads8.speedbit.com

127.0.0.1  ads9.speedbit.com

127.0.0.1  ads10.speedbit.com

127.0.0.1  mirrorsearch.speedbit.com

# [Speedera Networks][Akamai Technologies][VPP Technologies]

127.0.0.1  adt.m7z.net #[a1827.x.akamai.net]

127.0.0.1  bridgetrack.speedera.r3h.net

127.0.0.1  anon.doubleclick.speedera.net

127.0.0.1  spd.atdmt.speedera.net

127.0.0.1  fms2.eyewonder.speedera.net

127.0.0.1  fms2.pointroll.speedera.net

127.0.0.1  tribalfusion.speedera.net #[a889.g.akamai.net]

127.0.0.1  js.vpptechnologies.com

127.0.0.1  media-0.vpptechnologies.com

127.0.0.1  media-1.vpptechnologies.com

127.0.0.1  media-2.vpptechnologies.com #[SiteAdvisor.fish-screensaver.com]

127.0.0.1  media-4.vpptechnologies.com

127.0.0.1  media-5.vpptechnologies.com

127.0.0.1  media-6.vpptechnologies.com

127.0.0.1  media-8.vpptechnologies.com #[SiteAdvisor.fish-screensaver.com]

127.0.0.1  media-a.vpptechnologies.com #[a599.x.akamai.net]

127.0.0.1  media-b.vpptechnologies.com

127.0.0.1  media-c.vpptechnologies.com #[a1332.x.akamai.net]

127.0.0.1  media-d.vpptechnologies.com

127.0.0.1  media-e.vpptechnologies.com

127.0.0.1  media-f.vpptechnologies.com

127.0.0.1  msxml.vpptechnologies.com

127.0.0.1  static.vpptechnologies.com #[hotsearchbar.com]

127.0.0.1  xml.vpptechnologies.com #[BlazeFind]

# [Spylog][MyWebProjects]

127.0.0.1  spytrack.tic.ru

127.0.0.1  spylog.com #[SecuritySpace.WebBug]

127.0.0.1  banners.spylog.com

127.0.0.1  gstats.spylog.com #[Tenebril.Tracking.Cookie]

127.0.0.1  hits.spylog.com #[SunBelt.SpyLog.com]

127.0.0.1  my.spylog.com

127.0.0.1  stats.spylog.com

127.0.0.1  www.spylog.com

127.0.0.1  spylog.ru

127.0.0.1  dir.spylog.ru

127.0.0.1  dir1.spylog.ru

127.0.0.1  gs.spylog.ru

127.0.0.1  tools.spylog.ru

127.0.0.1  www.spylog.ru

127.0.0.1  adv.aport.ru

127.0.0.1  counter.aport.ru

127.0.0.1  stat.aport.ru

# [Spyware Labs Inc][Adware.AdDestroyer]

127.0.0.1  spywarelabs.com #[Adware.VirtualBouncer]

127.0.0.1  download.spywarelabs.com #[ADW_ADDESTROY.A]

127.0.0.1  install.spywarelabs.com #[ADW_BUNDOUT.A]

127.0.0.1  spywarelabs.fileburst.com

127.0.0.1  xml.spywarelabs.com

127.0.0.1  www.spywarelabs.com #[Rogue/Suspect]

127.0.0.1  virtualbouncer.com #[SPYW_VBOUNCE.B]

127.0.0.1  www.virtualbouncer.com #[Rogue/Suspect]

# [Srvg-net-fl1-h][AS29671][77.232.66.0 - 77.232.67.255]

127.0.0.1  advertfast.com

127.0.0.1  picxx.net #[Google.Warning]

127.0.0.1  www.picxx.net

# [Srvg-net-fl1-h][77.232.72.0 - 77.232.73.255]

# [Srvg-net-hh1-h][AS29671][77.232.72.0 - 77.232.73.255]

127.0.0.1  freeadult4u.eu

# [STANDARD INTERNET / Datapipe Group][Adware.Winpup]

127.0.0.1  adserv.net

127.0.0.1  adtrak.net #[SunBelt.Adtrak.net]

127.0.0.1  ugl.adtrak.net

127.0.0.1  www.adtrak.net

127.0.0.1  www.claxon.com

127.0.0.1  claxonmedia.com

127.0.0.1  www.claxonmedia.com

127.0.0.1  popuptraffic.com #[Parasite.ClientMan]

127.0.0.1  media.popuptraffic.com #[Tenebril.Tracking.Cookie]

127.0.0.1  media2.popuptraffic.com

127.0.0.1  stats.popuptraffic.com #[SunBelt.PopupTraffic.com]

127.0.0.1  www.popuptraffic.com

127.0.0.1  sictalk.com

127.0.0.1  www.standardinternet.com #[SunBelt.StandardInternet]

# [Star-Hosting][][77.37.11.0 - 77.37.24.255]

127.0.0.1  bigtopleads.cn

127.0.0.1  lotwager.cn

127.0.0.1  rbgt.in #[SWF/TrojanDownloader.Swif.C]

# [Starhubinternet][AS4657][203.117.0.0 - 203.117.255.255]

127.0.0.1  antivirus-alert.com #[JS/TrojanDownloader.Small.NAT]

127.0.0.1  www.antivirus-alert.com

127.0.0.1  ads.casino.com

# [Starline Web Services][92.62.100.0 - 92.62.100.255]

127.0.0.1  dfs34ss3.com

127.0.0.1  directlink2.cn

127.0.0.1  directlinkq.cn

127.0.0.1  gfdsgf333.com

127.0.0.1  traffone.cn #[Google.Diagnostic]

127.0.0.1  trafffive.cn

# [Starline Web Services][AS39823][92.62.101.0 - 92.62.101.255]

127.0.0.1  fdfgsdfvsdss.eu #[Google.Diagnostic]

# [Starnet S.r.l][Sc Nordlinks Srl][AS31252][87.248.163.0 - 87.248.163.255]

127.0.0.1  098765.com

127.0.0.1  lastpoher.ru #[Google.Diagnostic]

127.0.0.1  www.lastpoher.ru

127.0.0.1  murtinreid.com

127.0.0.1  murtinreid.net

127.0.0.1  sendsometraff.com #[Google.Diagnostic]

127.0.0.1  x-more-x.net

127.0.0.1  zorroless.com

# [Starnet S.r.l][87.248.176.0 - 87.248.191.255]

# [Starweb-Service via Mainpean GmbH][193.159.183.0 - 193.159.183.255]

127.0.0.1  faq.mainpean.de

127.0.0.1  voicecall.mainpean.de

127.0.0.1  www.mainpean.de #[Dailer.Megateens][Adware.Mainpean]

127.0.0.1  stardialer.de #[DIAL_PORNDIAL.CA]

127.0.0.1  help.stardialer.de #[Parasite.StarDialer]

127.0.0.1  install.stardialer.de #[Installations Assistent]

127.0.0.1  www.stardialer.de #[Dialer.Stardial]

# [Statcounter][Aodhan Cullen]

127.0.0.1  c.statcounter.com

127.0.0.1  c1.statcounter.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  c2.statcounter.com #[SecuritySpace.WebBug]

127.0.0.1  c3.statcounter.com #[eTrust.Tracking.Cookie]

127.0.0.1  c4.statcounter.com

127.0.0.1  c5.statcounter.com #[SpySweeper.Spy.Cookie]

127.0.0.1  c6.statcounter.com #[MVPS.Criteria]

127.0.0.1  c7.statcounter.com

127.0.0.1  c8.statcounter.com #[McAfee.Cookie-Statcounter]

127.0.0.1  c10.statcounter.com

127.0.0.1  c11.statcounter.com #[Ewido.TrackingCookie.Statcounter]

127.0.0.1  c12.statcounter.com

127.0.0.1  c13.statcounter.com

127.0.0.1  c14.statcounter.com

127.0.0.1  c15.statcounter.com #[Panda.Spyware:Cookie/Statcounter]

127.0.0.1  c16.statcounter.com

127.0.0.1  c17.statcounter.com

127.0.0.1  c18.statcounter.com

127.0.0.1  c19.statcounter.com

127.0.0.1  c20.statcounter.com

127.0.0.1  c21.statcounter.com

127.0.0.1  c22.statcounter.com

127.0.0.1  c23.statcounter.com

127.0.0.1  c24.statcounter.com

127.0.0.1  c25.statcounter.com

127.0.0.1  c26.statcounter.com

127.0.0.1  c27.statcounter.com

127.0.0.1  c28.statcounter.com

127.0.0.1  c29.statcounter.com

127.0.0.1  c30.statcounter.com

127.0.0.1  c31.statcounter.com

127.0.0.1  c32.statcounter.com

127.0.0.1  c33.statcounter.com

127.0.0.1  c34.statcounter.com

127.0.0.1  c35.statcounter.com

127.0.0.1  c36.statcounter.com

127.0.0.1  c37.statcounter.com

127.0.0.1  c38.statcounter.com

127.0.0.1  c39.statcounter.com

127.0.0.1  c40.statcounter.com

127.0.0.1  c41.statcounter.com

127.0.0.1  c42.statcounter.com

127.0.0.1  c43.statcounter.com

127.0.0.1  my.statcounter.com

127.0.0.1  my8.statcounter.com

127.0.0.1  s2.statcounter.com #[SunBelt.statcounter.com]

127.0.0.1  secure.statcounter.com

127.0.0.1  www.statcounter.com

# [Steephost.com Datacentre][AS47142][195.190.13.0 - 195.190.13.255]

127.0.0.1  biopharmastore.com #[klikadvertising]

127.0.0.1  tds4self.com #[Google.Diagnostic]

127.0.0.1  wificafe-search.com #[Google.Diagnostic]

# [Stephen Middlebrook Group][Virpi Tervonen][Anry Litvinov]

127.0.0.1  abuebu.com

127.0.0.1  babuinworld.com

127.0.0.1  bdsmpichunter.com

127.0.0.1  bigdirtymonkey.com

127.0.0.1  chunkytgp.net

127.0.0.1  clicksagent.com

127.0.0.1  img.clicksagent.com

127.0.0.1  www.clicksagent.com

127.0.0.1  cliter.com

127.0.0.1  dirtybondagetgp.com

127.0.0.1  dirtychicken.com

127.0.0.1  dirtychicken.net

127.0.0.1  galleries.dirtychicken.net

127.0.0.1  drunkpichunter.com

127.0.0.1  drunksexygirls.com

127.0.0.1  ebonypichunter.com

127.0.0.1  fat-ass-fuck.com

127.0.0.1  fatchickens.net

127.0.0.1  fatpichunter.com

127.0.0.1  freecitypictures.com

127.0.0.1  freegalleriessite.com

127.0.0.1  freegalleriesworld.com

127.0.0.1  freegalleryworld.com #[Malicious.Links]

127.0.0.1  www.freegalleryworld.com

127.0.0.1  freeinterracialgalleries.com

127.0.0.1  freejpgseries.com

127.0.0.1  freematureworld.com

127.0.0.1  freemegaporno.com #[Malicious.Links.Codec]

127.0.0.1  freepicturesfree.com

127.0.0.1  fuckherass.net

127.0.0.1  hairypichunter.com

127.0.0.1  hqgays.com

127.0.0.1  tgp.hqgays.com #[Google.Warning]

127.0.0.1  imagesmovies.com

127.0.0.1  indianpichunter.com

127.0.0.1  jpegindex.com

127.0.0.1  jpghunter.net

127.0.0.1  jpgsite.com #[Trojan.Codec]

127.0.0.1  kissherdick.com

127.0.0.1  largebabes.net

127.0.0.1  latinobanners.com

127.0.0.1  monkeycock.net

127.0.0.1  monkeyvids.net

127.0.0.1  moviesexserver.com #[Malicious.Links]

127.0.0.1  natasjatgp.com

127.0.0.1  newfreegalleries.com

127.0.0.1  oldpichunter.com

127.0.0.1  onegaysex.com

127.0.0.1  onegranny.com

127.0.0.1  oneshemale.com

127.0.0.1  picturehunteronline.com

127.0.0.1  gallery.picturehunteronline.com

127.0.0.1  piggyworldtgp.com

127.0.0.1  piporno.com

127.0.0.1  pissingtgp.net

127.0.0.1  plumpchicks.net

127.0.0.1  plumpteens.net

127.0.0.1  realfatgirls.net

127.0.0.1  rubanners.com #[clicksagent.com]

127.0.0.1  2.rubanners.com

127.0.0.1  img.ruclicks.com

127.0.0.1  www.ruclicks.com #[clicksagent.com]

127.0.0.1  russiantwinksecrets.com

127.0.0.1  sawenasex.com

127.0.0.1  spypichunter.com

127.0.0.1  srandel.com #[SiteAdvisor.srandel.com]

127.0.0.1  my.srandel.com

127.0.0.1  teen-gay-boys.net

127.0.0.1  thepregnantsex.com

127.0.0.1  trannypichunter.com

127.0.0.1  wildebonylovers.com

127.0.0.1  worldbestpics.com

127.0.0.1  yebalka.com

127.0.0.1  zalupa.net

127.0.0.1  zetincest.com

127.0.0.1  zmature.com

127.0.0.1  zuzik.net

# [Steve Banton]

127.0.0.1  allstargaming.net #[ADW_SPEYLOD.D]

127.0.0.1  www.allstargaming.net

127.0.0.1  electricroms.com

127.0.0.1  www.electricroms.com

127.0.0.1  www.sexyfreescreensavers.com #[AdWare.Win32.Softomate.ah]

# [Steve Velikog]

127.0.0.1  srv01.bashchelik.com #[Trojan.Mancsyn]

127.0.0.1  mildred.debelizombi.com

127.0.0.1  srv01.debelizombi.com

# [Sticky Logic]

127.0.0.1  www.stickylogic.com

127.0.0.1  www.winadiscount.com #[Dr.Web.Adware.Xbarre]

127.0.0.1  www.winaproduct.com

# [Still Trade][AS47486][91.208.0.0 - 91.208.0.255]

127.0.0.1  seresult.com #[klikadvertising]

# [Stroy Citycom][91.200.144.0 - 91.200.147.255]

# [SubscriberBASE Inc]

127.0.0.1  www.addrive.com

127.0.0.1  bluezipper.com #[eTrust.PrecisionPop]

127.0.0.1  hpu.bluezipper.com

127.0.0.1  www.bluezipper.com

127.0.0.1  www.freeslide.com

127.0.0.1  jdaf.com

127.0.0.1  jp1.sb01.com #[SpySweeper.Spy.Cookie]

127.0.0.1  sbase30.com

127.0.0.1  precisionpop.com

127.0.0.1  adserve.precisionpop.com

127.0.0.1  context.precisionpop.com

127.0.0.1  www.precisionpop.com #[Adware.PrecisionPop]

127.0.0.1  subscriberbase.com

# [Sunnyvision Limited][123.242.231.0 - 123.242.231.255]

127.0.0.1  missing-codecs.com #[Google.Diagnostic]

127.0.0.1  vidscentral.net #[TR/Dldr.VB.dxp]

# [SuperHost.pl][193.218.152.0 - 193.218.155.255]

127.0.0.1  bigstats.net

# [Swift Ventures][204.13.164.0 - 204.13.167.255]

127.0.0.1  weownthetraffic.com

127.0.0.1  www.weownthetraffic.com

127.0.0.1  stats.xxxkey.com

# [Swift Ventures][AS25700][204.13.164.0 - 204.13.167.255]

127.0.0.1  youngmovieclips.com #[Google.Diagnostic]

127.0.0.1  www.youngmovieclips.com #[HTML/TrojanClicker.IFrame.NAG]

# [Swiftwill][146.82.200.0 - 146.82.207.255]

127.0.0.1  www.adultdvdhits.com

127.0.0.1  www.adventideas.com #[Adcycle]

127.0.0.1  tour.brazzers.com

127.0.0.1  www.trafficadept.com

127.0.0.1  xxxvogue.net #[Trojan.Ruindem]

127.0.0.1  www.xxxvogue.net

# [SxLabs][67.15.107.64 - 67.15.107.127]

127.0.0.1  www.accesoplugin.com #[PremiumHTML.Dialer]

127.0.0.1  banners.gamblingmasters.com

# [Tacoda Systems][AOL][209.50.160.0 - 209.50.191.255]

127.0.0.1  an.tacoda.net #[a1406.g.akamai.net]

127.0.0.1  anad.tacoda.net #[BurstMedia]

127.0.0.1  anat.tacoda.net

127.0.0.1  anrtx.tacoda.net

# [TAM Network]

127.0.0.1  adimgs.com

127.0.0.1  c.adverpages.com

127.0.0.1  c.mydirectweb.com #[ofrsvr.com]

127.0.0.1  i.mydirectweb.com #[adimgs.com]

127.0.0.1  www.rxwebsearch.com

127.0.0.1  c.thinktarget.com #[Parked?]

127.0.0.1  farm.thinktarget.com

127.0.0.1  g.thinktarget.com

127.0.0.1  search.thinktarget.com

127.0.0.1  secretmaker.thinktarget.com #[farm.thinktarget.com]

# [TargetSaver, Inc]

127.0.0.1  www.adtraffic.net #[eTrust.Adtraffic]

127.0.0.1  www.quicksweeper.com

127.0.0.1  targetsaver.com #[SpySweeper.Adware.targetsaver]

127.0.0.1  a.targetsaver.com

127.0.0.1  dl.targetsaver.com #[ADW_TARGETSAV.A]

127.0.0.1  www.targetsaver.com #[Adware.TargetSaver]

127.0.0.1  www.targetweather.com

# [Telecom Centre][83.229.186.0 - 83.229.187.255]

# [Telekom Malaysia via various][202.71.96.0 - 202.71.111.255]

# [Telekom Malaysia via various][202.75.32.0 - 202.75.63.255]

127.0.0.1  hyip-review.info #[Javascript.Exploit]

127.0.0.1  adserv.lowyat.net

# [Telemark Info-Media]

127.0.0.1  adx.hendersonvillenews.com

127.0.0.1  adx.heraldtribune.com #[nyads.ny.publicus.com]

127.0.0.1  adx.ocala.com

127.0.0.1  adx.starbanner.com

127.0.0.1  adx.starnewsonline.com

127.0.0.1  adx.telegram.com

127.0.0.1  adx.timesdaily.com

127.0.0.1  adx.theledger.com

127.0.0.1  noads.no.publicus.com

127.0.0.1  bbads.sv.publicus.com

127.0.0.1  beads.sx.atl.publicus.com

127.0.0.1  cmads.sv.publicus.com

127.0.0.1  crimg.sv.publicus.com

127.0.0.1  fdads.sv.publicus.com

127.0.0.1  goads.sv.publicus.com

127.0.0.1  nsads.sv.publicus.com

127.0.0.1  ptads.sv.publicus.com

127.0.0.1  rhads.sv.publicus.com

127.0.0.1  siads.sv.publicus.com

127.0.0.1  tpads.sv.publicus.com

127.0.0.1  wwads.sv.publicus.com

127.0.0.1  lladinserts.us.publicus.com

# [Telemedia]

127.0.0.1  1stmovieclub.net #[Malicious.Links.Codec]

127.0.0.1  thumbs.1stmovieclub.net

127.0.0.1  www.1stmovieclub.net

127.0.0.1  onlybigmovies.com #[Malicious.Links.Codec]

127.0.0.1  www.onlybigmovies.com

# [Telnetnetwork][193.111.244.0 - 193.111.247.255]

127.0.0.1  www.dir4you.org #[Trojan-Downloader.NSIS.Agent.at]

127.0.0.1  sexonline.fake.hu #[JS/TrojanDownloader.Small.NBH]

127.0.0.1  www.freesexonline.biz

127.0.0.1  www.freexxxmovies.in #[Malicious.Links.Codec]

127.0.0.1  www.superadultsearch.com

127.0.0.1  sexonline.tx.hu #[server down?]

# [The DelFin Project][Adware.DelFin][Adware.DelFin.B]

127.0.0.1  delfinproject.com #[ADW_DELFINMED.C]

127.0.0.1  ads.delfinproject.com

127.0.0.1  adsv2.delfinproject.com #[Softure AdServer]

127.0.0.1  content.delfinproject.com #[Adware-IEDriver]

127.0.0.1  mm.delfinproject.com #[AdWare.DelphinMediaViewer.c]

127.0.0.1  storagev2.delfinproject.com #[McAfee.Downloader-JS]

127.0.0.1  www.delfinproject.com #[Adware-PromulGate]

127.0.0.1  storage.savingshound.com

127.0.0.1  www.savingshound.com #[Adware.SavingsHound]

# [Theplanet.com][174.132.0.0 - 174.133.255.255]

127.0.0.1  adreactor.com

127.0.0.1  adserver.adreactor.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  adtactics.com

127.0.0.1  www.adtactics.com

127.0.0.1  adsvert.com

127.0.0.1  cheapest-things.com

127.0.0.1  fine-results.com

127.0.0.1  www.htmate2.com #[Cursor.MySpace]

127.0.0.1  get.load-flash.com

127.0.0.1  onlineitems.info #[Spamdexing]

127.0.0.1  searchinheaven.com

127.0.0.1  www.serveads.com

127.0.0.1  www.thunder-ball.net

127.0.0.1  www.topblogarea.com

127.0.0.1  trafficg.com

127.0.0.1  www.trafficg.com

# [Theplanet.com][207.44.128.0 - 207.44.255.255]

127.0.0.1  www.i-clicks.net

127.0.0.1  www.idolove.com #[Win32/AdInstaller][Gabor Timis]

127.0.0.1  www.searchmachine.com

# [Theplanet.com][209.62.0.0 - 209.62.127.255]

127.0.0.1  adserver.hipertextual.com

127.0.0.1  workst.net

# [Theplanet.com via Ben Vanderbildt][209.85.0.0 - 209.85.127.255]

127.0.0.1  www.a013.com

127.0.0.1  www.albumgalaxy.com #[AdWare.Win32.Relevant.a]

127.0.0.1  www.kiwialpha.com #[SiteAdvisor.kiwialpha.com]

127.0.0.1  clk2.lookquick.com

127.0.0.1  www.twistermp3.com #[AdWare.Win32.Relevant.a]

# [Theplanet.com][216.40.192.0 - 216.40.255.255]

127.0.0.1  www.internetpeace.com #[eTrust.Free Popup Killer]

# [Theplanet.com][64.246.0.0 - 64.246.63.255]

127.0.0.1  www.abx4.com #[Adware.ABXToolbar]

127.0.0.1  adult.master-tv.net

127.0.0.1  j.maxmind.com

127.0.0.1  xxx4live.com

# [Theplanet.com][66.98.128.0 - 66.98.255.255]

127.0.0.1  ads.afixi.com

127.0.0.1  www.allyoursearch.com #[TrojanDropper.Win32.Small.gt]

127.0.0.1  banners.broadwayworld.com

127.0.0.1  www.linkads.net

127.0.0.1  www.mywebsearch.net

127.0.0.1  www.pcprivacysoftware.com #[Symantec.AdsAlert]

127.0.0.1  searchsquire.com #[Parasite.SearchSquire]

127.0.0.1  search.searchsquire.com #[Trojan.TrustedZones]

127.0.0.1  www.searchsquire.com #[Adware.Searchsquire]

127.0.0.1  vote4warez.com

127.0.0.1  www.wowweb.net #[Adware.WWWBar]

# [ThePlanet.com][67.15.0.0 - 67.15.255.255]

127.0.0.1  ads.adhostingsolutions.com #[eTrust.Tracking.Cookie]

127.0.0.1  www.black-hole.co.uk

127.0.0.1  chunkypig.com #[AdWare.Win32.Chiem.c]

127.0.0.1  www.chunkypig.com

127.0.0.1  freeonlineusers.com

127.0.0.1  ads.harpers.org

127.0.0.1  ctr.hitcounter-1.com

127.0.0.1  adsnew.maktoob.com #[AdvertPro]

127.0.0.1  www.pstats.com

127.0.0.1  wts.sexrouter.net

127.0.0.1  www.skeech.com #[SunBelt.Skeech]

127.0.0.1  banners.sys-con.com

127.0.0.1  www.system-processes.com #[Adware.SystemProcess]

127.0.0.1  ads.thegauntlet.com

127.0.0.1  ads.tm-research.com

127.0.0.1  www.traffic4u.com

127.0.0.1  www.triplexcounter.com

# [Theplanet.com][67.18.0.0 - 67.19.255.255]

127.0.0.1  www.10s.com.br #[Trojan.Cargao]

127.0.0.1  netshelter.adtrix.com

127.0.0.1  antimonous.info

127.0.0.1  choicetitle.net #[Win32/Agent.ETH]

127.0.0.1  www.credonic.com

127.0.0.1  dizoxen.com

127.0.0.1  www.free-hardcoresex.org

127.0.0.1  www.gamertraffic.com

127.0.0.1  gerrakl.info

127.0.0.1  ads.jokaroo.com

127.0.0.1  ads.jokeroo.com

127.0.0.1  www.megastats.com

127.0.0.1  meiluziai.info

127.0.0.1  milppc.com

127.0.0.1  neoffic.com

127.0.0.1  rxmehost.com

127.0.0.1  search2007.info #[Spamdexing]

127.0.0.1  www.seo1.org #[JS/Exploit.MS05-013]

127.0.0.1  seonomad.com

127.0.0.1  www.storebiz4u.com #[server down?]

127.0.0.1  adware.storesbiz.com #[server down?]

127.0.0.1  banner.techarp.com

127.0.0.1  www.teosoft.com

127.0.0.1  webads.tradeholding.com

127.0.0.1  www.worlds-best-online-casinos.com #[AdWare.Win32.Casino.w]

127.0.0.1  xenodiz.com #[Spamdexing.Codec]

127.0.0.1  xe-xenical.com #[Malicious.Links.Codec]

127.0.0.1  www.xe-xenical.com

# [Theplanet.com via Marko Novakovic Group]

127.0.0.1  www.celeb-pornsite.com

127.0.0.1  www.celebritypornnude.com

127.0.0.1  msoftware.info

127.0.0.1  secure.msoftware.info

127.0.0.1  www.msoftware.info

127.0.0.1  secure.repair-registry.net

127.0.0.1  www.repair-registry.net

127.0.0.1  download.scanandrepair.com #[Symantec.ScanandRepair]

127.0.0.1  secure.scanandrepair.com

127.0.0.1  www.scanandrepair.com #[Rogue/Suspect]

127.0.0.1  download.scanandrepair.net

127.0.0.1  secure.scanandrepair.net

127.0.0.1  miss.smscentar.com

# [Theplanet.com via IE PLUGIN LIMITED][Adware.IEPlugin]

127.0.0.1  ieplugin.com

127.0.0.1  badurl.ieplugin.com

127.0.0.1  search.ieplugin.com #[IEPlugin.Search]

127.0.0.1  sysupdate.ieplugin.com #[Win32/TrojanDownloader.OneClickNetS.F]

127.0.0.1  welcome.ieplugin.com

127.0.0.1  wwa.ieplugin.com

127.0.0.1  wwd.ieplugin.com

127.0.0.1  ww2.ieplugin.com

127.0.0.1  ww3.ieplugin.com

127.0.0.1  www.ieplugin.com #[SiteAdvisor.ieplugin.com]

# [Theplanet.com][69.56.128.0 - 69.56.255.255]

127.0.0.1  counter.relmaxtop.com

127.0.0.1  www.relmaxtop.com

# [Theplanet.com][69.57.128.0 - 69.57.159.255]

127.0.0.1  www.registrygenius.com

# [Theplanet.com][69.93.0.0 - 69.93.255.255]

127.0.0.1  g.adspeed.net

127.0.0.1  www.bannerswap.ca

127.0.0.1  freemarketforever.com #[Spamdexing]

127.0.0.1  rainbow-mail.net #[Spamdexing]

# [Theplanet.com][70.84.0.0 - 70.87.255.255]

127.0.0.1  www.1trac.com

127.0.0.1  www.adgauge.com

127.0.0.1  www.adscampaign.com

127.0.0.1  ads.advancedpcmedia.com

127.0.0.1  adware-download.com

127.0.0.1  www.adware-download.com

127.0.0.1  agentmediagroup.com #[Javascript.Exploit]

127.0.0.1  www.agentmediagroup.com

127.0.0.1  freelogs.com

127.0.0.1  bar.freelogs.com

127.0.0.1  goo.freelogs.com

127.0.0.1  htm.freelogs.com

127.0.0.1  ico.freelogs.com

127.0.0.1  joe.freelogs.com

127.0.0.1  mom.freelogs.com

127.0.0.1  xyz.freelogs.com

127.0.0.1  gx-host.com #[Spamdexing]

127.0.0.1  www.herbalsmokeshops.com

127.0.0.1  hits-counter.com

127.0.0.1  www.hits-counter.com

127.0.0.1  image-catcher.com

127.0.0.1  lzda.com

127.0.0.1  www.manga-erotico.com #[Rubuskizo Dialer]

127.0.0.1  www.musicmass.com #[HJTH.C2Media/LOP variant]

127.0.0.1  www.onmpeg.com #[Malicious.Links]

127.0.0.1  service.persianstat.com

127.0.0.1  www.persianstat.ir

127.0.0.1  poratech.com #[Spamdexing]

127.0.0.1  registrydefender.com #[Symantec.RegistryDefender]

127.0.0.1  www.registrydefender.com

127.0.0.1  registrydefenderplatinum.com

127.0.0.1  www.registrydefenderplatinum.com

127.0.0.1  registrygreat.com #[Symantec.RegistryGreat]

127.0.0.1  www.registrygreat.com

127.0.0.1  www.registrysweeper.com #[Symantec.RegistrySweeper]

127.0.0.1  scorpionsearch.com #[W32.Adclicker.C.Trojan]

127.0.0.1  www.scorpionsearch.com #[Trojan.Clicker.NetBuie a-b]

127.0.0.1  ads.shizmoo.com

127.0.0.1  counters.soft-com.biz

127.0.0.1  a.softpedia.com

127.0.0.1  www.spywarethis.com #[Rogue.Antispyware]

127.0.0.1  thefreenude.com

127.0.0.1  thesurfshield.com

127.0.0.1  www.thesurfshield.com

127.0.0.1  ads.tolshop.com

127.0.0.1  ads.tweakxp.com

127.0.0.1  www.updates-xp.com #[SiteAdvisor.updates-xp.com]

127.0.0.1  m.usersonline.com #[WebBug]

127.0.0.1  www.websitealive3.com

127.0.0.1  x2.xclicks.net

127.0.0.1  x3.xclicks.net

127.0.0.1  x4.xclicks.net

127.0.0.1  x5.xclicks.net

127.0.0.1  x6.xclicks.net

127.0.0.1  www.xclicks.net

127.0.0.1  counter.yakcash.com

127.0.0.1  ypka.com #[Spamdexing]

127.0.0.1  defloration.zvca.com

# [Theplanet.com via Belih Anry Zahariev]

127.0.0.1  ceporno.com

127.0.0.1  finesexpix.com

127.0.0.1  momsporno.com #[Google.Warning]

127.0.0.1  sexyteenspix.com #[Malicious.Links.Codec]

127.0.0.1  www.sexyteenspix.com

# [Theplanet.com via Nikolay Zuyev]

127.0.0.1  agp-one.net

127.0.0.1  akaokoichi.net #[Spamdexing]

127.0.0.1  grandsupport.net

127.0.0.1  www.oldjim.com

127.0.0.1  rainbowdisplays.com #[Spamdexing]

127.0.0.1  vaccinome.com

127.0.0.1  www.vaccinome.com

# [Theplanet.com via Choker Media]

127.0.0.1  www.chickenbanners.com

127.0.0.1  chokertraffic.com #[Malicious.Links]

127.0.0.1  new.chokertraffic.com

127.0.0.1  www.chokertraffic.com

127.0.0.1  www.xsex42.com

# [Theplanet.com via Tim Parker]

127.0.0.1  www.myrealpics.com #[server down?]

127.0.0.1  www.picsdrive.com

127.0.0.1  www.picsplace.com #[server down?]

127.0.0.1  www.takebest.com #[klikfind.com][Trojan.TrustedZone]

127.0.0.1  www.zonebest.com #[MHTMLRedir.Exploit][SunBelt.zonebest.com]

# [Theplanet.com][74.52.0.0 - 74.54.255.255]

127.0.0.1  www.3bsoftware.com #[Spyware Protection Pro]

127.0.0.1  www.abcsearcher.com #[Spamdexing][Microsoft.Strider]

127.0.0.1  www.adult-banner-ads.com

127.0.0.1  adlik2.akavita.com

127.0.0.1  alabamamlya.com #[Sun Li]

127.0.0.1  c0.amazingcounters.com

127.0.0.1  c1.amazingcounters.com

127.0.0.1  c2.amazingcounters.com

127.0.0.1  c3.amazingcounters.com

127.0.0.1  c4.amazingcounters.com

127.0.0.1  c5.amazingcounters.com

127.0.0.1  c6.amazingcounters.com

127.0.0.1  c7.amazingcounters.com

127.0.0.1  c8.amazingcounters.com

127.0.0.1  c9.amazingcounters.com

127.0.0.1  cb.amazingcounters.com

127.0.0.1  www.amazingcounters.com

127.0.0.1  antispyprotector.com #[Symantec.AntispywareProtector]

127.0.0.1  www.antispyprotector.com

127.0.0.1  antispywerepro.com

127.0.0.1  www.antispywerepro.com

127.0.0.1  apaccheee.com #[Sun Li]

127.0.0.1  www.celebritypicturesarchive.com #[Trojan-Downloader.Win32.IstBar.nn]

127.0.0.1  www.celebrity-pictures-world.com #[Trojan-Downloader.Win32.IstBar.nn]

127.0.0.1  celki2009.ru

127.0.0.1  www.cocogals.com #[Spamdexing.Codec]

127.0.0.1  www.crispads.com

127.0.0.1  d87.eu #[Google.Diagnostic]

127.0.0.1  www.davestraffic.com

127.0.0.1  disablespyware.com #[Symantec.DisableSpyware]

127.0.0.1  www.disablespyware.com

127.0.0.1  www.dnvideos.com #[Malicious.Links.Zango]

127.0.0.1  www.elancenet.org #[Worm/Eyeveg.CH]

127.0.0.1  green-results.com

127.0.0.1  hiphopnow.net #[Sun Li]

127.0.0.1  hornys-place.com

127.0.0.1  www.hornys-place.com #[Google Warning]

127.0.0.1  hornytraffic.com

127.0.0.1  www.hornytraffic.com

127.0.0.1  hortonnn.com #[Sun Li]

127.0.0.1  ads.hotword.com.br

127.0.0.1  ads2.hotword.com.br

127.0.0.1  ads3.hotword.com.br

127.0.0.1  ads4.hotword.com.br

127.0.0.1  ads5.hotword.com.br

127.0.0.1  ads6.hotword.com.br

127.0.0.1  ads7.hotword.com.br

127.0.0.1  get.inetbar.com #[SunBelt.INetBar]

127.0.0.1  www.juiceadv.com

127.0.0.1  www.justfreegames.com #[AdWare.Win32.Relevant.a]

127.0.0.1  www.knacads.com

127.0.0.1  kudabimnebi.com #[Sun Li]

127.0.0.1  setup.malwareremovalbot.com

127.0.0.1  noerrorsonly.com #[Sun Li]

127.0.0.1  secure.obabilling.com

127.0.0.1  offcat.com

127.0.0.1  www.offcat.com

127.0.0.1  onlinedrugfinder.com #[Sun Li]

127.0.0.1  onlyquality-rx.com #[Sun Li]

127.0.0.1  www.pantanalvip.com.br #[McAfee.Downloader-AFV]

127.0.0.1  www.pc-test.net

127.0.0.1  pornsexorgy.com

127.0.0.1  www.pornsexorgy.com

127.0.0.1  rxfinderr.com #[Sun Li]

127.0.0.1  searchmagazine.biz #[Sun Li]

127.0.0.1  sexerotika2009.ru

127.0.0.1  seximalinki.ru

127.0.0.1  www.sxplus.com

127.0.0.1  teenhost.net #[MHTMLRedir.Exploit]

127.0.0.1  www.teenhost.net

127.0.0.1  thespywareshield.com

127.0.0.1  www.thespywareshield.com

127.0.0.1  traffxonline.com

127.0.0.1  warm-search.com #[klikadvertising][Sun Li]

127.0.0.1  counter.yakbucks.com

127.0.0.1  yourtraff.com

127.0.0.1  www.yourtraff.com

# [Theplanet.com][AS21844][74.52.0.0 - 74.55.255.255]

127.0.0.1  actimele.com #[klikadvertising]

127.0.0.1  www.adszooks.com

127.0.0.1  setup.adwarealert.com

127.0.0.1  clubfeed.org #[klikadvertising]

127.0.0.1  drug-drugz.com #[klikadvertising][Sun Li]

127.0.0.1  erroreasy.com

127.0.0.1  www.erroreasy.com

127.0.0.1  lighttdsrulit.com #[klikadvertising]

127.0.0.1  lilumovies.com

127.0.0.1  www.lilumovies.com #[Google.Diagnostic]

127.0.0.1  neatfind.net #[klikadvertising]

127.0.0.1  services.picadmedia.com

127.0.0.1  precisesearch.org #[klikadvertising]

127.0.0.1  proantispyware.com

127.0.0.1  sunday-traffic.com #[klikadvertising]

127.0.0.1  tdstdstds.com #[klikadvertising]

127.0.0.1  vivosearch.com

127.0.0.1  www.vivosearch.com

# [Theplanet.com][75.125.0.0 - 75.125.255.255]

127.0.0.1  2squared.com

127.0.0.1  img.comparefacil.com

127.0.0.1  www.comparefacil.com

127.0.0.1  ddors.info

127.0.0.1  www.duenow.com

127.0.0.1  adn.entrecard.com

127.0.0.1  errorsrepair.com

127.0.0.1  errorrepairtool.com

127.0.0.1  www.errorrepairtool.com

127.0.0.1  errorsweeper.com #[Adware.Win32.ErrorSweeper]

127.0.0.1  download.errorsweeper.com

127.0.0.1  www.errorsweeper.com

127.0.0.1  errorstool.com

127.0.0.1  www.errorstool.com #[Symantec.ErrorRepair]

127.0.0.1  www.errorupdatetool.com

127.0.0.1  evidenceeraser.com

127.0.0.1  www.handyarchive.com #[SiteAdvisor.handyarchive.com]

127.0.0.1  www.mysearch-finder.com

127.0.0.1  privacycontrol.com #[Adware.Win32.PrivacyControl]

127.0.0.1  database.privacycontrol.com

127.0.0.1  www.privacycontrol.com

127.0.0.1  pulsix.com #[maxalbums.com]

127.0.0.1  www.pulsix.com

127.0.0.1  regclean.com #[Adware.Win32.RegClean]

127.0.0.1  download.regclean.com #[SecurityLab.RegClean2Sqr]

127.0.0.1  www.regclean.com

127.0.0.1  database.registrysmart.com

127.0.0.1  updatemicr0s0ft.net

# [The Walt Disney Company][ABC News][INFOSEEK]

127.0.0.1  3ps.go.com

# 127.0.0.1  hb.disney.go.com #[disabled affects links]

127.0.0.1  ad.go.com

127.0.0.1  adimages.go.com

127.0.0.1  dcapps.disney.go.com #[WebBug]

127.0.0.1  ngads.go.com

127.0.0.1  ad.infoseek.com

127.0.0.1  adsatt.abcnews.starwave.com

127.0.0.1  adsatt.disney.starwave.com

127.0.0.1  adsatt.espn.go.com

127.0.0.1  adsatt.espn.starwave.com

127.0.0.1  adsatt.familyfun.starwave.com

127.0.0.1  adsatt.go.starwave.com

127.0.0.1  adsatt.movies.starwave.com

127.0.0.1  espn-ak.starwave.com

127.0.0.1  odc.starwave.com

# [Think Partnership][Kowabunga! Technologies]

127.0.0.1  aff.primaryads.com #[MVPS.Criteria]

127.0.0.1  images.primaryads.com

# [Thoughtconvergence][AS13768][209.59.194.0 - 209.59.194.255]

# [Thoughtconvergence.com][AS31898][209.59.195.0 - 209.59.195.255]

127.0.0.1  images01.trafficz.com

127.0.0.1  landing.trafficz.com #[Microsoft.Typo-Patrol]

127.0.0.1  landings.trafficz.com

127.0.0.1  images01.tzimg.com

# [Thruport Technologies]

127.0.0.1  fcc.adjuggler.com

127.0.0.1  image.adjuggler.com

127.0.0.1  img1.cdn.adjuggler.com

127.0.0.1  img6.cdn.adjuggler.com

127.0.0.1  img1.adjuggler.com

127.0.0.1  image.dex.adjuggler.com

127.0.0.1  rotator.adjuggler.com

127.0.0.1  rotator.dex.adjuggler.com

127.0.0.1  rotator.its.adjuggler.com #[SiteAdvisor.myAdultExplorer.com]

127.0.0.1  thunderbolt.adjuggler.com

127.0.0.1  traffic.adjuggler.com #[eTrust.Tracking.Cookie]

127.0.0.1  www.adjuggler.com #[Google.Diagnostic]

127.0.0.1  servedby.adxpower.com

127.0.0.1  gamesbanner.net

127.0.0.1  www.gamesbanner.net

127.0.0.1  ads.heraldnet.com #[rotator.adjuggler.com]

127.0.0.1  ads.realtechnetwork.net

127.0.0.1  network.realtechnetwork.net

127.0.0.1  thruport.com

127.0.0.1  adj43.thruport.com

127.0.0.1  adj50.thruport.com

127.0.0.1  adj54.thruport.com

127.0.0.1  imageserver1.thruport.com

127.0.0.1  www.thruport.com

# [Time Telecommunications via various][203.121.64.0 - 203.121.127.255]

# [Tiscali SpA][213.205.36.0 - 213.205.39.255]

127.0.0.1  ad.tiscali.com

127.0.0.1  ad-cz.tiscali.com

127.0.0.1  ad-de.tiscali.com

127.0.0.1  ad-it.tiscali.com

127.0.0.1  ad-sc.tiscali.com

127.0.0.1  ad-uk.tiscali.com

127.0.0.1  sitestats.tiscali.co.uk #[WebBug]

127.0.0.1  adsweb.tiscali.cz

127.0.0.1  adsweb.tiscali.it #[Accipiter]

# [Tk01070g][AS17506][221.116.82.151]

# [Tm Net Sdn Bhd][210.48.144.0 - 210.48.159.255]

127.0.0.1  synad.nuffnang.com.my

127.0.0.1  synad2.nuffnang.com.my

127.0.0.1  synad2.nuffnang.com.sg

# [T-online International]

127.0.0.1  rc.loop.bild.t-online.de

127.0.0.1  tr.loop.bild.t-online.de

# [T-online International][217.6.164.0 - 217.6.167.255]

127.0.0.1  bw.ads.t-online.de

127.0.0.1  data.ads.t-online.de

127.0.0.1  red.ads.t-online.de

# [T-online International][62.153.158.0 - 62.153.159.255]

127.0.0.1  a.ads.t-online.de #[AdSolution-Website-Tag]

127.0.0.1  admin.ads.t-online.de

127.0.0.1  s.ads.t-online.de

127.0.0.1  count.passul.t-online.de

# [T-online International][80.150.6.0 - 80.150.7.255]

127.0.0.1  homepage.t-online.de

127.0.0.1  toi.passul.t-online.de

# [Todayhost Limited / Bogal Ab][195.42.102.0 - 195.42.103.255]

127.0.0.1  incest-films.com #[Google.Diagnostic]

127.0.0.1  www.mantraf.com

127.0.0.1  myincestclips.net

127.0.0.1  www.myincestclips.net

127.0.0.1  banners.paneuromedia.com

127.0.0.1  petsmovies.com

127.0.0.1  sex-and-animals.com #[Google.Diagnostic]

127.0.0.1  statdata.net

127.0.0.1  teenhardmovs.com

127.0.0.1  img.teenhardmovs.com

127.0.0.1  www.teenhardmovs.com

127.0.0.1  traffdirect.com

127.0.0.1  zoo-mad-clips.com #[Google.Diagnostic]

127.0.0.1  www.zoo-mad-clips.com

127.0.0.1  zoomovies.org

127.0.0.1  www.zoomovies.org

# [Todayhost Limited][Tp-nets-pl][AS47143][91.192.116.0 - 91.192.119.255]

127.0.0.1  tdska.net

# [TopRebates LLC][Tom Richmond][Mike Weller]

127.0.0.1  www.e-traffic.com

127.0.0.1  www.etraffic.com

127.0.0.1  www.sysupdates.com

127.0.0.1  www.sysupdates2.com

127.0.0.1  topfivesearch.com #[TROJ_DLOADER.VR]

127.0.0.1  xml.topfivesearch.com #[VPP Technologies]

127.0.0.1  www.topfivesearch.com #[eTrust.TopFiveSearch]

127.0.0.1  topmoxie.com #[SunBelt.TopMoxie]

127.0.0.1  support.topmoxie.com

127.0.0.1  www.topmoxie.com #[Etraffic]

127.0.0.1  www.topmoxie2.com #[Adware.WebRebates.B]

127.0.0.1  toprebate.com

127.0.0.1  www.toprebate.com

127.0.0.1  toprebates.com #[SpySweeper.Spy.Cookie]

127.0.0.1  www.toprebates.com #[Adware.WebRebates]

# [TrackingSoft LLC][216.246.14.0 - 216.246.14.63]

127.0.0.1  fcds.affiliatetracking.net

127.0.0.1  our.affiliatetracking.net

127.0.0.1  www.affiliatetracking.net

127.0.0.1  www.affiliatetracking.com

127.0.0.1  ads.evtv1.com

127.0.0.1  roia.biz

127.0.0.1  ads.vidsense.com

127.0.0.1  wetrack.it

127.0.0.1  st.wetrack.it #[SunBelt.Wetrack.it]

# [Trade Doubler AB][217.212.240.160 - 217.212.240.191]

127.0.0.1  tradedoubler.com #[eTrust.Tracking.Cookie]

127.0.0.1  anetfi.tradedoubler.com

127.0.0.1  clk.tradedoubler.com

127.0.0.1  clkde.tradedoubler.com #[McAfee.Adware-Littlehelper]

127.0.0.1  clkuk.tradedoubler.com

127.0.0.1  hst.tradedoubler.com

127.0.0.1  hstde.tradedoubler.com #[SunBelt.TradeDoubler.com]

127.0.0.1  hstes.tradedoubler.com

127.0.0.1  hstfr.tradedoubler.com

127.0.0.1  hstgb.tradedoubler.com

127.0.0.1  hstit.tradedoubler.com

127.0.0.1  hstno.tradedoubler.com #[Ewido.TrackingCookie.Tradedoubler]

127.0.0.1  hstpl.tradedoubler.com

127.0.0.1  hstus.tradedoubler.com

127.0.0.1  img.tradedoubler.com

127.0.0.1  imp.tradedoubler.com

127.0.0.1  impbe.tradedoubler.com #[Panda.Spyware:Cookie/Tradedoubler]

127.0.0.1  impch.tradedoubler.com

127.0.0.1  impde.tradedoubler.com

127.0.0.1  impdk.tradedoubler.com

127.0.0.1  impes.tradedoubler.com

127.0.0.1  impfi.tradedoubler.com

127.0.0.1  impfr.tradedoubler.com

127.0.0.1  impgb.tradedoubler.com #[SecuritySpace.WebBug]

127.0.0.1  impie.tradedoubler.com

127.0.0.1  impit.tradedoubler.com

127.0.0.1  implt.tradedoubler.com

127.0.0.1  impnl.tradedoubler.com

127.0.0.1  impno.tradedoubler.com

127.0.0.1  imppl.tradedoubler.com

127.0.0.1  impru.tradedoubler.com

127.0.0.1  impse.tradedoubler.com

127.0.0.1  pf.tradedoubler.com

127.0.0.1  tracker.tradedoubler.com #[McAfee.Cookie-Tradedoubler]

# [Trade News Corporation][Wildcard DNS][66.154.96.0 - 66.154.127.255]

127.0.0.1  www.1adult.com

127.0.0.1  11zz.com

127.0.0.1  i.11zz.com

127.0.0.1  in.11zz.com

127.0.0.1  www.11zz.com

127.0.0.1  adultlinksco.com

127.0.0.1  www.adultlinksco.com

127.0.0.1  cashcount.com

127.0.0.1  www.cashcount.com

127.0.0.1  cecash.com

127.0.0.1  image.cecash.com

127.0.0.1  tats.cecash.com

127.0.0.1  www.cecash.com

127.0.0.1  coolwebstats.com

127.0.0.1  www.coolwebstats.com

127.0.0.1  in.cybererotica.com

127.0.0.1  tats.cybererotica.com

127.0.0.1  tour.cybererotica.com

127.0.0.1  www.cybererotica.com

127.0.0.1  in.ff5.com

127.0.0.1  in.joinourwebsite.com

127.0.0.1  www.joinourwebsite.com

127.0.0.1  mainentrypoint.com #[eTrust.AdultLinks.Qabar]

127.0.0.1  in.mainentrypoint.com #[SunBelt.MainEntryPoint]

127.0.0.1  lz.mainentrypoint.com

127.0.0.1  secure.mainentrypoint.com

127.0.0.1  vad.mainentrypoint.com

127.0.0.1  www.mainentrypoint.com #[Adware.AdultLinks]

127.0.0.1  tgp.pornsponsors.com

127.0.0.1  www.pornsponsors.com

127.0.0.1  in.riskymail4free.com #[Spamdexing]

127.0.0.1  www.riskymail4free.com

127.0.0.1  search-itnow.com #[Parasite.AdultLinks]

127.0.0.1  www.search-itnow.com #[McAfee.Adware-AdultLinks]

127.0.0.1  bigtits.xxxallaccesspass.com

# [Traffix Inc][64.5.217.0 - 64.5.217.255]

127.0.0.1  adc.aavalue.com

127.0.0.1  adserv.aavalue.com

127.0.0.1  atlaseducation.aavalue.com

127.0.0.1  ezgreets.aavalue.com

127.0.0.1  eztracks.aavalue.com #[McAfee.Adware-EZTracks]

127.0.0.1  getmusicfree.aavalue.com

127.0.0.1  greatoffers.aavalue.com

127.0.0.1  grouplotto.aavalue.com

127.0.0.1  lottofanatic.aavalue.com

127.0.0.1  lovefreegames.aavalue.com #[Adware.LoveFreeGames]

127.0.0.1  mrsupergames.aavalue.com #[AdWare.Win32.Eztracks.a]

127.0.0.1  musicoffaith.aavalue.com #[NOD32.Win32/Adware.SideSearch]

127.0.0.1  prizeamerica.aavalue.com

127.0.0.1  reciperewards.aavalue.com #[AdWare.Win32.SideSearch.g]

127.0.0.1  thumbplay.aavalue.com

127.0.0.1  trynewgames.aavalue.com

127.0.0.1  watchfreeflix.aavalue.com

127.0.0.1  www.clearflow.com

127.0.0.1  www.clickhelp.net

127.0.0.1  ww1.ez-screensavers.com #[Trojan.BettInet.A]

127.0.0.1  www.ez-screensavers.com

127.0.0.1  freemusic.ez-tracks.com

127.0.0.1  www.ez-tracks.com

127.0.0.1  ww2.ez-tracks.com

127.0.0.1  register7.grouplotto.com

127.0.0.1  www.grouplotto.com

127.0.0.1  www.lovefreegames.com #[Adware.LoveFreeGames]

127.0.0.1  www.mrsupergames.com

127.0.0.1  search.mrsupergames.com

127.0.0.1  www.mrsupergames-jump.com

127.0.0.1  tbdev.pickoftheweb.com

127.0.0.1  mailpop.pickoftheweb.com

127.0.0.1  toolbar.pickoftheweb.com #[Fun and Games Toolbar]

127.0.0.1  www.pickoftheweb.com #[Adware.EZToolbar]

127.0.0.1  www.traffixinc.com #[SunBelt.Traffix]

# [Traffix Inc][64.5.224.0 - 64.5.225.255]

127.0.0.1  gamefiesta.com

127.0.0.1  cardgames.gamefiesta.com

127.0.0.1  search.gamefiesta.com

127.0.0.1  www.gamefiesta.com

127.0.0.1  www.infiads.com

127.0.0.1  searchinaflash.com

127.0.0.1  ezgreets.searchinaflash.com

127.0.0.1  eztracks.searchinaflash.com

127.0.0.1  www.searchinaflash.com

127.0.0.1  track.sendtraffic.com

127.0.0.1  www.sendtraffic.com

127.0.0.1  jumps.watchfreeflix.com

# [Traffix Inc via various]

127.0.0.1  images.gamefiesta.com #[p.mii.instacontent.net]

127.0.0.1  cache.grouplotto.com

127.0.0.1  images.infiads.com #[p.mii.instacontent.net]

# [Trancepitt Services][213.189.9.0 - 213.189.9.255]

# [Transquality C.v][AS44259][91.205.232.0 - 91.205.235.255]

# [Tribal Fusion][Dilip DaSilva][204.11.108.0 - 204.11.111.255]

127.0.0.1  tags.expo9.exponential.com

127.0.0.1  tribalfusion.com #[eTrust.Tracking.Cookie]

127.0.0.1  a.tribalfusion.com

127.0.0.1  cdn1.tribalfusion.com #[SunBelt.TribalFusion][a889.g.akamai.net]

127.0.0.1  cdn4.tribalfusion.com #[Ewido.TrackingCookie.Tribalfusion]

127.0.0.1  cdn5.tribalfusion.com #[SpySweeper.Spy.Cookie]

127.0.0.1  ctxt.tribalfusion.com

127.0.0.1  m.tribalfusion.com

127.0.0.1  s.tribalfusion.com

127.0.0.1  www.tribalfusion.com #[McAfee.Cookie-Tribalfusion]

# [Tribeca Productions]

127.0.0.1  adultid.us #[Win32/Cavitate]

127.0.0.1  www.adultid.us

127.0.0.1  www.netchicks.us

127.0.0.1  www.topsite.us

# [TruEffect][70.42.35.0 - 70.42.35.31]

127.0.0.1  ad.adlegend.com #[affects Webroot AlertNet]

127.0.0.1  media.adlegend.com #[eTrust.Tracking.Cookie]

127.0.0.1  media.customeracquisitionsite.com #[customeracquisitionsite.adlegend.com]

127.0.0.1  media.nyadmcncserve-05y06a.com

# [Trueserver][87.233.141.0 - 87.233.141.255]

127.0.0.1  privatamateure.com #[Sagnet Group]

127.0.0.1  www.privatamateure.com

127.0.0.1  openxxx.viragemedia.com

# [Tumri][72.20.120.0 - 72.20.120.255]

127.0.0.1  icornerstore.tumri.net #[TumriAds]

127.0.0.1  images.tumri.net

127.0.0.1  pserver.tumri.net

127.0.0.1  www.tumri.net

# [Turkey Colocation][79.135.181.0 - 79.135.181.255]

# [Turner Broadcasting]

127.0.0.1  i.l.cnn.net #[WebBug]

# [Turner Broadcasting][157.166.0.0 - 157.166.255.255]

127.0.0.1  ads.adultswim.com #[ads.cnn.com]

127.0.0.1  ads.cnn.com

127.0.0.1  cnn.dyn.cnn.com

127.0.0.1  ads.ireport.com

127.0.0.1  ads.nascar.com

127.0.0.1  ads.nba.com

# [TutHost / Samotlortelecom][AS44820][91.203.4.0 - 91.203.7.255]

127.0.0.1  nahuja.ru

127.0.0.1  orentraff.cn #[Google.Diagnostic]

127.0.0.1  trafficinc.ru

127.0.0.1  trafficmonsterinc.ru

127.0.0.1  us18.ru

# [Uk2.net][77.92.88.0 - 77.92.89.255]

# [Uaonline-ipipe][80.77.81.0 - 80.77.81.255]

# [Uaonline-ipipe][80.77.84.0 - 80.77.84.255]

127.0.0.1  sunnygals.com

127.0.0.1  www.sunnygals.com #[Spamdexing]

# [Ukrainian Processing Centre][AS29102][195.85.198.0 - 195.85.198.255]

127.0.0.1  secure.upc.ua

# [Ukservers Limited][217.10.138.192 - 217.10.138.255]

# [Unicast Communications][Viewpoint]

127.0.0.1  creativeby1.unicast.com #[viewpointn.vo.llnwd.net]

127.0.0.1  ping1.unicast.com

127.0.0.1  www.unicast.com #[SunBelt.Unicast]

# [Unique Billing Systems Group]

127.0.0.1  membersmatter.net

127.0.0.1  www.membersmatter.net #[Trojan.Win32.Agent.afi]

127.0.0.1  secure.microbillsys.com #[Symantec.MicroBillSys]

127.0.0.1  www.microbillsys.com #[Sophos.Micro Bill Systems]

# [United Colocation][63.246.128.0 - 63.246.159.255]

127.0.0.1  www.7scv.com

127.0.0.1  www.citysearchworld.com

127.0.0.1  www.feisearch.com

127.0.0.1  www.myshowsearch.com

127.0.0.1  www.netquesting.com

127.0.0.1  www.overportal.com

127.0.0.1  www.pay-avail-click.com

127.0.0.1  www.seekppc.net

127.0.0.1  www.seekreap.com

127.0.0.1  www.u2clicks.com

127.0.0.1  www.useekxml.com

# [Upl-net-customers][AS43355][78.108.180.0 - 78.108.183.255]

127.0.0.1  bossout.com

127.0.0.1  www.bossout.com

127.0.0.1  www.kisssearch.com #[Umax]

127.0.0.1  links-and-traffic.com

127.0.0.1  www.ofsoft.com #[klikadvertising]

127.0.0.1  teensparty.net #[Malicious.Links.Codec]

127.0.0.1  seostat.org

127.0.0.1  ruswm.com #[Malicious.Links]

127.0.0.1  vdhu.com #[Spamdexing.Codec]

127.0.0.1  xrenoder.com

127.0.0.1  cj.xrenoder.com

127.0.0.1  cons.xrenoder.com

127.0.0.1  search.xrenoder.com #[Search.Xrenoder]

127.0.0.1  scripts.xrenoder.com

127.0.0.1  www.xrenoder.com #[CWS.Bootconf]

# [Ural Industrial / Pp Info-center][AS48511][91.211.64.0 - 91.211.67.255]

127.0.0.1  porgacig.cn #[Google.Diagnostic]

127.0.0.1  portulote.com

# [V3servers Customer Server][217.112.94.226 - 217.112.94.227]

# [V3servers Customer Server][92.48.124.208 - 92.48.124.223]

127.0.0.1  goodnewsfor.eu #[Google.Diagnostic]

127.0.0.1  ieskok.info #[Google.Diagnostic]

# [V3servers.net][][95.168.173.0 - 95.168.173.255]

127.0.0.1  burumba.net #[Malicious.Links.Codec]

127.0.0.1  hello-titty.com

# [ValueClick Media]

127.0.0.1  rd.apmebf.com

127.0.0.1  cj.com

127.0.0.1  www.cj.com #[SunBelt.WWW.CJ.com]

127.0.0.1  clickagents.com #[SunBelt.ClickAgents.com]

127.0.0.1  st.clickagents.com #[Tenebril.Tracking.Cookie]

127.0.0.1  www.clickagents.com #[eTrust.ClickAgents.com]

127.0.0.1  mediaplex.com #[eTrust.Tracking.Cookie]

127.0.0.1  adfarm.mediaplex.com #[Adware.Meplex][Adware-DesktopMedia.dr]

127.0.0.1  ad.snv.mediaplex.com

127.0.0.1  img-cdn.mediaplex.com

127.0.0.1  img-snv.mediaplex.com #[Tenebril.Tracking.Cookie]

127.0.0.1  www.mediaplex.com #[SunBelt.Mediaplex.com]

127.0.0.1  valueclick.com #[eTrust.Tracking.Cookie][SunBelt.ValueClick.com]

127.0.0.1  st.valueclick.ne.jp

127.0.0.1  oz.valueclick.ne.jp

127.0.0.1  ads.aco.valueclick.net

127.0.0.1  ads.csi.valueclick.net

127.0.0.1  ads.he.valueclick.net

127.0.0.1  ads.hnet.valueclick.net

127.0.0.1  ads.link.valueclick.net

127.0.0.1  ads.mplx.valueclick.net

127.0.0.1  ads.mtv.valueclick.net

127.0.0.1  ads.pr.valueclick.net

127.0.0.1  ads.vcuk.valueclick.net

127.0.0.1  cdn.valueclick.net

127.0.0.1  images.valueclickmedia.com

127.0.0.1  ab.vcmedia.com

127.0.0.1  www.yceml.net

127.0.0.1  adfarm.mplx.akadns.net #[SiteAdvisor.livingwater4u.com]

# [Valueclick][216.34.207.0 - 216.34.207.255]

127.0.0.1  img.mplx.akadns.net #[SiteAdvisor.aim.com]

127.0.0.1  altfarm.mediaplex.com #[may affect eBay][MVPS.Criteria]

127.0.0.1  img.mediaplex.com #[Ewido.TrackingCookie.Mediaplex]

127.0.0.1  search123.com #[SunBelt.Search123.com]

127.0.0.1  www.search123.com #[SunBelt.SearchExe Hijacker]

# [ValueClick via Commission Junction[216.34.209.0 - 216.34.209.31]

127.0.0.1  www.afcyhf.com #[SecuritySpace.WebBug]

127.0.0.1  www.anrdoezrs.net

127.0.0.1  mp.apmebf.com

127.0.0.1  www.apmebf.com #[Panda.Spyware:Cookie/Apmebf][SpySweeper.Spy.Cookie]

127.0.0.1  www.awltovhc.com #[SecuritySpace.WebBug]

127.0.0.1  www.commission-junction.com #[eTrust.Tracking.Cookie]

127.0.0.1  www.dpbolvw.net

127.0.0.1  www.emjcd.com

127.0.0.1  www.ftjcfx.com #[SecuritySpace.WebBug]

127.0.0.1  www.jdoqocy.com

127.0.0.1  www.kqzyfj.com

127.0.0.1  www.lduhtrp.net #[SecuritySpace.WebBug]

127.0.0.1  qksrv.com

127.0.0.1  www.qksrv.net #[eTrust.Tracking.Cookie]

127.0.0.1  www.qksz.net

127.0.0.1  www.tkqlhce.com

127.0.0.1  www.tqlkg.com #[SecuritySpace.WebBug]

# [ValueClick via Web Clients]

127.0.0.1  webclients.net #[Webclients Ad Network]

127.0.0.1  www.webclients.net

127.0.0.1  websponsors.com

127.0.0.1  a.websponsors.com #[SunBelt.a.websponsors]

127.0.0.1  ads.websponsors.com

127.0.0.1  g.websponsors.com #[Whois.Blacklisted]

127.0.0.1  ocs.websponsors.com

127.0.0.1  www.websponsors.com

# [ValueClick Media via FastClick][Tracking Service]

127.0.0.1  fastclick.com

127.0.0.1  www.fastclick.com #[SunBelt.FastClick.com]

127.0.0.1  cdn.fastclick.net

127.0.0.1  code.fastclick.net

127.0.0.1  images.fastclick.net #[Panda.Spyware:Cookie/FastClick]

127.0.0.1  media.fastclick.net

127.0.0.1  secure.fastclick.net #[Tenebril.Tracking.Cookie]

127.0.0.1  sp.fastclick.net

127.0.0.1  fastclick.com.edgesuite.net #[a1795.g.akamai.net]

# [Various Adult Dialers]

#

# [Carpediem Group][Wildcard DNS]

127.0.0.1  adsl.carpediem.fr #[DIAL_FEMME.A]

127.0.0.1  dialup.carpediem.fr #[HJTH.AccessMembre]

127.0.0.1  faq.carpediem.fr

127.0.0.1  kit.carpediem.fr #[SiteAdvisor.parisvoyeur.com]

127.0.0.1  10661.kit.carpediem.fr

127.0.0.1  11731.kit.carpediem.fr #[Win32/Dialer.CDDial]

127.0.0.1  16643.kit.carpediem.fr #[HJTH.Carpediem Dialer]

127.0.0.1  live.carpediem.fr

127.0.0.1  live-2.carpediem.fr

127.0.0.1  lsda.carpediem.fr

127.0.0.1  media.carpediem.fr

127.0.0.1  media2.carpediem.fr

127.0.0.1  mehdi.carpediem.fr

127.0.0.1  polyfolie.carpediem.fr

127.0.0.1  popmedia.carpediem.fr

127.0.0.1  public.carpediem.fr

127.0.0.1  secure.carpediem.fr

127.0.0.1  stats.carpediem.fr

127.0.0.1  support.carpediem.fr

127.0.0.1  www.carpediem.fr

127.0.0.1  www.dingophone.com

127.0.0.1  dialer.eurodialer.com #[Win32/TrojanDropper.Agent.ACS]

127.0.0.1  www.eurodialer.com

127.0.0.1  media.eurolive.com

127.0.0.1  promo.eurolive.com

127.0.0.1  www.eurolive.com

127.0.0.1  statsv3.gaycash.com

127.0.0.1  ipigz.com

127.0.0.1  www.ipigz.com

127.0.0.1  16755.dialer.lincassa.com #[HJTH.Carpediem Dialer]

127.0.0.1  17067.dialer.lincassa.com

127.0.0.1  20429.dialer.lincassa.com #[Win32/Dialer.CDDial]

127.0.0.1  21294.dialer.lincassa.com

127.0.0.1  www.monliveshow.com

127.0.0.1  htmldialer.parisvoyeur.com

127.0.0.1  www.parisvoyeur.com #[Dialer.Pornosex][Trojan.Win32.Dialer.eg]

127.0.0.1  www.sfondatanale.com

127.0.0.1  dialer.sponsorhispano.com #[Win32/Dialer.CDDial]

127.0.0.1  carpediem.sv2.biz

127.0.0.1  dvdmanager-203.sv2.biz

127.0.0.1  ktu.sv2.biz

127.0.0.1  pub.sv2.biz

# [Coulomb Ltd Group][eTrust.Coulomb Dialer]

127.0.0.1  www.globalcharge.com

127.0.0.1  dload.ipbill.com #[MVPS.Criteria][Win32/TrojanDownloader.Small.ON]

127.0.0.1  pornsites.ipbill.com

127.0.0.1  soldproxy1.ipbill.com

127.0.0.1  tracking.ipbill.com

127.0.0.1  www.pornsexpalace.com

127.0.0.1  adm.gw.premiumbilling.com

127.0.0.1  gw.premiumbilling.com

127.0.0.1  www.premiumbilling.com

127.0.0.1  www.smssexpalace.com

# [Electronic Group Interactive]

127.0.0.1  093qpeuqpmz6ebfa.com #[Trojan.TrustedZone]

127.0.0.1  0texkax7c6hzuidk.com #[usa-scripts.downloadv3.com]

127.0.0.1  www.1qiq0okzb7hcb3xr.com #[scripts.dlv4.com]

127.0.0.1  www.0texkax7c6hzuidk.com

127.0.0.1  www.02kmky1xgzbmsdfx.com

127.0.0.1  api.aveno.net

127.0.0.1  em.aveno.net

127.0.0.1  pics.aveno.net

127.0.0.1  secure.aveno.net

127.0.0.1  cash-explorer.com

127.0.0.1  www.cash-explorer.com

127.0.0.1  es6-scripts.dlv4.com #[Win32/P2E]

127.0.0.1  scripts.dlv4.com #[Backdoor.Win32.PcClient.pb]

127.0.0.1  us2-scripts.dlv4.com

127.0.0.1  www.dvd-explorer.com

127.0.0.1  www.egisupport.com

127.0.0.1  mirrors.egwn.net

127.0.0.1  pubvideo3.egwn.net

127.0.0.1  server02.us2.egwn.net

127.0.0.1  static.egwn.net

127.0.0.1  www.e-group.org

127.0.0.1  support.electronic-group.com

127.0.0.1  www.electronic-group.com #[Win32.Wintrim.U]

127.0.0.1  legal.electronic-group.com

127.0.0.1  ispdialer.com #[Parasite.ACXInstall]

127.0.0.1  www.ispdialer.com

127.0.0.1  es6-scripts.nccgateway.com

127.0.0.1  access.rapid-pass.net #[network.nocreditcard.com]

127.0.0.1  help.rapid-pass.net

127.0.0.1  media.rapid-pass.net #[SunBelt.Rapid-pass.net]

127.0.0.1  public-contentv4.rapid-pass.net

127.0.0.1  www.rapid-pass.net #[Dialer.InstantAccess][DIAL_NSTANTXS.A]

127.0.0.1  spyware-secure.com

127.0.0.1  www.spyware-secure.com #[Symantec.SpywareSecure]

127.0.0.1  www.traffic-converter.com

127.0.0.1  us2-www.5zgmu7o20kt5d8yq.com

127.0.0.1  www.5zgmu7o20kt5d8yq.com

127.0.0.1  usa-network.video-party.com #[HTMLAccess Class]

127.0.0.1  www.videoparty.com

# [PHILLIPS BRENT][NOCREDITCARD NETWORK S.L]

127.0.0.1  www.123ticket.com

127.0.0.1  www.chargemelater.com

127.0.0.1  banners.nocreditcardgay.com

127.0.0.1  instant-access.nocreditcardgay.com

127.0.0.1  network.nocreditcardgay.com

127.0.0.1  usa-network.nocreditcardgay.com

127.0.0.1  www.nocreditcardgay.com

127.0.0.1  nocreditcard.com #[TROJ_ISBAR.A]

127.0.0.1  banners.nocreditcard.com

127.0.0.1  fr4-network.nocreditcard.com

127.0.0.1  instant-access.nocreditcard.com #[Parasite.MagicControl]

127.0.0.1  network.nocreditcard.com

127.0.0.1  usa-network.nocreditcard.com

127.0.0.1  webmaster.nocreditcard.com

127.0.0.1  www.one2one.com #[One2One Viewer]

127.0.0.1  cc.sex-explorer.com

127.0.0.1  contents.sex-explorer.com

127.0.0.1  static.contents.sex-explorer.com

127.0.0.1  freecc.sex-explorer.com

127.0.0.1  instant-access.sex-explorer.com

127.0.0.1  live.sex-explorer.com #[McAfee.Adware-EGroup]

127.0.0.1  lives.sex-explorer.com

127.0.0.1  ncc.sex-explorer.com

127.0.0.1  static.sex-explorer.com

127.0.0.1  trial.sex-explorer.com

127.0.0.1  xxx.sex-explorer.com

127.0.0.1  www.sex-explorer.com

127.0.0.1  network.strip-player.com

127.0.0.1  stripplayer.com #[Parasite.StripPlayer]

127.0.0.1  network.stripplayer.com

127.0.0.1  webmaster.stripplayer.com

127.0.0.1  www.strip-player.com

# [Live Interactive S.R.L.][Adultocheck S.L][Global Business Premium Partnership]

127.0.0.1  banners.amoestecuzinho.com

127.0.0.1  banners.animeerotico.com

127.0.0.1  banners.bebadasousadas.com

127.0.0.1  banners.chicashumedas.com

127.0.0.1  banners.colegialasdesvirgadas.com

127.0.0.1  banners.debuteamador.com

127.0.0.1  galleries.ebonyempire.com

127.0.0.1  banners.espiasadictos.com

127.0.0.1  banners.fuckingdrunks.com

127.0.0.1  galleries.fuckingdrunks.com

127.0.0.1  error404.gratishost.com

127.0.0.1  banners.imperioanal.com

127.0.0.1  banners.lesbianascerdas.com

127.0.0.1  www.mildescargas.com #[HJTH.SponsorAdulto Dialer]

127.0.0.1  banners.mulherescomcigarros.com

127.0.0.1  galleries.negrasporno.com

127.0.0.1  www.negrasporno.com

127.0.0.1  banners.orgiasreales.com

127.0.0.1  adult.phoneaccess.com

127.0.0.1  ad1.banners.phoneaccess.com

127.0.0.1  exit.phoneaccess.com

127.0.0.1  iframe.phoneaccess.com

127.0.0.1  ipdata.phoneaccess.com #[HJTH.Dialer.NBQ]

127.0.0.1  promos.phoneaccess.com

127.0.0.1  banners.paixaogay.com

127.0.0.1  banners.paixaoasiatica.com

127.0.0.1  banners.passeilimitado.com

127.0.0.1  banners.pollasde30cm.com

127.0.0.1  banners.prazerlesbico.com

127.0.0.1  banners.reginepompinare.com

127.0.0.1  banners.sandralatina.com

127.0.0.1  galleries.schwarzesimperium.com

127.0.0.1  banners.showdeinfieles.com

127.0.0.1  banners.showdeinfieis.com

127.0.0.1  banners.solocazzienormi.com

127.0.0.1  banners.sotransexuais.com

127.0.0.1  banners.spacash.com

127.0.0.1  banners2.spacash.com

127.0.0.1  banners3.spacash.com

127.0.0.1  cams.spacash.com

127.0.0.1  cdnimg01.spacash.com

127.0.0.1  cdnimg02.spacash.com

127.0.0.1  dvdcovers.spacash.com

127.0.0.1  exit.spacash.com

127.0.0.1  freesites.spacash.com

127.0.0.1  ip.spacash.com #[HJTH.SponsorAdulto Dialer]

127.0.0.1  layers.spacash.com

127.0.0.1  movies.spacash.com

127.0.0.1  notice.spacash.com

127.0.0.1  peel.spacash.com

127.0.0.1  rotations.spacash.com

127.0.0.1  www.spacash.com

127.0.0.1  sponsoradulto.com

127.0.0.1  banners.sponsoradulto.com

127.0.0.1  banners2.sponsoradulto.com

127.0.0.1  ip.sponsoradulto.com #[Trojan.Win32.Dialer.fu]

127.0.0.1  www.sponsoradulto.com #[HJTH.SponsorAdulto Dialer]

127.0.0.1  ip.sponsorix.com

127.0.0.1  banners.taxindecente.com

127.0.0.1  banners.teenfunzone.com

127.0.0.1  galleries.teenfunzone.com

127.0.0.1  banners.vivilatina.com

127.0.0.1  www.webspacemania.com #[SiteAdvisor.webspacemania.com]

# [Madison Administration]

127.0.0.1  7adpower.com #[ADW_ADPOWER.D]

127.0.0.1  www.7adpower.com #[HJTH.Svezia.Dialer]

# [New Harmony Enterprises]

127.0.0.1  mediacharger.com

127.0.0.1  devfast.mediacharger.com

127.0.0.1  download.mediacharger.com

127.0.0.1  fast.mediacharger.com #[MediaCharger/MoviePlace]

127.0.0.1  www.pml.mediacharger.com

127.0.0.1  www.movienetworks.com

127.0.0.1  members.swimsuitnetwork.com #[Panda.Adware:swimsuitnetwork]

127.0.0.1  www.swimsuitnetwork.com #[SwimSuitNetwork Direct]

# [World Telecom]

127.0.0.1  download.energy-factor.com #[HJTH.Trojan.Downloader.Small]

# [End Adult Dialers]

#

# [V3servers-net][AS28753][212.95.58.0 - 212.95.58.255]

127.0.0.1  berusimcom.com

127.0.0.1  rediropencom.com #[Google.Warning]

# [Vdhost Ltd][AS35057][78.157.142.0 - 78.157.142.255]

127.0.0.1  files.as-pro-xp-download.com

127.0.0.1  iascannerpro.com

# [Vdhost Ltd][78.157.143.128 - 78.157.143.255]

127.0.0.1  besthardporn.com

127.0.0.1  cokiran.com

127.0.0.1  go-scan-pro.com

127.0.0.1  ia-scanner-pro.com

127.0.0.1  ia-scannerpro.com

# [Velcom / Teleglobe][AS30407][64.86.16.0 - 64.86.17.255]

127.0.0.1  av4best.net

127.0.0.1  cometodady.com

127.0.0.1  cometodady.net

127.0.0.1  fra22.net

127.0.0.1  ideascore.biz

127.0.0.1  mysuperviser.com

127.0.0.1  mysupervisor.net

127.0.0.1  nailcash.com

127.0.0.1  payvirusmelt.com

127.0.0.1  prestotunerst.cn

127.0.0.1  tdncgo2009.com

127.0.0.1  topmedicine.info

127.0.0.1  trdatasft.com

127.0.0.1  updvms.cn

127.0.0.1  updvmfnow.cn

127.0.0.1  virusalarmpro.com

127.0.0.1  pay1.virusalarmpro.com

127.0.0.1  virusdoctor-online.com

127.0.0.1  www.virusdoctor-online.com

127.0.0.1  virusmelt.com

127.0.0.1  virussweeper-scan.net

127.0.0.1  vmeltonline.com

127.0.0.1  vmfastscanner.com

# [Velocity Networks][66.102.128.0 - 66.102.143.255]

127.0.0.1  www.idealgamebar.com

127.0.0.1  ads.xbiz.com

127.0.0.1  engine.xbiz.com

127.0.0.1  exchange.xbiz.com

# [Vendare Group][Navigation Catalyst Systems]

127.0.0.1  www.new.net #[McAfee.Adware.NDotNet][ADW_NEWNET.A]

127.0.0.1  trafficmarketplace.com #[SunBelt.TrafficMarketplace]

127.0.0.1  sp.trafficmarketplace.com

127.0.0.1  www.trafficmarketplace.com

127.0.0.1  trafficmp.com #[Ad-Aware.Tracking.Cookie][Google.Diagnostic]

127.0.0.1  cache.trafficmp.com #[SpySweeper.Spy.Cookie][p.mii.instacontent.net]

127.0.0.1  cms.trafficmp.com

# [Vendare Group][AS36468][216.108.240.0 - 216.108.255.255]

127.0.0.1  clicks.emarketmakers.com

127.0.0.1  ad.trafficmp.com #[eTrust.Tracking.Cookie]

127.0.0.1  am.trafficmp.com

127.0.0.1  images.trafficmp.com #[SunBelt.Trafficmp.com]

127.0.0.1  t.trafficmp.com #[McAfee.Cookie-Trafficmp]

127.0.0.1  xp.trafficmp.com

# [Ventrex][AS48856][95.129.144.0 - 95.129.145.255]

127.0.0.1  dasretokfin.com #[Google.Diagnostic]

127.0.0.1  gcounter.cn #[Google.Diagnostic]

127.0.0.1  hostads.cn

127.0.0.1  tubeee.com #[Fake.PornTube.Codec]

# [VeriCenter / Coremetrics][209.235.28.0 - 209.235.28.255]

127.0.0.1  cm.gamelink.com

127.0.0.1  tptc.upromise.com #[WebBug.eluminate]

127.0.0.1  www9.swansonvitamins.com

# [VeriCenter][AS33502][216.205.80.0 - 216.205.95.255]

127.0.0.1  cmss.adameve.com

127.0.0.1  www3.bloomingdales.com

127.0.0.1  core.bluefly.com

127.0.0.1  www9.collectiblestoday.com #[WebBug.eluminate]

127.0.0.1  cmd.customink.com

127.0.0.1  rpt.footlocker.com

127.0.0.1  1901.nordstrom.com

127.0.0.1  sd.play.com

127.0.0.1  www25.victoriassecret.com #[WebBug.eluminate]

127.0.0.1  w30.yourmusic.com

# [Versimedia Inc][Webmetro]

127.0.0.1  client.roiadtracker.com

127.0.0.1  toolbar.versimedia.com #[eTrust.MegaToolbar]

# [Vibrant Media]

127.0.0.1  intellitxt.com

127.0.0.1  de.intellitxt.com

127.0.0.1  uk.intellitxt.com

127.0.0.1  us.intellitxt.com

127.0.0.1  www.intellitxt.com

127.0.0.1  atspace.de.intellitxt.com

127.0.0.1  awardspace.de.intellitxt.com

127.0.0.1  chip.de.intellitxt.com

127.0.0.1  computerbase.de.intellitxt.com

127.0.0.1  computerhilfen.de.intellitxt.com

127.0.0.1  computerwoche.de.intellitxt.com

127.0.0.1  digital-world.de.intellitxt.com

127.0.0.1  ghacks.de.intellitxt.com

127.0.0.1  golem.de.intellitxt.com

127.0.0.1  gulli.de.intellitxt.com

127.0.0.1  images.intellitxt.com

127.0.0.1  inquake.de.intellitxt.com

127.0.0.1  loady.de.intellitxt.com

127.0.0.1  macwelt.de.intellitxt.com

127.0.0.1  msmobiles.de.intellitxt.com

127.0.0.1  pcwelt.de.intellitxt.com

127.0.0.1  php-mag.de.intellitxt.com

127.0.0.1  php-magnet.de.intellitxt.com

127.0.0.1  softonic.de.intellitxt.com

127.0.0.1  supportnet.de.intellitxt.com

127.0.0.1  tecchannel.de.intellitxt.com

127.0.0.1  winfuture.de.intellitxt.com

127.0.0.1  actualite-de-stars.fr.intellitxt.com

127.0.0.1  froggytest.fr.intellitxt.com

127.0.0.1  generation-nt.fr.intellitxt.com

127.0.0.1  hiphopgalaxy.fr.intellitxt.com

127.0.0.1  infos-du-net.fr.intellitxt.com

127.0.0.1  memoclic.fr.intellitxt.com

127.0.0.1  neteco.fr.intellitxt.com

127.0.0.1  pcinpact.fr.intellitxt.com

127.0.0.1  pc-infopratique.fr.intellitxt.com

127.0.0.1  presence-pc.fr.intellitxt.com

127.0.0.1  programme-tv.fr.intellitxt.com

127.0.0.1  reseaux-telecoms.fr.intellitxt.com

127.0.0.1  tomshardware.fr.intellitxt.com

127.0.0.1  zataz.fr.intellitxt.com

127.0.0.1  techgadgets.in.intellitxt.com

127.0.0.1  telefonino.it.intellitxt.com

127.0.0.1  techworld.nl.intellitxt.com

127.0.0.1  topdownloads.nl.intellitxt.com

127.0.0.1  webwereld.nl.intellitxt.com

127.0.0.1  compulenta.ru.intellitxt.com

127.0.0.1  rbmods.se.intellitxt.com

127.0.0.1  tomshardware.se.intellitxt.com

127.0.0.1  4thegame.uk.intellitxt.com

127.0.0.1  bink.uk.intellitxt.com

127.0.0.1  bit-tech.uk.intellitxt.com

127.0.0.1  biosmagazine.uk.intellitxt.com

127.0.0.1  cbronline.uk.intellitxt.com

127.0.0.1  computeractive.uk.intellitxt.com

127.0.0.1  computing.uk.intellitxt.com

127.0.0.1  contactmusic.uk.intellitxt.com

127.0.0.1  digit-life.uk.intellitxt.com

127.0.0.1  efluxmedia.uk.intellitxt.com

127.0.0.1  femalefirst.uk.intellitxt.com

127.0.0.1  ferrago.uk.intellitxt.com

127.0.0.1  footymad.uk.intellitxt.com

127.0.0.1  freedownloadcenter.uk.intellitxt.com

127.0.0.1  freedownloadmanager.uk.intellitxt.com

127.0.0.1  freewarepalm.uk.intellitxt.com

127.0.0.1  gamesindustry.uk.intellitxt.com

127.0.0.1  hexus.uk.intellitxt.com

127.0.0.1  itpro.uk.intellitxt.com

127.0.0.1  itreviews.uk.intellitxt.com

127.0.0.1  knowyourmobile.uk.intellitxt.com

127.0.0.1  letsgodigital.uk.intellitxt.com

127.0.0.1  lse.uk.intellitxt.com

127.0.0.1  mad.uk.intellitxt.com

127.0.0.1  mobilecomputermag.uk.intellitxt.com

127.0.0.1  monstersandcritics.uk.intellitxt.com

127.0.0.1  newlaunches.uk.intellitxt.com

127.0.0.1  nodevice.uk.intellitxt.com

127.0.0.1  ok.uk.intellitxt.com

127.0.0.1  pcadvisor.uk.intellitxt.com

127.0.0.1  pcpro.uk.intellitxt.com

127.0.0.1  pcw.uk.intellitxt.com

127.0.0.1  physorg.uk.intellitxt.com

127.0.0.1  playfuls.uk.intellitxt.com

127.0.0.1  pocketlint.uk.intellitxt.com

127.0.0.1  sharecast.uk.intellitxt.com

127.0.0.1  softpedia.uk.intellitxt.com

127.0.0.1  squarefootball.uk.intellitxt.com

127.0.0.1  tcmagazine.uk.intellitxt.com

127.0.0.1  teamtalk.uk.intellitxt.com

127.0.0.1  thehollywoodnews.uk.intellitxt.com

127.0.0.1  theinquirer.uk.intellitxt.com

127.0.0.1  thetechherald.uk.intellitxt.com

127.0.0.1  vitalfootball.uk.intellitxt.com

127.0.0.1  vnunet.uk.intellitxt.com

127.0.0.1  webuser.uk.intellitxt.com

127.0.0.1  wi-fitechnology.uk.intellitxt.com

127.0.0.1  worldtravelguide.uk.intellitxt.com

127.0.0.1  1src.us.intellitxt.com

127.0.0.1  1up.us.intellitxt.com

127.0.0.1  247wallstreet.us.intellitxt.com

127.0.0.1  2snaps.us.intellitxt.com

127.0.0.1  2spyware.us.intellitxt.com

127.0.0.1  24wrestling.us.intellitxt.com

127.0.0.1  411mania.us.intellitxt.com

127.0.0.1  4x4review.us.intellitxt.com

127.0.0.1  4w-wrestling.us.intellitxt.com

127.0.0.1  5starsupport.us.intellitxt.com

127.0.0.1  9down.us.intellitxt.com

127.0.0.1  able2know.us.intellitxt.com

127.0.0.1  accuweather.us.intellitxt.com

127.0.0.1  aceshowbiz.us.intellitxt.com

127.0.0.1  aclasscelebs.us.intellitxt.com

127.0.0.1  activewin.us.intellitxt.com

127.0.0.1  actionscript.us.intellitxt.com

127.0.0.1  advancedmn.us.intellitxt.com

127.0.0.1  adwarereport.us.intellitxt.com

127.0.0.1  afterdawn.us.intellitxt.com

127.0.0.1  afraidtoask.us.intellitxt.com

127.0.0.1  ajc.us.intellitxt.com

127.0.0.1  akihabaranews.us.intellitxt.com

127.0.0.1  albinoblacksheep.us.intellitxt.com

127.0.0.1  alive.us.intellitxt.com

127.0.0.1  allcarselectric.us.intellitxt.com

127.0.0.1  allgetaways.us.intellitxt.com

127.0.0.1  allhiphop.us.intellitxt.com

127.0.0.1  allrefer.us.intellitxt.com

127.0.0.1  amdzone.us.intellitxt.com

127.0.0.1  americanmedia.us.intellitxt.com

127.0.0.1  andpop.us.intellitxt.com

127.0.0.1  answerbag.us.intellitxt.com

127.0.0.1  antimusic.us.intellitxt.com

127.0.0.1  anythinghollywood.us.intellitxt.com

127.0.0.1  appscout.us.intellitxt.com

127.0.0.1  artistdirect.us.intellitxt.com #[server down?]

127.0.0.1  askmen.us.intellitxt.com #[server down?]

127.0.0.1  askmen2.us.intellitxt.com

127.0.0.1  aquasoft.us.intellitxt.com

127.0.0.1  architecturaldesigns.us.intellitxt.com

127.0.0.1  autoforums.us.intellitxt.com

127.0.0.1  autoforumuniverse.us.intellitxt.com

127.0.0.1  autospies.us.intellitxt.com

127.0.0.1  away.us.intellitxt.com

127.0.0.1  aximsite.us.intellitxt.com

127.0.0.1  b5media.us.intellitxt.com

127.0.0.1  backseatcuddler.us.intellitxt.com

127.0.0.1  bargainpda.us.intellitxt.com

127.0.0.1  baselinemag.us.intellitxt.com

127.0.0.1  bastardly.us.intellitxt.com

127.0.0.1  beautyden.us.intellitxt.com

127.0.0.1  beliefnet.us.intellitxt.com

127.0.0.1  betanews.us.intellitxt.com

127.0.0.1  beyondhollywood.us.intellitxt.com

127.0.0.1  bigsoccer.us.intellitxt.com

127.0.0.1  bittenandbound.us.intellitxt.com

127.0.0.1  blabbermouth.us.intellitxt.com

127.0.0.1  blastro.us.intellitxt.com

127.0.0.1  bleepingcomputer.us.intellitxt.com

127.0.0.1  bluechillies.us.intellitxt.com

127.0.0.1  boardreader.us.intellitxt.com

127.0.0.1  bootdaily.us.intellitxt.com

127.0.0.1  boxingscene.us.intellitxt.com

127.0.0.1  boxofficeprophets.us.intellitxt.com

127.0.0.1  bradpittnow.us.intellitxt.com

127.0.0.1  bricksandstonesgossip.us.intellitxt.com

127.0.0.1  britneyexperts.us.intellitxt.com

127.0.0.1  brothersoft.us.intellitxt.com

127.0.0.1  bumpshack.us.intellitxt.com

127.0.0.1  businessknowhow.us.intellitxt.com

127.0.0.1  buzzfoto.us.intellitxt.com

127.0.0.1  buzzhumor.us.intellitxt.com

127.0.0.1  bolt.us.intellitxt.com

127.0.0.1  canmag.us.intellitxt.com

127.0.0.1  car-stuff.us.intellitxt.com

127.0.0.1  cdreviews.us.intellitxt.com

127.0.0.1  cdrinfo.us.intellitxt.com

127.0.0.1  cdrom-guide.us.intellitxt.com

127.0.0.1  celebrity-babies.us.intellitxt.com

127.0.0.1  celebrityhack.us.intellitxt.com

127.0.0.1  celebridiot.us.intellitxt.com

127.0.0.1  celebritynation.us.intellitxt.com

127.0.0.1  celebrity-rightpundits.us.intellitxt.com

127.0.0.1  celebritysmackblog.us.intellitxt.com

127.0.0.1  celebscentral.us.intellitxt.com

127.0.0.1  celebslam.us.intellitxt.com

127.0.0.1  celebrity-gossip.us.intellitxt.com

127.0.0.1  celebritypwn.us.intellitxt.com

127.0.0.1  celebritywonder.us.intellitxt.com

127.0.0.1  channelinsider.us.intellitxt.com

127.0.0.1  cheatcc.us.intellitxt.com

127.0.0.1  cheatingdome.us.intellitxt.com

127.0.0.1  cmp.us.intellitxt.com

127.0.0.1  cnet.us.intellitxt.com

127.0.0.1  collegefootballnews.us.intellitxt.com

127.0.0.1  comicbookresources.us.intellitxt.com

127.0.0.1  comingsoon.us.intellitxt.com

127.0.0.1  complex.us.intellitxt.com

127.0.0.1  compnet.us.intellitxt.com

127.0.0.1  consumerreview.us.intellitxt.com

127.0.0.1  cooksrecipes.us.intellitxt.com

127.0.0.1  cooltechzone.us.intellitxt.com

127.0.0.1  countryweekly.us.intellitxt.com

127.0.0.1  courierpostonline.us.intellitxt.com

127.0.0.1  coxtv.us.intellitxt.com

127.0.0.1  crmbuyer.us.intellitxt.com

127.0.0.1  csharpcorner.us.intellitxt.com

127.0.0.1  csnation.us.intellitxt.com

127.0.0.1  ctv.us.intellitxt.com

127.0.0.1  dabcc.us.intellitxt.com

127.0.0.1  dailystab.us.intellitxt.com

127.0.0.1  damnimcute.us.intellitxt.com

127.0.0.1  danasdirt.us.intellitxt.com

127.0.0.1  daniweb.us.intellitxt.com

127.0.0.1  darkhorizons.us.intellitxt.com

127.0.0.1  darlamack.us.intellitxt.com

127.0.0.1  dbtechno.us.intellitxt.com

127.0.0.1  demonews.us.intellitxt.com

127.0.0.1  denguru.us.intellitxt.com

127.0.0.1  derekhail.us.intellitxt.com

127.0.0.1  devshed.us.intellitxt.com

127.0.0.1  digitalmediaonline.us.intellitxt.com

127.0.0.1  digitalmediawire.us.intellitxt.com

127.0.0.1  digitaltrends.us.intellitxt.com

127.0.0.1  dlmag.us.intellitxt.com

127.0.0.1  dnps.us.intellitxt.com

127.0.0.1  drdobbs.us.intellitxt.com

127.0.0.1  driverguide.us.intellitxt.com

127.0.0.1  drugscom.us.intellitxt.com

127.0.0.1  eastsideboxing.us.intellitxt.com

127.0.0.1  ecanadanow.us.intellitxt.com

127.0.0.1  ecommercetimes.us.intellitxt.com

127.0.0.1  eepn.us.intellitxt.com

127.0.0.1  efanguide.us.intellitxt.com

127.0.0.1  ehomeupgrade.us.intellitxt.com

127.0.0.1  ehow.us.intellitxt.com

127.0.0.1  electronista.us.intellitxt.com

127.0.0.1  emaxhealth.us.intellitxt.com

127.0.0.1  encyclocentral.us.intellitxt.com

127.0.0.1  entrepreneur.us.intellitxt.com

127.0.0.1  eontarionow.us.intellitxt.com

127.0.0.1  estelle.us.intellitxt.com

127.0.0.1  eten-users.us.intellitxt.com

127.0.0.1  eweek.us.intellitxt.com

127.0.0.1  examnotes.us.intellitxt.com

127.0.0.1  excite.us.intellitxt.com

127.0.0.1  experts.us.intellitxt.com

127.0.0.1  expertvillage.us.intellitxt.com

127.0.0.1  extntechnologies.us.intellitxt.com

127.0.0.1  extremetech.us.intellitxt.com

127.0.0.1  eztracks.us.intellitxt.com

127.0.0.1  fangoria.us.intellitxt.com

127.0.0.1  faqts.us.intellitxt.com

127.0.0.1  fatbackandcollards.us.intellitxt.com

127.0.0.1  fatbackmedia.us.intellitxt.com

127.0.0.1  fatfreekitchen.us.intellitxt.com

127.0.0.1  fhmonline.us.intellitxt.com

127.0.0.1  filedudes.us.intellitxt.com

127.0.0.1  filmstew.us.intellitxt.com

127.0.0.1  filmthreat.us.intellitxt.com

127.0.0.1  firingsquad.us.intellitxt.com

127.0.0.1  fixya.us.intellitxt.com

127.0.0.1  flashmagazine.us.intellitxt.com

127.0.0.1  flexbeta.us.intellitxt.com

127.0.0.1  forbes.us.intellitxt.com

127.0.0.1  fortunecity.us.intellitxt.com

127.0.0.1  foxnews.us.intellitxt.com

127.0.0.1  foxtv.us.intellitxt.com

127.0.0.1  freecodecs.us.intellitxt.com

127.0.0.1  freewarefiles.us.intellitxt.com

127.0.0.1  freewarehome.us.intellitxt.com

127.0.0.1  friendtest.us.intellitxt.com

127.0.0.1  futurelooks.us.intellitxt.com

127.0.0.1  g2.us.intellitxt.com

127.0.0.1  g3.us.intellitxt.com

127.0.0.1  g4.us.intellitxt.com

127.0.0.1  g5.us.intellitxt.com

127.0.0.1  galleryoftheabsurd.us.intellitxt.com

127.0.0.1  gamedev.us.intellitxt.com

127.0.0.1  gamesradar.us.intellitxt.com

127.0.0.1  gamerstemple.us.intellitxt.com

127.0.0.1  gannettbroadcast.us.intellitxt.com

127.0.0.1  gabsmash.us.intellitxt.com

127.0.0.1  geek.us.intellitxt.com

127.0.0.1  geekstogo.us.intellitxt.com

127.0.0.1  givememyremote.us.intellitxt.com

127.0.0.1  gonintendo.us.intellitxt.com

127.0.0.1  govpro.us.intellitxt.com

127.0.0.1  graytv.us.intellitxt.com

127.0.0.1  gsmarena.us.intellitxt.com

127.0.0.1  gtmedia.us.intellitxt.com

127.0.0.1  gtrforums.us.intellitxt.com

127.0.0.1  guru3d.us.intellitxt.com

127.0.0.1  hackedgadgets.us.intellitxt.com

127.0.0.1  hairboutique.us.intellitxt.com

127.0.0.1  hardcoreware.us.intellitxt.com

127.0.0.1  hardforum.us.intellitxt.com

127.0.0.1  hardocp.us.intellitxt.com

127.0.0.1  hardwareanalysis.us.intellitxt.com

127.0.0.1  hardwaregeeks.us.intellitxt.com

127.0.0.1  hardwarezone.us.intellitxt.com

127.0.0.1  harmony-central.us.intellitxt.com

127.0.0.1  highdefforum.us.intellitxt.com

127.0.0.1  hiphopdx.us.intellitxt.com

127.0.0.1  hitsquad.us.intellitxt.com

127.0.0.1  hollyrude.us.intellitxt.com

127.0.0.1  hollywood.us.intellitxt.com

127.0.0.1  hollywoodbackwash.us.intellitxt.com

127.0.0.1  hollywoodtuna.us.intellitxt.com

127.0.0.1  hometheaterhifi.us.intellitxt.com

127.0.0.1  hondahookup.us.intellitxt.com

127.0.0.1  hoopsvibe.us.intellitxt.com

127.0.0.1  hoopsworld.us.intellitxt.com

127.0.0.1  hoovers.us.intellitxt.com

127.0.0.1  hostboard.us.intellitxt.com

127.0.0.1  hothardware.us.intellitxt.com

127.0.0.1  hotmommagossip.us.intellitxt.com

127.0.0.1  hotonlinenews.us.intellitxt.com

127.0.0.1  howardchui.us.intellitxt.com

127.0.0.1  hq-celebrity.us.intellitxt.com

127.0.0.1  htmlcenter.us.intellitxt.com

127.0.0.1  huliq.us.intellitxt.com

127.0.0.1  i4u.us.intellitxt.com

127.0.0.1  iamnotageek.us.intellitxt.com

127.0.0.1  icentric.us.intellitxt.com

127.0.0.1  ichef.us.intellitxt.com

127.0.0.1  icydk.us.intellitxt.com

127.0.0.1  idontlikeyouinthatway.us.intellitxt.com

127.0.0.1  iesb.us.intellitxt.com

127.0.0.1  ign.us.intellitxt.com

127.0.0.1  india-forums.us.intellitxt.com

127.0.0.1  babes.ign.us.intellitxt.com

127.0.0.1  cars.ign.us.intellitxt.com

127.0.0.1  comics.ign.us.intellitxt.com

127.0.0.1  cube.ign.us.intellitxt.com

127.0.0.1  ds.ign.us.intellitxt.com

127.0.0.1  filmforcedvd.ign.us.intellitxt.com

127.0.0.1  gameboy.ign.us.intellitxt.com

127.0.0.1  gear.ign.us.intellitxt.com

127.0.0.1  music.ign.us.intellitxt.com

127.0.0.1  psp.ign.us.intellitxt.com

127.0.0.1  ps2.ign.us.intellitxt.com

127.0.0.1  ps3.ign.us.intellitxt.com

127.0.0.1  psx.ign.us.intellitxt.com

127.0.0.1  revolution.ign.us.intellitxt.com

127.0.0.1  sports.ign.us.intellitxt.com

127.0.0.1  wireless.ign.us.intellitxt.com

127.0.0.1  xbox.ign.us.intellitxt.com

127.0.0.1  xbox360.ign.us.intellitxt.com

127.0.0.1  idm.us.intellitxt.com

127.0.0.1  i-hacked.us.intellitxt.com

127.0.0.1  imnotobsessed.us.intellitxt.com

127.0.0.1  impactwrestling.us.intellitxt.com

127.0.0.1  infopackets.us.intellitxt.com

127.0.0.1  insidemacgames.us.intellitxt.com

127.0.0.1  intermix.us.intellitxt.com

127.0.0.1  intogossip.us.intellitxt.com

127.0.0.1  intomobile.us.intellitxt.com

127.0.0.1  investopedia.us.intellitxt.com

127.0.0.1  ittoolbox.us.intellitxt.com

127.0.0.1  itxt2.us.intellitxt.com

127.0.0.1  itxt3.us.intellitxt.com

127.0.0.1  itworld.us.intellitxt.com

127.0.0.1  ivillage.us.intellitxt.com

127.0.0.1  s.ivillage.us.intellitxt.com

127.0.0.1  iwon.us.intellitxt.com

127.0.0.1  jacksonsun.us.intellitxt.com

127.0.0.1  jakeludington.us.intellitxt.com

127.0.0.1  jkontherun.us.intellitxt.com

127.0.0.1  joblo.us.intellitxt.com

127.0.0.1  juicy-news.blogspot.us.intellitxt.com

127.0.0.1  jupiter.us.intellitxt.com

127.0.0.1  justjared.us.intellitxt.com

127.0.0.1  justmovietrailers.us.intellitxt.com

127.0.0.1  kaboose.us.intellitxt.com

127.0.0.1  killerstartups.us.intellitxt.com

127.0.0.1  knac.us.intellitxt.com

127.0.0.1  laboroflove.us.intellitxt.com

127.0.0.1  laptoplogic.us.intellitxt.com

127.0.0.1  laptopmag.us.intellitxt.com

127.0.0.1  lat34.us.intellitxt.com

127.0.0.1  latinoreview.us.intellitxt.com

127.0.0.1  linuxdevcenter.us.intellitxt.com

127.0.0.1  linuxjournal.us.intellitxt.com

127.0.0.1  lmcd.us.intellitxt.com

127.0.0.1  lockergnome.us.intellitxt.com

127.0.0.1  lohud.us.intellitxt.com

127.0.0.1  longhornblogs.us.intellitxt.com

127.0.0.1  lxer.us.intellitxt.com

127.0.0.1  macdailynews.us.intellitxt.com

127.0.0.1  macnewsworld.us.intellitxt.com

127.0.0.1  macnn.us.intellitxt.com

127.0.0.1  macgamefiles.us.intellitxt.com

127.0.0.1  macmegasite.us.intellitxt.com

127.0.0.1  madpenguin.us.intellitxt.com

127.0.0.1  majorgeeks.us.intellitxt.com

127.0.0.1  makeherup.us.intellitxt.com

127.0.0.1  makeushot.us.intellitxt.com

127.0.0.1  masalatalk.us.intellitxt.com

127.0.0.1  mazdaworld.us.intellitxt.com

127.0.0.1  medicinenet.us.intellitxt.com

127.0.0.1  medindia.us.intellitxt.com

127.0.0.1  memphisrap.us.intellitxt.com

127.0.0.1  meredithtv.us.intellitxt.com

127.0.0.1  methodshop.us.intellitxt.com

127.0.0.1  microsoft-watch.us.intellitxt.com

127.0.0.1  military.us.intellitxt.com

127.0.0.1  mobile9.us.intellitxt.com

127.0.0.1  mobileburn.us.intellitxt.com

127.0.0.1  mobiletechreview.us.intellitxt.com

127.0.0.1  mobilewhack.us.intellitxt.com

127.0.0.1  mobilityguru.us.intellitxt.com

127.0.0.1  mobilitysite.us.intellitxt.com

127.0.0.1  morningstar.us.intellitxt.com

127.0.0.1  moviehole.us.intellitxt.com

127.0.0.1  movie-list.us.intellitxt.com

127.0.0.1  movies.us.intellitxt.com

127.0.0.1  movieweb.us.intellitxt.com

127.0.0.1  msfn.us.intellitxt.com

127.0.0.1  autos.msnbc.us.intellitxt.com

127.0.0.1  business.msnbc.us.intellitxt.com

127.0.0.1  news.msnbc.us.intellitxt.com

127.0.0.1  sports.msnbc.us.intellitxt.com

127.0.0.1  technology.msnbc.us.intellitxt.com

127.0.0.1  travel-and-weather.msnbc.us.intellitxt.com

127.0.0.1  mmafighting.us.intellitxt.com

127.0.0.1  muscleandfitnesshers.us.intellitxt.com

127.0.0.1  mydigitallife.us.intellitxt.com

127.0.0.1  myfavoritegames.us.intellitxt.com

127.0.0.1  nasioc.us.intellitxt.com

127.0.0.1  nationalenquirer.us.intellitxt.com

127.0.0.1  naturalhealth.us.intellitxt.com

127.0.0.1  nbcuniversaltv.us.intellitxt.com

127.0.0.1  neoseeker.us.intellitxt.com

127.0.0.1  neowin.us.intellitxt.com

127.0.0.1  newstoob.us.intellitxt.com

127.0.0.1  ngohq.us.intellitxt.com

127.0.0.1  nihoncar.us.intellitxt.com

127.0.0.1  ninjadude.us.intellitxt.com

127.0.0.1  ntcompatible.us.intellitxt.com

127.0.0.1  obgyn.us.intellitxt.com

127.0.0.1  octools.us.intellitxt.com

127.0.0.1  ocworkbench.us.intellitxt.com

127.0.0.1  officer.us.intellitxt.com

127.0.0.1  onlamp.us.intellitxt.com

127.0.0.1  oocenter.us.intellitxt.com

127.0.0.1  osdir.us.intellitxt.com

127.0.0.1  ostg.us.intellitxt.com

127.0.0.1  outofsightmedia.us.intellitxt.com

127.0.0.1  outsidethebeltway.us.intellitxt.com

127.0.0.1  overclockersonline.us.intellitxt.com

127.0.0.1  overthelimit.us.intellitxt.com

127.0.0.1  pal-item.us.intellitxt.com

127.0.0.1  pcmag.us.intellitxt.com

127.0.0.1  pcper.us.intellitxt.com

127.0.0.1  pencomputing.us.intellitxt.com

127.0.0.1  penton.us.intellitxt.com

127.0.0.1  perezhilton.us.intellitxt.com

127.0.0.1  physorg.us.intellitxt.com

127.0.0.1  pickmeupnews.us.intellitxt.com

127.0.0.1  pimprig.us.intellitxt.com

127.0.0.1  planetgamecube.us.intellitxt.com

127.0.0.1  planet-source-code.us.intellitxt.com

127.0.0.1  playboy.us.intellitxt.com

127.0.0.1  popdirt.us.intellitxt.com

127.0.0.1  popoholic.us.intellitxt.com

127.0.0.1  popularmechanics.us.intellitxt.com

127.0.0.1  portableplanet.us.intellitxt.com

127.0.0.1  postchronicle.us.intellitxt.com

127.0.0.1  prettyboring.us.intellitxt.com

127.0.0.1  priusonline.us.intellitxt.com

127.0.0.1  profootballweekly.us.intellitxt.com

127.0.0.1  pro-networks.us.intellitxt.com

127.0.0.1  ps3news.us.intellitxt.com

127.0.0.1  punchjump.us.intellitxt.com

127.0.0.1  pwinsider.us.intellitxt.com

127.0.0.1  qj.us.intellitxt.com

127.0.0.1  quickpwn.us.intellitxt.com

127.0.0.1  rawstory.us.intellitxt.com

127.0.0.1  rcpmag.us.intellitxt.com

127.0.0.1  realitytvmagazine.us.intellitxt.com

127.0.0.1  recipegoldmine.us.intellitxt.com

127.0.0.1  recipeland.us.intellitxt.com

127.0.0.1  roadcatalogs.us.intellitxt.com

127.0.0.1  rightpundits.us.intellitxt.com

127.0.0.1  rojakpot.us.intellitxt.com

127.0.0.1  rpg.us.intellitxt.com

127.0.0.1  rx8club.us.intellitxt.com

127.0.0.1  rydium.us.intellitxt.com

127.0.0.1  screensavers.us.intellitxt.com

127.0.0.1  sdcexecs.us.intellitxt.com

127.0.0.1  sdtimes.us.intellitxt.com

127.0.0.1  sheknows.us.intellitxt.com

127.0.0.1  shoutwire.us.intellitxt.com

127.0.0.1  siliconera.us.intellitxt.com

127.0.0.1  slashfilm.us.intellitxt.com

127.0.0.1  slashphone.us.intellitxt.com

127.0.0.1  soccergaming.us.intellitxt.com

127.0.0.1  soft32.us.intellitxt.com

127.0.0.1  softonic.us.intellitxt.com

127.0.0.1  sohh.us.intellitxt.com

127.0.0.1  somethingawful.us.intellitxt.com

127.0.0.1  soundslam.us.intellitxt.com

127.0.0.1  speedguide.us.intellitxt.com

127.0.0.1  speedtv.us.intellitxt.com

127.0.0.1  sprintusers.us.intellitxt.com

127.0.0.1  spymac.us.intellitxt.com

127.0.0.1  sqlservercentral.us.intellitxt.com

127.0.0.1  starpulse.us.intellitxt.com

127.0.0.1  stockgroup.us.intellitxt.com

127.0.0.1  storknet.us.intellitxt.com

127.0.0.1  stupidcelebrities.us.intellitxt.com

127.0.0.1  supercars.us.intellitxt.com

127.0.0.1  superherohype.us.intellitxt.com

127.0.0.1  surebaby.us.intellitxt.com

127.0.0.1  symbianone.us.intellitxt.com

127.0.0.1  symbian-freak.us.intellitxt.com

127.0.0.1  tastefulcelebs.us.intellitxt.com

127.0.0.1  tbohiphop.us.intellitxt.com

127.0.0.1  techeblog.us.intellitxt.com

127.0.0.1  tech-faq.us.intellitxt.com

127.0.0.1  techgage.us.intellitxt.com

127.0.0.1  techguy.us.intellitxt.com

127.0.0.1  techimo.us.intellitxt.com

127.0.0.1  technewsworld.us.intellitxt.com

127.0.0.1  techpowerup.us.intellitxt.com

127.0.0.1  techspot.us.intellitxt.com

127.0.0.1  techsupportforum.us.intellitxt.com

127.0.0.1  tenmagazines.us.intellitxt.com

127.0.0.1  tgdaily.us.intellitxt.com

127.0.0.1  thathappened.us.intellitxt.com

127.0.0.1  theblemish.us.intellitxt.com

127.0.0.1  thebosh.us.intellitxt.com

127.0.0.1  thecarconnection.us.intellitxt.com

127.0.0.1  thecelebritycafe.us.intellitxt.com

127.0.0.1  theeldergeek.us.intellitxt.com

127.0.0.1  thefinalfantasy.us.intellitxt.com

127.0.0.1  theforce.us.intellitxt.com

127.0.0.1  thefutoncritic.us.intellitxt.com

127.0.0.1  thegauntlet.us.intellitxt.com

127.0.0.1  thehollywoodgossip.us.intellitxt.com

127.0.0.1  themanroom.us.intellitxt.com

127.0.0.1  theonenetwork.us.intellitxt.com

127.0.0.1  thesuperficial.us.intellitxt.com

127.0.0.1  thetechlounge.us.intellitxt.com

127.0.0.1  thetechzone.us.intellitxt.com

127.0.0.1  theunwired.us.intellitxt.com

127.0.0.1  thinkcomputers.us.intellitxt.com

127.0.0.1  thoughtsmedia.us.intellitxt.com

127.0.0.1  threadwatch.us.intellitxt.com

127.0.0.1  toms.us.intellitxt.com

127.0.0.1  tomsforumz.us.intellitxt.com

127.0.0.1  tomsnetworking.us.intellitxt.com

127.0.0.1  tothecenter.us.intellitxt.com

127.0.0.1  tradingmarkets.us.intellitxt.com

127.0.0.1  trekweb.us.intellitxt.com

127.0.0.1  tribal.us.intellitxt.com

127.0.0.1  tutorialoutpost.us.intellitxt.com

127.0.0.1  tv-now.us.intellitxt.com

127.0.0.1  tweaktown.us.intellitxt.com

127.0.0.1  twitchguru.us.intellitxt.com

127.0.0.1  ubergizmo.us.intellitxt.com

127.0.0.1  ultimate-guitar.us.intellitxt.com

127.0.0.1  upi.us.intellitxt.com

127.0.0.1  vault9.us.intellitxt.com

127.0.0.1  viaarena.us.intellitxt.com

127.0.0.1  videocodezone.us.intellitxt.com

127.0.0.1  vidnet.us.intellitxt.com

127.0.0.1  vladtv.us.intellitxt.com

127.0.0.1  voodoofiles.us.intellitxt.com

127.0.0.1  warcry.us.intellitxt.com

127.0.0.1  warp2search.us.intellitxt.com

127.0.0.1  wdxcyber.us.intellitxt.com

127.0.0.1  whatthetech.us.intellitxt.com

127.0.0.1  wincert.us.intellitxt.com

127.0.0.1  windowsitpro.us.intellitxt.com

127.0.0.1  winmatrix.us.intellitxt.com

127.0.0.1  winterrowd.us.intellitxt.com

127.0.0.1  wiregirl.us.intellitxt.com

127.0.0.1  wm5fixsite.us.intellitxt.com

127.0.0.1  womensforum.us.intellitxt.com

127.0.0.1  worldnetdaily.us.intellitxt.com

127.0.0.1  wrestling-edge.us.intellitxt.com

127.0.0.1  wwtdd.us.intellitxt.com

127.0.0.1  x17online.us.intellitxt.com

127.0.0.1  xmlpitstop.us.intellitxt.com

127.0.0.1  yeeeah.us.intellitxt.com

127.0.0.1  zatznotfunny.us.intellitxt.com

127.0.0.1  zug.us.intellitxt.com

127.0.0.1  anandtech.us.smarttargetting.com

127.0.0.1  betanews.us.smarttargetting.com

127.0.0.1  xbitlabs.us.smarttargetting.com

127.0.0.1  www.smarttargetting.com

127.0.0.1  vibrantmedia.com

127.0.0.1  itxt.vibrantmedia.com

127.0.0.1  www.vibrantmedia.com

# [vioCLICKS][Xstats, Inc]

127.0.0.1  hit1.vioclicks.com #[SunBelt.VioClicks.com]

127.0.0.1  view1.vioclicks.com

127.0.0.1  www.vioclicks.com #[eTrust.VioClicks]

127.0.0.1  hit1.xstats.com

127.0.0.1  view1.xstats.com

# [Viper BV][213.207.92.0 - 213.207.92.255]

127.0.0.1  www.erodynamics.nl

127.0.0.1  klikbonus.com

127.0.0.1  www.klikbonus.com

127.0.0.1  x0.nl #[dialXS]

127.0.0.1  www.x0.nl #[Win32/Dialer.DialSX]

# [Virtualxs][AS15535][62.129.128.0 - 62.129.159.255]

127.0.0.1  click.dpbill.com

127.0.0.1  click.maxxandmore.com

127.0.0.1  link.maxxandmore.com #[Spamdexing]

127.0.0.1  promo.passioncams.com

127.0.0.1  banners.payserve.com

127.0.0.1  www.psbill.biz

127.0.0.1  banners.teeniemovies.com

# [Virtumundo INC][206.82.176.0 - 206.82.191.255]

127.0.0.1  virtumundo.com #[Panda.Virtumonde.C]

127.0.0.1  my.virtumundo.com

127.0.0.1  privacy.virtumundo.com

127.0.0.1  redirect.virtumundo.com

127.0.0.1  www.virtumundo.com #[TROJ_AGENT.BN]

127.0.0.1  vmadmin.com

127.0.0.1  www.vtarget.com

# [Visionaire][207.182.237.192 - 207.182.237.255]

127.0.0.1  www.broadnetsoftware.com

# [Visionaire][64.93.77.192 - 64.93.77.255]

127.0.0.1  www.asn.com

127.0.0.1  www.broadspring.com

127.0.0.1  www.flashgamejunkie.com

127.0.0.1  www.idealringtones.com

127.0.0.1  instafinder.com #[Adware.InstaFinder]

127.0.0.1  ww2.instafinder.com #[Parasite.MegaSearch]

127.0.0.1  www.instafinder.com #[ADW_INSTAFIND.B]

127.0.0.1  banners.mobilesidewalk.com

# [Vladlen Turkevich][AS41665][213.155.2.32 - 213.155.2.39]

127.0.0.1  googlenews.xorg.pl

127.0.0.1  1.googlenews.xorg.pl

127.0.0.1  2.googlenews.xorg.pl

127.0.0.1  3.googlenews.xorg.pl

127.0.0.1  4.googlenews.xorg.pl

127.0.0.1  5.googlenews.xorg.pl

# [Vladimir Gubarenko][213.155.2.64 - 213.155.2.127]

# [VladZone][Vlad][Spaceland Arcade][JpS Projects][John Ship]

127.0.0.1  www.jps.ms

127.0.0.1  jps.ru

127.0.0.1  images.jps.ru

127.0.0.1  www.jps.ru #[adslim.com]

127.0.0.1  vladzone.com #[Trojan.TrustedZone]

127.0.0.1  www.vladzone.com #[TrojanDropper.Win32.Small.cw]

# [VladZone via JpS Group]

127.0.0.1  www.fet2cash.com

127.0.0.1  code.jcash.biz

127.0.0.1  content.jdial.biz #[Trojan.Nebuler][Win32/Dialer.PornDial.F]

127.0.0.1  www.jdial.biz

# [W3i Holdings LLC]

127.0.0.1  lan.free-lyrics-online.com

127.0.0.1  off.free-lyrics-online.com #[off.freeze.com]

127.0.0.1  rdt.free-lyrics-online.com

127.0.0.1  register.free-lyrics-online.com

127.0.0.1  www.free-lyrics-online.com #[Parked.redirect]

127.0.0.1  ads.freeze.com

127.0.0.1  adman.freeze.com

127.0.0.1  download.freeze.com #[Adware.Win32.Freeze.com]

127.0.0.1  download2.freeze.com #[Tenebril.Freeze.com]

127.0.0.1  img.freeze.com

127.0.0.1  lan.freeze.com

127.0.0.1  my.freeze.com #[SpywareWarrior.adw2005][a798.g.akamai.net]

127.0.0.1  off.freeze.com

127.0.0.1  pops.freeze.com #[GamHelper]

127.0.0.1  register.freeze.com

127.0.0.1  regman.freeze.com

127.0.0.1  search.freeze.com

127.0.0.1  www3.freeze.com #[SiteAdvisor.freeze.com]

127.0.0.1  www.freeze.com #[Rogue/Suspect]

127.0.0.1  www.freezecoldcash.com

127.0.0.1  www.freezemedia.com

127.0.0.1  off.music-oasis.com

127.0.0.1  register.music-oasis.com

127.0.0.1  ringtone.com #[StopBadware.org Report]

127.0.0.1  lan.ringtone.com #[lan.freeze.com]

127.0.0.1  rdt2.ringtone.com

127.0.0.1  www.ringtone.com

127.0.0.1  www.risoftsystems.com

127.0.0.1  off.screensaver.com

127.0.0.1  register.screensaver.com #[StopBadware.org Report]

127.0.0.1  rdt.screensaver.com

127.0.0.1  www.screensaver.com #[SiteAdvisor.screensaver.com][a1752.g.akamai.net]

127.0.0.1  off.wallpapers.com

127.0.0.1  www.wallpapers.com

127.0.0.1  www.wallpapervault.com

# [W Net Isp][217.20.175.0 - 217.20.175.127]

127.0.0.1  c.mystat-in.net

127.0.0.1  f2.n1.b.mystat-in.net

127.0.0.1  ___id___.c.mystat-in.net #[Wildcard DNS]

127.0.0.1  011707160008.c.mystat-in.net

127.0.0.1  121807150325.c.mystat-in.net

127.0.0.1  122907224924.c.mystat-in.net

127.0.0.1  061606084448.c.mystat-in.net

127.0.0.1  070806142521.c.mystat-in.net

127.0.0.1  090906042103.c.mystat-in.net

127.0.0.1  092706152958.c.mystat-in.net

127.0.0.1  102106151057.c.mystat-in.net

127.0.0.1  112006133326.c.mystat-in.net

# [Wadach-watzpi-ltd-adsl][62.219.250.64 - 62.219.250.127]

127.0.0.1  actionpooses.com

127.0.0.1  smart-browser.com #[eTrust.SmartBrowser]

127.0.0.1  update.smart-browser.com #[SunBelt.SmartBrowser]

127.0.0.1  www.smart-browser.com #[Adware.SmartBrowser]

# [Wahome dedicated][AS41947][77.91.231.128 - 77.91.231.255]

# [Wahome Colocation][AS41947][92.241.163.0 - 92.241.163.255]

127.0.0.1  aav2008.com

127.0.0.1  download.aav2008.com

127.0.0.1  www.aav2008.com

127.0.0.1  a-a-v-2008.com

127.0.0.1  download.a-a-v-2008.com

127.0.0.1  www.a-a-v-2008.com

127.0.0.1  adv-a-v.com

127.0.0.1  download.adv-a-v.com

127.0.0.1  www.adv-a-v.com

127.0.0.1  sp-preventer.com

127.0.0.1  download.sp-preventer.com #[Win32/Adware.Antivirus2008]

127.0.0.1  www.sp-preventer.com

127.0.0.1  secure.softpaydirect.com

127.0.0.1  secure2.softpaydirect.com

127.0.0.1  uav2008.com

127.0.0.1  download.uav2008.com

127.0.0.1  www.uav2008.com

127.0.0.1  wav2008.com

127.0.0.1  download.wav2008.com

127.0.0.1  www.wav2008.com

127.0.0.1  wi-a-v.com

127.0.0.1  download.wi-a-v.com

127.0.0.1  www.wi-a-v.com

127.0.0.1  winavpro.com

127.0.0.1  download.winavpro.com

127.0.0.1  www.winavpro.com

127.0.0.1  windows-av.com

127.0.0.1  download.windows-av.com

127.0.0.1  www.windows-av.com

# [Wahome Colocation][AS41947][92.241.171.0 - 92.241.171.255]

# [Way Internet][AS13890][216.133.242.224 - 216.133.242.255]

127.0.0.1  trafficads.com

127.0.0.1  www.trafficads.com

# [Way Internet][AS13890][216.133.243.0 - 216.133.243.63]

127.0.0.1  redir.domaingateway.com

127.0.0.1  click.easilyfound.com #[Tenebril.AdTraffic]

127.0.0.1  www.easilyfound.com

127.0.0.1  ai.p.findology.com

127.0.0.1  www.findology.com #[PCTools.ezSearching]

127.0.0.1  click.zipcodez.com

# [Weather Underground]

127.0.0.1  ads-aa.wunderground.com

127.0.0.1  ads3.wunderground.com

127.0.0.1  ads.wunderground.com #[SecuritySpace.WebBug]

127.0.0.1  as5000.wunderground.com

127.0.0.1  server.as5000.com

127.0.0.1  server2.as5000.com

# [Webair Internet][209.200.0.0 - 209.200.63.255]

127.0.0.1  banners.blingbucks.com

127.0.0.1  taf.blingbucks.com

127.0.0.1  ads.partnerlogic.net

127.0.0.1  static.partnerlogic.net

# [Webair Internet][AS27257][67.55.64.0 - 67.55.127.255]

127.0.0.1  admanage.com

127.0.0.1  www.porngalleriesz.com #[Win32/TrojanDownloader.FakeAlert.YV]

127.0.0.1  searchersmart.com #[TR/BHO.rpn]

127.0.0.1  www.tubes4free.org #[Fake.PornTube.Codec]

# [Webair Internet][69.42.64.0 - 69.42.95.255]

127.0.0.1  celebsworldmovs.net

127.0.0.1  geoadserver.com

# [Webair Internet][74.206.224.0 - 74.206.255.255]

127.0.0.1  mynuauz.info

# [Webair Internet][77.245.48.0 - 77.245.63.255]

127.0.0.1  treports.info

# [Webair Internet via BannerCPM]

127.0.0.1  bannercpm.com

127.0.0.1  www.bannercpm.com

127.0.0.1  cpmadz.com

127.0.0.1  www.cpmadz.com #[AdWare.Win32.TrafficSol.e]

127.0.0.1  mycpmads.com #[SunBelt.MyCPMAds Browser Optimizer]

127.0.0.1  www.mycpmads.com

# [Webair Internet via Power Media Interactive]

127.0.0.1  www.ladylust.com

127.0.0.1  www.nudecash.com #[Google.Warning]

127.0.0.1  www.powermediainteractive.com

127.0.0.1  www.smut1000.com

127.0.0.1  www.teenchick.com

# [Webalta][92.241.182.0 - 92.241.182.255]

# [Webazilla][194.187.96.0 - 194.187.99.255]

127.0.0.1  get-vids.com #[Malicious.Links.Codec]

127.0.0.1  www.get-vids.com

127.0.0.1  hanklist.com

127.0.0.1  www.hanklist.com

127.0.0.1  perfectgirls.net

127.0.0.1  www.perfectgirls.net

127.0.0.1  sweetgalleries.net

# [WebaZilla][AS35415][78.140.128.0 - 78.140.191.255]

127.0.0.1  adultcomix.biz

127.0.0.1  free.adultcomix.biz

127.0.0.1  alivegirls.com #[Malicious.Links.Codec]

127.0.0.1  www.alivegirls.com #[SiteAdvisor.alivegirls.com]

127.0.0.1  artcomix.com

127.0.0.1  top.artcomix.com

127.0.0.1  www.artcomix.com

127.0.0.1  bestyourpills.com

127.0.0.1  bigvideoclip.com

127.0.0.1  www.bigvideoclip.com

127.0.0.1  canadian-rxpill.com

127.0.0.1  cartoonpornguide.com

127.0.0.1  free.cartoonpornguide.com

127.0.0.1  www.cartoonpornguide.com

127.0.0.1  dvdhentai.net

127.0.0.1  failedmoons.net #[klikadvertising]

127.0.0.1  gallfree.com #[Trojan.Codec]

127.0.0.1  img.gallfree.com

127.0.0.1  www.gallfree.com

127.0.0.1  genericdrugs.in

127.0.0.1  healthrefill.com #[ScamFraudAlert.Pharmacy]

127.0.0.1  medscompany.org

127.0.0.1  mendrugsshop.com

127.0.0.1  xml.payment-rx.com

127.0.0.1  rx-drugs-support.com

127.0.0.1  theusdrugs.com

127.0.0.1  toon-families.com

127.0.0.1  www.toon-families.com

127.0.0.1  toonfamilies.net

127.0.0.1  www.toonfamilies.net

127.0.0.1  wildmistress.com

127.0.0.1  www.wildmistress.com

127.0.0.1  yx0banners.com

127.0.0.1  www.yx0banners.com

# [Webazilla][88.85.64.0 - 88.85.71.255]

127.0.0.1  www.buy-pharmacy.info #[klikadvertising]

127.0.0.1  www.favourlinks.net

127.0.0.1  flashxxxvideos.com

127.0.0.1  freakingtube.com

127.0.0.1  freeeporntube.com

127.0.0.1  freeesextube.com

127.0.0.1  gosuckfuck.com

127.0.0.1  homo6.com #[Malicious.Links]

127.0.0.1  innocentflowers.com #[Malicious.Links]

127.0.0.1  itseasy.us #[McAfee.Startpage-YBM]

127.0.0.1  moviesocean.com #[Malicious.Links]

127.0.0.1  www.newporntv.com #[Malicious.Links.Codec]

127.0.0.1  ru-biz.com

127.0.0.1  www.ru-biz.com #[klikadvertising]

127.0.0.1  xxxreactor.com

# [Webazilla via Giname Media][Boris Klimov][PR InterMedia]

127.0.0.1  www.annathumbs.com #[privacyHTA.dll]

127.0.0.1  apornmovie.com

127.0.0.1  www.apornmovie.com

127.0.0.1  www.cindythumbs.com #[SiteAdvisor.cindythumbs.com]

127.0.0.1  www.emilythumbs.com

127.0.0.1  www.emmathumbs.com

127.0.0.1  www.hardcore-sex-movies.com #[Trojan.StartPage.L][StartPage-HJ]

127.0.0.1  www.jacobporn.com

127.0.0.1  jessicathumbs.com

127.0.0.1  www.jessicathumbs.com #[Malicious.Links]

127.0.0.1  www.joshuaporn.com

127.0.0.1  www.madisonthumbs.com

127.0.0.1  www.oliviathumbs.com

127.0.0.1  rudesexlinks.com

127.0.0.1  www.rudesexlinks.com

# [Webazilla via PR InterMedia][Robert Naidu][TCN Media]

127.0.0.1  adultvidsonly.com

127.0.0.1  www.adultvidsonly.com

127.0.0.1  chronoclips.com

127.0.0.1  www.chronoclips.com

127.0.0.1  dasistporn.com

127.0.0.1  www.dasistporn.com

127.0.0.1  free3xvids.com

127.0.0.1  www.free3xvids.com

127.0.0.1  freeeepornmovies.com #[MVPS.Criteria]

127.0.0.1  www.freeeepornmovies.com

127.0.0.1  freshpornmpegs.com #[IFrame.Exploit]

127.0.0.1  www.freshpornmpegs.com

127.0.0.1  kylemovies.com

127.0.0.1  www.kylemovies.com

127.0.0.1  lorixmovies.com

127.0.0.1  www.lorixmovies.com

127.0.0.1  masterpornvids.com

127.0.0.1  www.masterpornvids.com

127.0.0.1  megapornmovs.com

127.0.0.1  www.megapornmovs.com

127.0.0.1  megaxvids.com

127.0.0.1  www.megaxvids.com

127.0.0.1  moviesglam.com

127.0.0.1  www.moviesglam.com

127.0.0.1  razerporn.com

127.0.0.1  www.razerporn.com

127.0.0.1  reallyfreemovies.com

127.0.0.1  www.reallyfreemovies.com

127.0.0.1  steelpornmovies.com

127.0.0.1  www.steelpornmovies.com

127.0.0.1  superfreevids.com

127.0.0.1  www.superfreevids.com

127.0.0.1  winpornvids.com #[Trojan.Codec]

127.0.0.1  www.winpornvids.com

127.0.0.1  worldmovieporn.com

127.0.0.1  www.worldmovieporn.com

# [Webazilla via SMP System]

127.0.0.1  chronomovies.com

127.0.0.1  www.chronomovies.com #[Trojan.Codec]

127.0.0.1  fovpornmovies.com

127.0.0.1  www.fovpornmovies.com

127.0.0.1  hvporn.com #[SiteAdvisor.hvporn.com]

127.0.0.1  www.hvporn.com

127.0.0.1  lotsofpornmovies.com

127.0.0.1  www.lotsofpornmovies.com #[Malicious.Links.Codec]

127.0.0.1  pornkingmovies.com

127.0.0.1  www.pornkingmovies.com #[Trojan.Codec]

# [Webazilla][88.85.77.0 - 88.85.77.127]

127.0.0.1  hqpornweb.com

127.0.0.1  www.hqpornweb.com #[Malicious.Links.Codec]

127.0.0.1  www.lemonmov.com #[Malicious.Links]

127.0.0.1  ads.nichepass.com

127.0.0.1  www.worldporn.in

# [Webazilla][88.85.78.0 - 88.85.79.255]

# [Webazilla][88.85.92.0 - 88.85.92.255]

127.0.0.1  herfirstdv.biz #[Malicious.Links.Codec]

127.0.0.1  www.herfirstdv.biz

# [Webazilla via Incomeproject B.v][88.85.92.0 - 88.85.92.255]

127.0.0.1  c.incomeppc.com

127.0.0.1  echo.teasernet.ru

# [WebDevAZ Inc]

127.0.0.1  dl.ezthemes.com #[AdWare.Win32.WebRebates.p]

127.0.0.1  dl1.ezthemes.com #[Trojan-Downloader.Win32.Small.bke]

127.0.0.1  ezthemes.ezthemes.com #[StopBadware.ezthemes]

127.0.0.1  funskins.ezthemes.com

127.0.0.1  galtthemes.ezthemes.com

127.0.0.1  themexp.ezthemes.com

127.0.0.1  topdesktop.ezthemes.com

127.0.0.1  www.ezthemes.com #[SiteAdvisor.ezthemes.com]

127.0.0.1  dl2.themexp.org

127.0.0.1  www.themexp.org #[StopBadware.Warning]

# [Web Entertainment Group]

127.0.0.1  join4free.com

127.0.0.1  asians.join4free.com

127.0.0.1  clickthrough.wegcash.com

127.0.0.1  free.wegcash.com #[SunBelt.WegCash.com]

127.0.0.1  programs.wegcash.com #[Tenebril.wegcash.com]

127.0.0.1  promos.wegcash.com

# [Webhancer Corp][199.243.163.96 - 199.243.163.127]

# [Web Hosting Company][94.103.4.0 - 94.103.4.255]

# [Web & Mail Hosting][AS18106][202.73.57.0 - 202.73.57.31]

127.0.0.1  google-analyze.cn #[Google.Diagnostic]

127.0.0.1  google-analyze.org

127.0.0.1  wsxhost.net #[JS/TrojanDownloader.Agent.NHJ]

127.0.0.1  yahoo-analytics.net

# [Webnet International]

127.0.0.1  bannerco-op.com

127.0.0.1  bannersgomlm.com

127.0.0.1  www.bannersgomlm.com

127.0.0.1  bannersgomlm.buildreferrals.com

# [Webpower Inc]

127.0.0.1  apps.clickcash.com

127.0.0.1  promo.clickcash.com

127.0.0.1  www.clickcash.com

127.0.0.1  cc.webpower.com

127.0.0.1  clickcash.webpower.com

127.0.0.1  orders.webpower.com #[SpySweeper.Spy.Cookie]

# [WebStat.com LLC]

127.0.0.1  dce.nextstat.com

127.0.0.1  bill.dce.nextstat.com

127.0.0.1  hits.nextstat.com

127.0.0.1  hv3.webstat.com

127.0.0.1  hits.webstat.com #[McAfee.Cookie-Webstat]

# [Webvisions][203.142.28.0 - 203.142.31.255]

# [Web Werks][66.7.148.0 - 66.7.149.255]

127.0.0.1  www.counter-x.com

127.0.0.1  www.log-counter.com

127.0.0.1  www.log-info.org

127.0.0.1  www.log-stats.com

127.0.0.1  www.new-counter.com

127.0.0.1  www.stats-log.com

127.0.0.1  www.x-counter.org

127.0.0.1  www.x-stats-x.com

127.0.0.1  www.x-stats.info #[Spamdexing]

# [WeDirect Inc]

127.0.0.1  euroseek.com

127.0.0.1  www.euroseek.com

127.0.0.1  www.euroseek.net

127.0.0.1  www.ownbox.com #[Microsoft.Typo-Patrol]

127.0.0.1  usseek.com

127.0.0.1  www.usseek.com

# [Well-com][AS35550][85.142.1.0 - 85.142.3.255]

127.0.0.1  cracks4u.com #[Win32/TrojanDownloader.Adload.DS]

127.0.0.1  getcracks.com #[Win32/TrojanDownloader.Adload.DS]

127.0.0.1  keygen.name #[Trojan-Dropper.Win32.Pakes]

127.0.0.1  name.keygen.name

127.0.0.1  files.seriall.com

127.0.0.1  www.seriall.com #[Trojan-Dropper.Win32.Pakes]

127.0.0.1  www.thekeys.ws #[Google Warning]

# [Wenzhou Telecom][60.190.118.0 - 60.190.118.255]

# [Whistle Software][Panda Spyware/Whistle]

127.0.0.1  www.uslocalweather.com

127.0.0.1  www.wsel.net

127.0.0.1  www.whistlesoftware.com

# [Wild Media, LLC][Contextual Choice Marketing]

127.0.0.1  server1.103092804.com

127.0.0.1  server2.103092804.com

127.0.0.1  server3.103092804.com

127.0.0.1  server4.103092804.com #[server2.adsrve.com]

127.0.0.1  www.103092804.com #[McAfee.Adware-IEHost]

127.0.0.1  www.ads234.com #[PcTools.Winpage Blocker]

127.0.0.1  www.consumersoftwarelabs.com #[SunBelt.Malwhere]

127.0.0.1  www.contextualchoice.com

127.0.0.1  getmaxspeed.com

127.0.0.1  www.getmaxspeed.com

127.0.0.1  a1.interclick.com

127.0.0.1  campaigns.interclick.com #[campaigns.interclick.r3h.net]

127.0.0.1  www.interclick.com

127.0.0.1  origin.midaddle.com #[WinPage Affiliate][ADW_MIDADDLE.G]

127.0.0.1  www.midaddle.com #[Troj/Midaddle-C]

127.0.0.1  www.spiderpilot.com

127.0.0.1  origin.statblaster.com #[Adware.StatBlaster]

127.0.0.1  turbodownload.net

127.0.0.1  www.turbodownload.net

127.0.0.1  www.wildarcade.com

# [Wild Media via ConsumerSoftwarelabs Group]

127.0.0.1  www.beautifulworldsavers.com

127.0.0.1  www.custommotorcyclesavers.com

127.0.0.1  www.getsafeguard.com

127.0.0.1  www.naughtynudesavers.com

127.0.0.1  www.sexybikinisavers.com

127.0.0.1  www.sexylingeriesavers.com

# [Wishbone Media]

127.0.0.1  gmail.com.org

127.0.0.1  lycos.com.org

127.0.0.1  microsoft.com.org

127.0.0.1  www.www.microsoft.com.org

127.0.0.1  orbitcycle.com

127.0.0.1  banners.orbitcycle.com

127.0.0.1  shagorgag.orbitcycle.com

127.0.0.1  www.orbitcycle.com

127.0.0.1  www.shops.com

127.0.0.1  www.trips.com

127.0.0.1  wish7.com #[SunBelt.Wish7.com]

127.0.0.1  www.wish7.com

127.0.0.1  toolbar.wishbone.com #[PcTools.Wishbone Toolbar]

127.0.0.1  your.wishbone.com

127.0.0.1  wapd.wishbone.com

127.0.0.1  www.wishbone.com

127.0.0.1  yeah.com #[SunBelt.Yeah.com]

127.0.0.1  www.yeah.com

127.0.0.1  your.com #[digimedia.com]

127.0.0.1  www.your.com

# [Wizteen Inc]

127.0.0.1  images.iconfun.com

127.0.0.1  www.iconfun.com #[SiteAdvisor.iconfun.com]

127.0.0.1  www.makeavatars.com

127.0.0.1  wizteen.com

127.0.0.1  www.wizteen.com #[AdWare.Win32.SearchIt.k]

# [Worldata]

127.0.0.1  webconnect.net

127.0.0.1  wexchange.webconnect.net

127.0.0.1  remote.webconnect.net

127.0.0.1  reporting.webconnect.net

127.0.0.1  secure.webconnect.net

127.0.0.1  www.webconnect.net #[SunBelt.WebConnect.net]

127.0.0.1  www.worldata.com

# [Wolfgang Lanzrath]

127.0.0.1  badzeit.ivwbox.de

127.0.0.1  bild.ivwbox.de

127.0.0.1  chiemgau.ivwbox.de

127.0.0.1  chip.ivwbox.de

127.0.0.1  ciao.ivwbox.de

127.0.0.1  daserste.ivwbox.de

127.0.0.1  digiworl.ivwbox.de

127.0.0.1  expedia.ivwbox.de

127.0.0.1  express.ivwbox.de

127.0.0.1  faz.ivwbox.de

127.0.0.1  finatime.ivwbox.de

127.0.0.1  focus.ivwbox.de #[SunBelt.ivwbox]

127.0.0.1  freenet.ivwbox.de

127.0.0.1  gamona.ivwbox.de

127.0.0.1  gmx.ivwbox.de

127.0.0.1  golem.ivwbox.de

127.0.0.1  handbl.ivwbox.de

127.0.0.1  haz.ivwbox.de

127.0.0.1  heise.ivwbox.de

127.0.0.1  heute.ivwbox.de

127.0.0.1  insideha.ivwbox.de

127.0.0.1  kabel1.ivwbox.de

127.0.0.1  ksta.ivwbox.de

127.0.0.1  maerkall.ivwbox.de

127.0.0.1  map24.ivwbox.de

127.0.0.1  mclient.ivwbox.de

127.0.0.1  mdr.ivwbox.de

127.0.0.1  merkuron.ivwbox.de

127.0.0.1  mobile.ivwbox.de

127.0.0.1  mp3world.ivwbox.de

127.0.0.1  mrwong.ivwbox.de

127.0.0.1  msn.ivwbox.de

127.0.0.1  myvideo.ivwbox.de

127.0.0.1  n24.ivwbox.de

127.0.0.1  netzeitu.ivwbox.de

127.0.0.1  newsclic.ivwbox.de

127.0.0.1  ntv.ivwbox.de

127.0.0.1  offpost.ivwbox.de

127.0.0.1  pcwelt.ivwbox.de #[Ewido.TrackingCookie.Ivwbox]

127.0.0.1  pro7.ivwbox.de

127.0.0.1  qs.ivwbox.de

127.0.0.1  reuterde.ivwbox.de

127.0.0.1  rheinmai.ivwbox.de

127.0.0.1  rponl.ivwbox.de

127.0.0.1  rtl.ivwbox.de

127.0.0.1  sat1.ivwbox.de

127.0.0.1  schuelvz.ivwbox.de

127.0.0.1  sevload.ivwbox.de

127.0.0.1  spiegel.ivwbox.de

127.0.0.1  sport1.ivwbox.de

127.0.0.1  stern.ivwbox.de

127.0.0.1  stimme.ivwbox.de

127.0.0.1  studivz.ivwbox.de

127.0.0.1  sueddeut.ivwbox.de

127.0.0.1  swr.ivwbox.de

127.0.0.1  szon.ivwbox.de

127.0.0.1  rbb.ivwbox.de

127.0.0.1  rheinzei.ivwbox.de

127.0.0.1  tagessch.ivwbox.de

127.0.0.1  tagspieg.ivwbox.de

127.0.0.1  tecchan.ivwbox.de

127.0.0.1  teletari.ivwbox.de

127.0.0.1  toi.ivwbox.de

127.0.0.1  tomshard.ivwbox.de

127.0.0.1  vanity.ivwbox.de

127.0.0.1  viply.ivwbox.de

127.0.0.1  vogue.ivwbox.de

127.0.0.1  webdessl.ivwbox.de

127.0.0.1  welt.ivwbox.de

127.0.0.1  welten.ivwbox.de

127.0.0.1  wetter.ivwbox.de

127.0.0.1  wetteronl.ivwbox.de

127.0.0.1  wirtwoch.ivwbox.de

127.0.0.1  wissende.ivwbox.de

127.0.0.1  www.ivwbox.de

127.0.0.1  yahoo.ivwbox.de

127.0.0.1  zdf.ivwbox.de

127.0.0.1  zdnet.ivwbox.de

127.0.0.1  zeitonl.ivwbox.de

# [Wunderloop Media]

127.0.0.1  rc.himedia.individuad.net

127.0.0.1  tr.himedia.individuad.net

# [Wunderloop Media][85.25.83.0 - 85.25.83.127]

127.0.0.1  rc.pcm.individuad.net

127.0.0.1  tr.pcm.individuad.net

127.0.0.1  req.connect.wunderloop.net

127.0.0.1  tu.connect.wunderloop.net

# [Wunderloop Media][AS8972][85.25.94.64 - 85.25.94.127]

127.0.0.1  rc.semilo.individuad.net

127.0.0.1  tr.semilo.individuad.net

# [Worldstream][AS15435][93.190.139.0 - 93.190.139.255]

127.0.0.1  123ads.nl

127.0.0.1  ad.123ads.nl

127.0.0.1  statz.123ads.nl

127.0.0.1  all-softfree.com #[Google.Diagnostic]

127.0.0.1  allsoft-free.com

127.0.0.1  clubmed-corp.com

127.0.0.1  lsoftfree.com

127.0.0.1  megafucklist.com #[Fake.PornTube.Codec]

127.0.0.1  pornmegatube.net #[Fake.PornTube.Codec][Google.Diagnostic]

127.0.0.1  porn-tube09.com #[Fake.PornTube.Codec]

127.0.0.1  porntubenew.com #[Fake.PornTube.Codec][Google.Diagnostic]

127.0.0.1  talbots-corp.com

127.0.0.1  tubeporn08.com

127.0.0.1  tubeporn09.com

127.0.0.1  vlksm.org

127.0.0.1  whitetrack.net

127.0.0.1  xxxporn-tube.com

# [WPP Group via various]

127.0.0.1  adcontent.videoegg.com

127.0.0.1  beacon.videoegg.com

127.0.0.1  core.videoegg.com

# [WPP Group via Dynamic Logic]

127.0.0.1  content.dl-rms.com

127.0.0.1  questionmarket.com #[SpySweeper.Spy.Cookie]

127.0.0.1  amch.questionmarket.com #[McAfee.Cookie-Questionmarket]

127.0.0.1  ch.questionmarket.com #[Panda.Spyware:Cookie]

127.0.0.1  survey.questionmarket.com

127.0.0.1  www.questionmarket.com #[Ad-Aware.Tracking.Cookie]

# [WPP Group via 24/7 Real Media Inc]

127.0.0.1  ads.247wsr.com

127.0.0.1  banner.clickfinders.com #[SunBelt.ClickFinders]

127.0.0.1  search.clickfinders.com

127.0.0.1  tracking.clickfinders.com

127.0.0.1  www.clickfinders.com

127.0.0.1  dealcollect.insightfirst.com

127.0.0.1  lifetimecollect.insightfirst.com

127.0.0.1  thedeal.insightfirst.com

127.0.0.1  unitedcollect.insightfirst.com

127.0.0.1  na.decdna.net

127.0.0.1  na.link.decdna.net

127.0.0.1  adv.247realmedia.com #[McAfee.Cookie-247realmedia]

127.0.0.1  adv0005.247realmedia.com

127.0.0.1  adv0035.247realmedia.com

127.0.0.1  adv0054.247realmedia.com

127.0.0.1  betcollect.247realmedia.com

127.0.0.1  ftbusinesscollect.247realmedia.com

127.0.0.1  gmtvcollect.247realmedia.com

127.0.0.1  imagec05.247realmedia.com #[c2.mii.instacontent.net]

127.0.0.1  imagec07.247realmedia.com

127.0.0.1  imagec08.247realmedia.com

127.0.0.1  imagec09.247realmedia.com

127.0.0.1  imagec10.247realmedia.com

127.0.0.1  imagec11.247realmedia.com

127.0.0.1  imagec12.247realmedia.com

127.0.0.1  imagec14.247realmedia.com

127.0.0.1  imagec17.247realmedia.com

127.0.0.1  imagesn02.247realmedia.com

127.0.0.1  ipro.247realmedia.com

127.0.0.1  looksmartcollect.247realmedia.com

127.0.0.1  lshlcollect.247realmedia.com

127.0.0.1  lseducationcollect.247realmedia.com #[LookSmart]

127.0.0.1  lsmusiccollect.247realmedia.com

127.0.0.1  lssportscollect.247realmedia.com

127.0.0.1  lycos.247realmedia.com

127.0.0.1  lycoscollect.247realmedia.com

127.0.0.1  mediafr.247realmedia.com

127.0.0.1  mediauk.247realmedia.com

127.0.0.1  medicinenetcollect.247realmedia.com

127.0.0.1  network-ca.247realmedia.com

127.0.0.1  nx-adv0035.247realmedia.com

127.0.0.1  oas-eu.247realmedia.com

127.0.0.1  oasc02.247realmedia.com #[Panda.Spyware:Cookie]

127.0.0.1  oasc04.247realmedia.com

127.0.0.1  oasc05.247realmedia.com

127.0.0.1  oasc06.247realmedia.com

127.0.0.1  oasc07.247realmedia.com

127.0.0.1  oasc08.247realmedia.com

127.0.0.1  oasc09.247realmedia.com

127.0.0.1  oasc10.247realmedia.com

127.0.0.1  oasc11.247realmedia.com

127.0.0.1  oasc02023.247realmedia.com

127.0.0.1  oasc03012.247realmedia.com

127.0.0.1  oasc03049.247realmedia.com

127.0.0.1  oasc04025.247realmedia.com

127.0.0.1  oasc04052.247realmedia.com

127.0.0.1  oasc04062.247realmedia.com

127.0.0.1  oasc05024.247realmedia.com #[MVPS.Criteria]

127.0.0.1  oasc05134.247realmedia.com

127.0.0.1  oasc05135.247realmedia.com

127.0.0.1  oasc06006.247realmedia.com

127.0.0.1  oasc08006.247realmedia.com

127.0.0.1  oasc08008.247realmedia.com

127.0.0.1  oasc08011.247realmedia.com

127.0.0.1  oasc08024.247realmedia.com

127.0.0.1  oasc12001.247realmedia.com

127.0.0.1  pittlive.247realmedia.com

127.0.0.1  postgazette.247realmedia.com

127.0.0.1  postgazettecollect.247realmedia.com

127.0.0.1  singletraining56.247realmedia.com

127.0.0.1  retaildirect.realmedia.com

127.0.0.1  villagevoicecollect.247realmedia.com

127.0.0.1  ads.realmedia.com.br

127.0.0.1  icover.realmedia.com

127.0.0.1  lycos.realmedia.com

127.0.0.1  lycoscollect.realmedia.com

127.0.0.1  mserv1.realmedia.com

127.0.0.1  network.realmedia.com #[SpySweeper.Spy.Cookie]

127.0.0.1  oad.realmedia.com

127.0.0.1  oas-central.realmedia.com

127.0.0.1  pub.realmedia.fr

127.0.0.1  ad.realmedia.co.kr

127.0.0.1  tech.realmedia.co.kr

127.0.0.1  ads.realmedia.ro

127.0.0.1  tracking.247search.com

127.0.0.1  realmedia-a592.d4p.net

# [24/7 Real Media via various Services]

127.0.0.1  ads.accountingweb.com

127.0.0.1  ads.augusta.com

127.0.0.1  ads.bloomberg.com

127.0.0.1  ads.ctvdigital.net

127.0.0.1  ads.epi.es

127.0.0.1  ads.euronews.net

127.0.0.1  ads.jacksonville.com

127.0.0.1  ads.juneauempire.com

127.0.0.1  sifomedia.idg.se

127.0.0.1  ads.letemps.ch

127.0.0.1  ads.miniclip.com

127.0.0.1  ads.mrtones.com

127.0.0.1  ads.nwsource.com

127.0.0.1  ads.onlineathens.com

127.0.0.1  ads.pennnet.com

127.0.0.1  ads.savannahnow.com

127.0.0.1  ads.seattletimes.com

127.0.0.1  a3.suntimes.com

127.0.0.1  ads.telecinco.es

127.0.0.1  ads.thedeal.com

127.0.0.1  ads.timesunion.com

127.0.0.1  ads.trinitymirror.co.uk

127.0.0.1  ad.webadvertising.ch

127.0.0.1  adsrv.dispatch.com #[oasc05a.247realmedia.com]

127.0.0.1  insightfirst.oxygen.com

127.0.0.1  insightxe.accuweather.com #[accuweathercollect.247realmedia.com]

127.0.0.1  insightxe.artistdirect.com

127.0.0.1  insightxe.fayettevillenc.com

127.0.0.1  insightxe.investors.com

127.0.0.1  insightxe.pittsburghlive.com #[pittlivecollect.247realmedia.com]

127.0.0.1  insightxe-ssl.pittsburghlive.com

127.0.0.1  insightxe.reference.com #[referencecollect.247realmedia.com]

127.0.0.1  insightxe.starbulletin.com

127.0.0.1  insightxe.thephoenix.com

127.0.0.1  insightxe.vtsgonline.com

127.0.0.1  insightxe.washtimes.com #[washtimescollect.247realmedia.com]

127.0.0.1  sifo.insightxe.di.se

127.0.0.1  mjx.ads.nwsource.com #[oasc04a.247realmedia.com]

127.0.0.1  oascentral.123greetings.com

127.0.0.1  oascentral.abclocal.go.com

127.0.0.1  oascentral.activeathlete.net

127.0.0.1  oascentral.adage.com

127.0.0.1  oascentral.adcritic.com

127.0.0.1  oascentral.alladultchannel.com

127.0.0.1  oascentral.altoonamirror.com

127.0.0.1  oas.ameinfo.com

127.0.0.1  oascentral.hosted.ap.org

127.0.0.1  oascentral.artistdirect.com

127.0.0.1  oascentral.atlanticnewsnet.ca

127.0.0.1  oascentral.autoweek.com

127.0.0.1  oascentral.bakersfield.com

127.0.0.1  oascentral.blackenterprise.com

127.0.0.1  oascentral.blogher.org

127.0.0.1  oascentral.btobonline.com

127.0.0.1  oascentral.bigfishgames.com

127.0.0.1  oascentral.bostonherald.com

127.0.0.1  oascentral.bristolpress.com

127.0.0.1  oascentral.broadway.com

127.0.0.1  oascentral.businessinsurance.com

127.0.0.1  oascentral.businessweek.com

127.0.0.1  oascentral.buy.com

127.0.0.1  oascentral.buysell.com

127.0.0.1  oascentral.canadaeast.com

127.0.0.1  oascentral.capecodonline.com

127.0.0.1  oascentral.careerbuilder.com

127.0.0.1  oascentral.citypages.com

127.0.0.1  realmedia.channel4.com

127.0.0.1  oascentral.charleston.net

127.0.0.1  oascentral.chicagobusiness.com

127.0.0.1  oascentral.chron.com

127.0.0.1  oascentral.clearchannel.com

127.0.0.1  oascentral.comcast.net

127.0.0.1  oascentral.courttv.com

127.0.0.1  oascentral.crainsdetroit.com

127.0.0.1  oascentral.crainsnewyork.com

127.0.0.1  oascentral.crimelibrary.com

127.0.0.1  oascentral.cruisecritic.com

127.0.0.1  oas.d1g.com

127.0.0.1  oascentral.dailybreeze.com

127.0.0.1  oascentral.dailyherald.com

127.0.0.1  oascentral.dailylocal.com

127.0.0.1  oas.deejay.it

127.0.0.1  oas.di.se

127.0.0.1  oascentral.dilbert.com

127.0.0.1  oascentral.discovery.com

127.0.0.1  oascentral.emedicine.com

127.0.0.1  oascentral.entrepreneur.com

127.0.0.1  oascentral.fantasyplayers.com

127.0.0.1  oascentral.fayettevillenc.com

127.0.0.1  oascentral.feedroom.com

127.0.0.1  oascentral.fosters.com

127.0.0.1  oascentral.freedom.com

127.0.0.1  oas.ftbusiness.com

127.0.0.1  oascentral.genremagazine.com

127.0.0.1  oascentral.ggl.com

127.0.0.1  oascentral.goerie.com

127.0.0.1  oascentral.gotriad.com

127.0.0.1  oascentral.greenevillesun.com

127.0.0.1  oascentral.hamptonroads.com

127.0.0.1  oascentral.highbeam.com

127.0.0.1  oascentral.hollywood.com

127.0.0.1  oascentral.inq7.net

127.0.0.1  oascentral.investmentnews.com

127.0.0.1  oascentral.investors.com

127.0.0.1  oascentral.journal-news.net

127.0.0.1  oascentral.katv.com

127.0.0.1  oascentral.kontraband.com

127.0.0.1  oascentral.lacitybeat.com

127.0.0.1  oascentral.laptopmag.com

127.0.0.1  oascentral.law.com

127.0.0.1  oascentral.laweekly.com

127.0.0.1  oascentral.lifetimetv.com

127.0.0.1  oascentral.looksmart.com

127.0.0.1  oascentral.lycos.com

127.0.0.1  oascentral.mailtribune.com

127.0.0.1  oas.maktoob.com

127.0.0.1  oas.maktoobblog.com

127.0.0.1  oascentral.marshallindependent.com

127.0.0.1  oascentral.mayoclinic.com

127.0.0.1  oascentral.metro.us

127.0.0.1  oascentral.metrobostonnews.com

127.0.0.1  oascentral.metrotimes.com

127.0.0.1  oascentral.metrowestdailynews.com

127.0.0.1  oascentral.miaminewtimes.com

127.0.0.1  oascentral.mochila.com

127.0.0.1  oascentral.motherjones.com

127.0.0.1  oascentral.movietickets.com

127.0.0.1  oascentral.nashvillescene.com

127.0.0.1  oascentral.necn.com

127.0.0.1  oascentral.nerve.com

127.0.0.1  oascentral.newsmax.com

127.0.0.1  oascentral.news-record.com

127.0.0.1  oascentral.newstimeslive.com

127.0.0.1  oascentral.nowtoronto.com

127.0.0.1  oas-fr.video.on.nytimes.com

127.0.0.1  oascentral.ocweekly.com

127.0.0.1  oascentral.oxygen.com

127.0.0.1  oascentral.theonion.com

127.0.0.1  oascentral.onwisconsin.com

127.0.0.1  oascentral.oprah.com

127.0.0.1  oascentral.phillyburbs.com

127.0.0.1  oascentral.phoenixnewtimes.com

127.0.0.1  oascentral.planetatv.com

127.0.0.1  oascentral.poconorecord.com

127.0.0.1  oascentral.post-gazette.com

127.0.0.1  oascentral.pressdemocrat.com

127.0.0.1  oascentral.publicradio.org

127.0.0.1  oascentral.rcrnews.com

127.0.0.1  oascentral.recordnet.com

127.0.0.1  oascentral.recordonline.com

127.0.0.1  oascentral.record-eagle.com

127.0.0.1  oascentral.recroom.com

127.0.0.1  oascentral.red7media.com

127.0.0.1  oascentral.redherring.com

127.0.0.1  oascentral.reference.com

127.0.0.1  oascentral.register.com

127.0.0.1  oascentral.registerguard.com

127.0.0.1  oas.repubblica.it

127.0.0.1  oas.rivals.com

127.0.0.1  oas.romandie-online.ch

127.0.0.1  oascentral.samsclub.com

127.0.0.1  oascentral.sciam.com

127.0.0.1  oascentral.seattleweekly.com

127.0.0.1  oascentral.sfgate.com

127.0.0.1  oascentral.sfweekly.com

127.0.0.1  oascentral.sina.com

127.0.0.1  oascentral.southjerseylocalnews.com

127.0.0.1  oascentral.sovo.com

127.0.0.1  oascentral.sptimes.com

127.0.0.1  oascentral.s-t.com

127.0.0.1  oascentral.starbulletin.com

127.0.0.1  oascentral.stltoday.com

127.0.0.1  oascentral.stripes.com

127.0.0.1  oascentral.suntimes.com

127.0.0.1  oascentral.superpages.com

127.0.0.1  oascentral.surfline.com

127.0.0.1  oascentral.thechronicleherald.ca

127.0.0.1  oascentral.theintelligencer.net

127.0.0.1  oascentral.thephoenix.com

127.0.0.1  oascentral.thesmokinggun.com

127.0.0.1  oascentral.tmcnet.com

127.0.0.1  oascentral.tnr.com

127.0.0.1  oascentral.tophosts.com

127.0.0.1  oascentral.tradingmarkets.com

127.0.0.1  oascentral.traffic.com

127.0.0.1  oascentral.travelzoo.com

127.0.0.1  oascentral.trentonian.com

127.0.0.1  oas.trustnet.com

127.0.0.1  oascentral.upi.com

127.0.0.1  oascentral.verizononline.com

127.0.0.1  oascentral.videodome.com

127.0.0.1  oascentral.villagevoice.com

127.0.0.1  oascentral.virtualtourist.com

127.0.0.1  oascentral.walmartwom.com

127.0.0.1  oascentral.warcry.com

127.0.0.1  oascentral.washtimes.com

127.0.0.1  oascentral.wciv.com

127.0.0.1  oascentral.wickedlocal.com

127.0.0.1  oascentral.wjla.com

127.0.0.1  oascentral.yellowpages.com

127.0.0.1  oascentral.zwire.com

127.0.0.1  coriolis.accuweather.com

127.0.0.1  sifomedia.thelocal.se

127.0.0.1  werbung.metropool.ch

127.0.0.1  ch.p-digital-server.com

127.0.0.1  www.rmfaceparty.com

127.0.0.1  a.windowsitpro.com #[oasc04a.247realmedia.com]

127.0.0.1  sifo2.dinapengar.se

127.0.0.1  di.research-int.se

127.0.0.1  dn.research-int.se #[Insight XE TAGGING]

127.0.0.1  flnet.research-int.se

127.0.0.1  idg.research-int.se

127.0.0.1  internetpanel.research-int.se

127.0.0.1  shared.research-int.se

127.0.0.1  sn.research-int.se

127.0.0.1  tradera.research-int.se

127.0.0.1  stream.expedia.fr

127.0.0.1  realmedia.pap.fr

127.0.0.1  medias.voyages-sncf.com

# [WURLD Media][William Boy]

127.0.0.1  www.301c.com

127.0.0.1  www.peerimpact.com

127.0.0.1  ins.rdxrp.com

127.0.0.1  www.rdxrp.com #[McAfee.Adware-WurldMedia]

# [Wz Communications][208.88.224.0 - 208.88.227.255]

127.0.0.1  aka-root.com

127.0.0.1  dancefox.net

127.0.0.1  nafleite.com

127.0.0.1  up-host.com

# [Xentronix][AS16265][85.12.43.0 - 85.12.43.255]

# [Xentronix][85.17.166.128 - 85.17.166.255]

127.0.0.1  777blogz.com

127.0.0.1  787787.com

# [X-host.ua Network][AS25456][193.200.255.0 - 193.200.255.255]

127.0.0.1  operative.cc #[Google.Warning]

127.0.0.1  www.operative.cc

# [XSC Incorporated]

127.0.0.1  smutvidoftheday.com #[Win32/TrojanDownloader.Agent.NJC]

127.0.0.1  www.smutvidoftheday.com #[SiteAdvisor.smutvidoftheday.com]

127.0.0.1  www.xscincorporated.com

# [Xs4all Internet][AS3265][83.68.16.0 - 83.68.16.255]

127.0.0.1  mysuperload.info

127.0.0.1  ntkrnlpa.info

# [Yahoo]

127.0.0.1  adinterax.com #[eTrust.Tracking.Cookie]

127.0.0.1  mi.adinterax.com

127.0.0.1  tr.adinterax.com

127.0.0.1  www.adinterax.com

127.0.0.1  pic.geocities.com

127.0.0.1  visit.geocities.com

127.0.0.1  hostingprod.com #[SecuritySpace.WebBug]

127.0.0.1  s201.indexstats.com

127.0.0.1  secure.indexstats.com

127.0.0.1  stats.indexstats.com #[Analytics Tracking Code]

127.0.0.1  stats.indextools.com #[eTrust.Tracking.Cookie]

127.0.0.1  adserver.yahoo.com

127.0.0.1  au.adserver.yahoo.com

127.0.0.1  cn2.adserver.yahoo.com

127.0.0.1  hk.adserver.yahoo.com

127.0.0.1  in.adserver.yahoo.com

127.0.0.1  uk.adserver.yahoo.com

127.0.0.1  us.adserver.yahoo.com

127.0.0.1  pn1.adserver.yahoo.com

127.0.0.1  pn2.adserver.yahoo.com

127.0.0.1  tw2.adserver.yahoo.com

127.0.0.1  a.analytics.yahoo.com

127.0.0.1  bc-beta.ads.yahoo.com

127.0.0.1  srv1.wa.marketingsolutions.yahoo.com

127.0.0.1  srv2.wa.marketingsolutions.yahoo.com

127.0.0.1  srv3.wa.marketingsolutions.yahoo.com

127.0.0.1  advision.webevents.yahoo.com

127.0.0.1  stat.aliunion.cn.yahoo.com

127.0.0.1  ads.yimg.com

127.0.0.1  richmedia.yimg.com

127.0.0.1  ts.richmedia.yahoo.com

# [Yahoo via Altavista Company][216.39.48.0 - 216.39.63.255]

127.0.0.1  www.lockthemdown.com

# [Yahoo via BlueLithium]

127.0.0.1  gambling911.adrevolver.com

127.0.0.1  aps.media.adrevolver.com

127.0.0.1  media.adrevolver.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  track.adrevolver.com #[McAfee.Cookie-Adrevolver]

# [Yahoo via various][68.180.128.0 - 68.180.255.255]

# [Yahoo via MyBlogLog][69.147.64.0 - 69.147.127.255]

127.0.0.1  ipub.mybloglog.com

127.0.0.1  pub.mybloglog.com

127.0.0.1  track.mybloglog.com #[Yahoo Tracking Service]

127.0.0.1  track2.mybloglog.com

127.0.0.1  track3.mybloglog.com

# [Yahoo via Overture]

127.0.0.1  cm.au.msn.overture.com

127.0.0.1  cm.au.thewest.overture.com

127.0.0.1  cm.atomfilms.overture.com

127.0.0.1  cm.cbsnews.overture.com

127.0.0.1  cm.br.clickgratis.overture.com

127.0.0.1  cm.cmt.overture.com

127.0.0.1  cm.de.overture.com

127.0.0.1  cm.eu.guardian.overture.com

127.0.0.1  cm.guardian.overture.com

127.0.0.1  cm.ibs.overture.com

127.0.0.1  cm.it.kataweb.overture.com

127.0.0.1  cm.ivillage.overture.com

127.0.0.1  cm.jp.overture.com

127.0.0.1  cm.npc-calkins.overture.com

127.0.0.1  cm.npc-cox.overture.com

127.0.0.1  cm.npc-hearst.overture.com

127.0.0.1  cm.npc-lee.overture.com

127.0.0.1  cm.npc-mcclatchy.overture.com

127.0.0.1  cm.npc-medianews.overture.com

127.0.0.1  cm.npc-morris.overture.com

127.0.0.1  cm.npc-nacutah.overture.com

127.0.0.1  cm.npc-nydn.overture.com

127.0.0.1  cm.npc-nytimes.overture.com

127.0.0.1  cm.npc-paddock.overture.com

127.0.0.1  cm.npc-philly.overture.com

127.0.0.1  cm.npc-scripps.overture.com

127.0.0.1  cm.mtv.overture.com

127.0.0.1  cm.quizilla.overture.com

127.0.0.1  cm.spiketvifilm.overture.com

127.0.0.1  cm.tw.overture.com #[cm.tw.g.ysm.yahoo.com]

127.0.0.1  cm.uk.overture.com

127.0.0.1  cm.uk.independent.overture.com

127.0.0.1  cm.vh1.overture.com

127.0.0.1  cm.weather.overture.com

127.0.0.1  cm.webmd.overture.com

127.0.0.1  cmh.hk.overture.com

127.0.0.1  cmh.tw.yahoo.overture.com

127.0.0.1  cmhtml.overture.com #[Content Match]

127.0.0.1  cmhtml.cbsnews.overture.com

127.0.0.1  cmhtml.de.overture.com

127.0.0.1  cmhtml.es.overture.com

127.0.0.1  cmhtml.fr.overture.com #[Panda.Spyware:Cookie/Overture]

127.0.0.1  cmhtml.ibs.overture.com #[Ewido.TrackingCookie.Overture]

127.0.0.1  cmxml.nationalgeo.overture.com

127.0.0.1  cmhtml.nl.overture.com #[SunBelt.Overture.com]

127.0.0.1  cmhtml.revenuescience.overture.com

127.0.0.1  cmhtml.uk.overture.com

127.0.0.1  cmhtml.vendare.overture.com

127.0.0.1  cmls.overture.com

127.0.0.1  cmls.eu.overture.com

127.0.0.1  cmx.tw.yahoo.overture.com

127.0.0.1  convctr.overture.com #[SiteAdvisor.crawler.com]

127.0.0.1  ctxtads.overture.com #[eTrust.Tracking.Cookie]

127.0.0.1  data2.perf.overture.com

127.0.0.1  data3.perf.overture.com #[McAfee.Cookie-Overture]

127.0.0.1  data4.perf.overture.com

127.0.0.1  data.wa.perf.overture.com

127.0.0.1  dmxml.smartname.overture.com

127.0.0.1  html.overture.com

127.0.0.1  html.imeem.overture.com

127.0.0.1  inventory.overture.com

127.0.0.1  rc12.overture.com #[MVPS.Criteria]

127.0.0.1  rc23.overture.com #[MVPS.Criteria]

127.0.0.1  redir.overture.com #[SpySweeper.Spy.Cookie]

127.0.0.1  perf.overture.com

127.0.0.1  srv.perf.overture.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  rc.us-east.srv.overture.com

127.0.0.1  xml.ivillage.overture.com

127.0.0.1  xml.overture.com

127.0.0.1  xml.weather.overture.com

127.0.0.1  ypn-js.overture.com #[Yahoo Contextual Ads]

# [Yahoo via Right Media]

127.0.0.1  content.yieldmanager.edgesuite.net

127.0.0.1  www.rightmedia.com #[McAfee.Cookie-Rightmedia][SpySweeper.Spy.Cookie]

127.0.0.1  content.rmxads.com #[content.yieldmanager.com]

127.0.0.1  content.yieldmanager.com #[Panda.Spyware:Cookie/YieldManager]

127.0.0.1  open.ad.yieldmanager.net #[Wildcard DNS]

127.0.0.1  e.yieldmanager.net

127.0.0.1  l.yieldmanager.net

# [Yahoo via Right Media - clones][208.67.64.0 - 208.67.71.255]

127.0.0.1  my.admedian.com

127.0.0.1  my.adtegrity.net

127.0.0.1  my.aim4media.com

127.0.0.1  ym.bannerconnect.net

127.0.0.1  reporting.cpxinteractive.com

127.0.0.1  www.everyfreegift.com #[SiteAdvisor.everyfreegift.com]

127.0.0.1  my.iconadserver.com

127.0.0.1  ad.marketingsector.com

127.0.0.1  my.marketingsector.com

127.0.0.1  my.mediaprecision.net

127.0.0.1  my.media-servers.net

127.0.0.1  ap.net-blue.net #[YFDirect Inc][Netblue]

127.0.0.1  my.realcastmedia.com

127.0.0.1  www.yfdmedia.com

127.0.0.1  api.yieldmanager.com #[api.se.yieldmanager.com]

127.0.0.1  my.yieldmanager.com #[Ewido.TrackingCookie.Yieldmanager]

# [Yahoo via Right Media - clones][76.13.0.0 - 76.13.255.255]

127.0.0.1  adserver.00web.com

127.0.0.1  ad.103092804.com

127.0.0.1  ad.accelerator-media.com

127.0.0.1  ad.acceleratorusa.com

127.0.0.1  ad.adconsole.com

127.0.0.1  ad.ad-flow.com

127.0.0.1  ad.admediaprovider.com

127.0.0.1  ad.adnetinteractive.com

127.0.0.1  ad2.adnetinteractive.com

127.0.0.1  ad.adserverplus.com

127.0.0.1  ad.adtegrity.net

127.0.0.1  ad.axill.com

127.0.0.1  ad.bannerconnect.net

127.0.0.1  ad.bharatstudent.com

127.0.0.1  ads.bigad.com

127.0.0.1  ad.bizo.com

127.0.0.1  ad.backtalkmedia.com

127.0.0.1  ads.bluelithium.com

127.0.0.1  adserving.budsinc.com

127.0.0.1  ad.contentspecific.com

127.0.0.1  adserving.cpxinteractive.com

127.0.0.1  ad.creafi.com

127.0.0.1  ad.directaclick.com

127.0.0.1  ad.exigomedia.com

127.0.0.1  ad.firstadsolution.com #[ad.yieldmanager.com]

127.0.0.1  ad.globe7.com

127.0.0.1  ad.globalinteractive.com

127.0.0.1  ad.globalismedia.com

127.0.0.1  ad.greenmarquee.com

127.0.0.1  ad.harrenmedianetwork.com

127.0.0.1  ad.iconadserver.com

127.0.0.1  ad.interclick.com

127.0.0.1  ad.intermundonet.com

127.0.0.1  ad.ireit.com

127.0.0.1  ad.joetec.net

127.0.0.1  ad.joinaxxess.com

127.0.0.1  ads.komli.com

127.0.0.1  ads-rm.looksmart.com

127.0.0.1  ad.media-servers.net

127.0.0.1  ad.mediaprecision.net

127.0.0.1  servedby.morningfalls.com

127.0.0.1  ad.motiveinteractive.com

127.0.0.1  ad.realcastmedia.com

127.0.0.1  ad.reduxmedia.com

127.0.0.1  optimizedby.rmxads.com

127.0.0.1  ad.scanmedios.com

127.0.0.1  ad.smowtion.com

127.0.0.1  ad.targetingmarketplace.com

127.0.0.1  ad.theadhost.com

127.0.0.1  ad.thewheelof.com

127.0.0.1  ext.tyroo.com

127.0.0.1  ad.valencemedia.com

127.0.0.1  ad.xplusone.com

127.0.0.1  ad.xtendmedia.com

127.0.0.1  cookex.amp.yahoo.com

127.0.0.1  ad.yieldmanager.com #[MVPS.Criteria]

127.0.0.1  ad.yieldx.com

127.0.0.1  ad.z5x.net

# [Yahoo via Right Media - clones via various]

127.0.0.1  content.adconsole.com #[eXact Advertising]

127.0.0.1  content.ad-flow.com

127.0.0.1  content.adnetinteractive.com

127.0.0.1  content.adtegrity.net

127.0.0.1  content.axill.com

127.0.0.1  content.bannerconnect.net

127.0.0.1  content.bigad.com

127.0.0.1  content.contentspecific.com

127.0.0.1  content.cpxinteractive.com

127.0.0.1  content.exigomedia.com

127.0.0.1  content.firstadsolution.com

127.0.0.1  content.globalinteractive.com

127.0.0.1  content.iconadserver.com

127.0.0.1  content.ireit.com

127.0.0.1  content.joetec.net

127.0.0.1  content.joinaxxess.com

127.0.0.1  content.marketingsector.com

127.0.0.1  content.media-servers.net

127.0.0.1  content.mediaprecision.net #[ClickSpring]

127.0.0.1  content.motiveinteractive.com

127.0.0.1  content.realcastmedia.com

127.0.0.1  content.reduxmedia.com

127.0.0.1  content.scanmedios.com

127.0.0.1  adserver.sitesense.com #[Parking Service]

127.0.0.1  content.thewheelof.com

127.0.0.1  content.valencemedia.com

127.0.0.1  content.womensforum.com

127.0.0.1  content.yieldx.com

# [Yaris Industries][AS40824][91.210.56.0 - 91.210.59.255]

127.0.0.1  ultraantivirus2009.com #[Fraudware.Pandora-Software]

127.0.0.1  www.ultraantivirus2009.com

# [YAWSA LLC][MaxSearch Group][194.90.224.80 - 194.90.224.87]

127.0.0.1  www.adoptim.com

127.0.0.1  ariboo.com #[goto.maxifiles.com]

127.0.0.1  de.ariboo.com

127.0.0.1  dk.ariboo.com

127.0.0.1  es.ariboo.com

127.0.0.1  fi.ariboo.com

127.0.0.1  fr.ariboo.com

127.0.0.1  nl.ariboo.com

127.0.0.1  uk.ariboo.com

127.0.0.1  www.ariboo.com

127.0.0.1  freeprod.com #[SunBelt.Freeprod/Toolbar888]

127.0.0.1  media.freeprod.com #[Adware/Toolbar888]

127.0.0.1  www.freeprod.com

127.0.0.1  jouezgagnant.com

127.0.0.1  goto.maxifiles.com #[TROJ_DLOADER.ACA][Adware.Director]

127.0.0.1  network.maxifiles.com

127.0.0.1  www.maximpic.com #[speedtest.dll]

127.0.0.1  referenco.com

127.0.0.1  www.speedmeter.info #[speedtest.dll]

127.0.0.1  admin.teddycash.com

127.0.0.1  www.teddycash.com

127.0.0.1  admin.waverevenue.com

127.0.0.1  media.waverevenue.com

127.0.0.1  static.waverevenue.com

# [Yawsa via Yauza][194.90.224.80 - 194.90.224.87]

127.0.0.1  wr.kastora.com

127.0.0.1  wrsavn.kastora.com

127.0.0.1  bugreport.waverevenue.com

# [Yawsa via M5 Computer Security][206.251.244.0 - 206.251.244.255]

127.0.0.1  dl2.bundlext.com

127.0.0.1  www.fresh-weather.com #[Adware.Fresh]

127.0.0.1  maxifiles.com

127.0.0.1  xml.maxifiles.com

# [Yawsa via M5 Computer Security][206.251.244.0 - 206.251.244.255]

# [Yawsa via M5 Computer Security][206.71.190.0 - 206.71.190.255]

127.0.0.1  b152.bundlext.com

127.0.0.1  b155.bundlext.com

# [Yawsa via M5 Barak I.t.c][62.90.134.0 - 62.90.134.255]

127.0.0.1  mtn6.com-com.ws

127.0.0.1  wrsavn.flutix.com

127.0.0.1  mtn5.goole.ws

# [Yesup Ecommerce Solutions][66.48.78.192 - 66.48.78.255]

127.0.0.1  ads.adonion.com

127.0.0.1  banner.adsrevenue.net

127.0.0.1  popunder.adsrevenue.net #[McAfee.AdClicker-GD]

127.0.0.1  clicksor.com

127.0.0.1  ads.clicksor.com

127.0.0.1  main.clicksor.com

127.0.0.1  mci12.clicksor.com

127.0.0.1  search.clicksor.com

127.0.0.1  serw.clicksor.com

127.0.0.1  track.clicksor.com

127.0.0.1  www.clicksor.com

127.0.0.1  mp.clicksor.net

127.0.0.1  www.e-mailpromotion.com

127.0.0.1  goadbar.com

127.0.0.1  gopopup.com

127.0.0.1  www.gopopup.com

127.0.0.1  www.infinityads.com

127.0.0.1  multipops.com

127.0.0.1  service.multi-pops.com

127.0.0.1  www1.multipops.com

127.0.0.1  www2.multipops.com

127.0.0.1  www.multipops.com

127.0.0.1  www.myroitracking.com

127.0.0.1  paypopup.com

127.0.0.1  banner.paypopup.com

127.0.0.1  central.paypopup.com

127.0.0.1  central2.paypopup.com

127.0.0.1  creative.paypopup.com

127.0.0.1  popunder.paypopup.com

127.0.0.1  www1.paypopup.com

127.0.0.1  www2.paypopup.com #[Tenebril.Tracking.Cookie]

127.0.0.1  www3.paypopup.com

127.0.0.1  www4.paypopup.com

127.0.0.1  www5.paypopup.com

127.0.0.1  www6.paypopup.com

127.0.0.1  www7.paypopup.com

127.0.0.1  www8.paypopup.com

127.0.0.1  www9.paypopup.com #[toolbar.cab][hotbar.com]

127.0.0.1  www10.paypopup.com

127.0.0.1  www21.paypopup.com #[SunBelt.PayPopup.com]

127.0.0.1  www210.paypopup.com

127.0.0.1  www211.paypopup.com

127.0.0.1  www212.paypopup.com

127.0.0.1  www213.paypopup.com

127.0.0.1  www214.paypopup.com

127.0.0.1  www215.paypopup.com

127.0.0.1  www216.paypopup.com

127.0.0.1  www217.paypopup.com

127.0.0.1  www218.paypopup.com

127.0.0.1  www219.paypopup.com

127.0.0.1  www220.paypopup.com

127.0.0.1  www221.paypopup.com

127.0.0.1  www.paypopup.com #[eTrust.Tracking.Cookie]

127.0.0.1  popinads.com

127.0.0.1  www.popinads.com

127.0.0.1  www.xxxwebtraffic.com

127.0.0.1  yesadvertising.com

127.0.0.1  test.yesadvertising.com

127.0.0.1  www1.yesadvertising.com

127.0.0.1  www2.yesadvertising.com #[Ad-Aware.Tracking.Cookie]

127.0.0.1  www3.yesadvertising.com

127.0.0.1  www4.yesadvertising.com

127.0.0.1  www5.yesadvertising.com

127.0.0.1  www6.yesadvertising.com

127.0.0.1  www7.yesadvertising.com

127.0.0.1  www8.yesadvertising.com

127.0.0.1  www9.yesadvertising.com

127.0.0.1  www10.yesadvertising.com

127.0.0.1  www11.yesadvertising.com

127.0.0.1  www12.yesadvertising.com

127.0.0.1  www13.yesadvertising.com

127.0.0.1  www14.yesadvertising.com

127.0.0.1  www15.yesadvertising.com

127.0.0.1  www215.yesadvertising.com

127.0.0.1  www216.yesadvertising.com

127.0.0.1  www217.yesadvertising.com

127.0.0.1  www218.yesadvertising.com

127.0.0.1  www219.yesadvertising.com

127.0.0.1  www220.yesadvertising.com

127.0.0.1  www221.yesadvertising.com

127.0.0.1  yesup.com

127.0.0.1  bt.yesup.com

127.0.0.1  reseller.yesup.com

127.0.0.1  us.yesup.com

127.0.0.1  www2.yesup.com

127.0.0.1  www.yesup.com

127.0.0.1  forum.yesup.net

127.0.0.1  www.yesup.net

# [Yesup Ecommerce Solutions][66.48.81.128 - 66.48.81.255]

127.0.0.1  serving.adsrevenue.clicksor.net

127.0.0.1  yourstats.net

127.0.0.1  www.yourstats.net

# [Zao National][77.221.148.0 - 77.221.151.255]

# [Zao National][AS30968][92.243.72.0 - 92.243.75.255]

127.0.0.1  wecanall.net

# [Zango / 180Solutions][CDT Inc]

127.0.0.1  180solutions.com

127.0.0.1  ads.180solutions.com

127.0.0.1  ax.180solutions.com

127.0.0.1  bis.180solutions.com #[ADW_SOLU180.F]

127.0.0.1  config.180solutions.com #[eTrust.180SearchAssistant]

127.0.0.1  his.180solutions.com

127.0.0.1  ping.180solutions.com

127.0.0.1  tv.180solutions.com

127.0.0.1  tvf.180solutions.com

127.0.0.1  www.180solutions.com

127.0.0.1  www.180solutions.net

127.0.0.1  infinity.180searchassistant.com #[ADW_SOLU180.H]

127.0.0.1  msxml.180searchassistant.com #[msxml.infospace.com]

127.0.0.1  powered-by.180searchassistant.com

127.0.0.1  searchresults.180searchassistant.com

127.0.0.1  www.180searchassistant.com #[Adware.180Search]

127.0.0.1  www.abcfreedownloads.com

127.0.0.1  www.abcfreegames.com

127.0.0.1  freegamesclub.com

127.0.0.1  www.fullarmorstudios.com

127.0.0.1  www.games4good.net

127.0.0.1  content.licenseacquisition.org #[Troj/QLowZon-EV]

127.0.0.1  drm.licenseacquisition.org

127.0.0.1  media.licenseacquisition.org #[SiteAdvisor.licenseacquisition.org]

127.0.0.1  origin-cached.licenseacquisition.org

127.0.0.1  preview.licenseacquisition.org

127.0.0.1  metricsdirect.com

127.0.0.1  ads.metricsdirect.com

127.0.0.1  cts.metricsdirect.com

127.0.0.1  reports.metricsdirect.com

127.0.0.1  www.metricsdirect.com

127.0.0.1  www.myfreegamedownloads.com

127.0.0.1  n-case.com

127.0.0.1  www.n-case.com #[Panda.Adware/nCase]

127.0.0.1  games.platrium.com

127.0.0.1  gec.platrium.com

127.0.0.1  installs.platrium.com

127.0.0.1  preview.platrium.com

127.0.0.1  www.platrium.com

127.0.0.1  search.prositefinder.com #[SunBelt.bho.180Solutions.ProSiteFinder][ValueClick]

127.0.0.1  seekmo.com #[Adware.180Solutions.SearchAssistant]

127.0.0.1  config.seekmo.com

127.0.0.1  cts.seekmo.com

127.0.0.1  downloads.seekmo.com

127.0.0.1  galleries.seekmo.com

127.0.0.1  installs.seekmo.com

127.0.0.1  powered-by.seekmo.com

127.0.0.1  tvf.seekmo.com

127.0.0.1  allofthevideos.powered-by.seekmo.com

127.0.0.1  freeblowjobmovies.powered-by.seekmo.com

127.0.0.1  freeblowjobvideos.powered-by.seekmo.com

127.0.0.1  free-hd-movies.powered-by.seekmo.com

127.0.0.1  funberry.powered-by.seekmo.com

127.0.0.1  keyrastriptease.powered-by.seekmo.com

127.0.0.1  male-celeb-videos.powered-by.seekmo.com

127.0.0.1  pariswallpapers.powered-by.seekmo.com #[WildcardDNS]

127.0.0.1  slutmatrixfree.powered-by.seekmo.com

127.0.0.1  vidshrine.com.powered-by.seekmo.com

127.0.0.1  wallpapernudes.powered-by.seekmo.com

127.0.0.1  te.seekmo.com

127.0.0.1  tv.seekmo.com #[MVPS.Criteria]

127.0.0.1  www.seekmo.com

127.0.0.1  tons-of-free-downloads.com

127.0.0.1  tons-of-free-games.com

127.0.0.1  www.tonsoffreedownloads.com

127.0.0.1  www.tonsoffreegames.com

127.0.0.1  www.totallycoolfreedownloads.com

127.0.0.1  totallyfunfreegames.com

127.0.0.1  www.totallyfunfreegames.com

127.0.0.1  white.totallyfunfreestuff.com

127.0.0.1  www.totallyfunfreestuff.com

127.0.0.1  zango.com #[SiteAdvisor.zango]

127.0.0.1  adservices.zango.com

127.0.0.1  analytics.zango.com #[zango.com.112.2o7.net]

127.0.0.1  cds.zango.com

127.0.0.1  acces.powered-by.zango.com

127.0.0.1  animeim.powered-by.zango.com

127.0.0.1  annakournikova.powered-by.zango.com

127.0.0.1  cars-screensavers.com.powered-by.zango.com

127.0.0.1  clickpixcursors.powered-by.zango.com

127.0.0.1  coolvuurwerk.powered-by.zango.com

127.0.0.1  dane-cook.powered-by.zango.com

127.0.0.1  davesemu.com.powered-by.zango.com

127.0.0.1  deansplanet.com.powered-by.zango.com #[WildcardDNS]

127.0.0.1  factorygames.powered-by.zango.com

127.0.0.1  fightvideos.powered-by.zango.com

127.0.0.1  fightvids.powered-by.zango.com

127.0.0.1  flashaddictinggames.powered-by.zango.com

127.0.0.1  frazoogames.powered-by.zango.com

127.0.0.1  free.karaoke.songs.powered-by.zango.com

127.0.0.1  freesudokus.powered-by.zango.com

127.0.0.1  freetoplay.ath.cx.powered-by.zango.com

127.0.0.1  games.byethost32.powered-by.zango.com

127.0.0.1  gate1.powered-by.zango.com

127.0.0.1  gate2.powered-by.zango.com

127.0.0.1  gate3.powered-by.zango.com

127.0.0.1  gate4.powered-by.zango.com

127.0.0.1  gate5.powered-by.zango.com

127.0.0.1  gate6.powered-by.zango.com

127.0.0.1  gate7.powered-by.zango.com

127.0.0.1  gate8.powered-by.zango.com

127.0.0.1  gate9.powered-by.zango.com

127.0.0.1  gate10.powered-by.zango.com

127.0.0.1  gate11.powered-by.zango.com

127.0.0.1  gate12.powered-by.zango.com

127.0.0.1  gauntletvideos.powered-by.zango.com

127.0.0.1  getmusicvideocodes.powered-by.zango.com

127.0.0.1  graffitifonts.powered-by.zango.com #[Wildcard DNS]

127.0.0.1  hot-lindsay.powered-by.zango.com

127.0.0.1  iconcave.powered-by.zango.com

127.0.0.1  idrink.powered-by.zango.com

127.0.0.1  lavacards.powered-by.zango.com

127.0.0.1  martinahingis.powered-by.zango.com

127.0.0.1  maratsafin.powered-by.zango.com

127.0.0.1  mediagecko.powered-by.zango.com

127.0.0.1  midis.powered-by.zango.com

127.0.0.1  mmocenter.org.powered-by.zango.com

127.0.0.1  musicvideocodes.powered-by.zango.com

127.0.0.1  mvcodezone.powered-by.zango.com

127.0.0.1  mydisplayimage.powered-by.zango.com

127.0.0.1  myfriendspy.powered-by.zango.com

127.0.0.1  mymoneymakers.powered-by.zango.com

127.0.0.1  myspace.powered-by.zango.com

127.0.0.1  myspace-backgrounds.powered-by.zango.com

127.0.0.1  myspace-codes.powered-by.zango.com

127.0.0.1  myspacegraphics.powered-by.zango.com

127.0.0.1  myspacegraphicsx.powered-by.zango.com

127.0.0.1  myspaceicons.powered-by.zango.com

127.0.0.1  myspaceiconsorg.powered-by.zango.com

127.0.0.1  myspacelayouts.powered-by.zango.com

127.0.0.1  mytop12.com.powered-by.zango.com

127.0.0.1  narutowallpaper.powered-by.zango.com

127.0.0.1  newgrounds.dressup.powered-by.zango.com

127.0.0.1  ophq.powered-by.zango.com

127.0.0.1  pbxanime.powered-by.zango.com

127.0.0.1  phoenixpeople.powered-by.zango.com

127.0.0.1  planet.nana.co.il.powered-by.zango.com

127.0.0.1  pokemonporn.powered-by.zango.com

127.0.0.1  screensaverparadise.powered-by.zango.com

127.0.0.1  sfondigratis.powered-by.zango.com

127.0.0.1  stacy-keibler-pictures.powered-by.zango.com

127.0.0.1  snapshot.powered-by.zango.com

127.0.0.1  theamazingracist.powered-by.zango.com

127.0.0.1  trenchracing.powered-by.zango.com

127.0.0.1  userbars.org.powered-by.zango.com

127.0.0.1  vcc.powered-by.zango.com

127.0.0.1  vimalonline.powered-by.zango.com

127.0.0.1  videocodesworld.powered-by.zango.com

127.0.0.1  whatsthatcode.com.powered-by.zango.com

127.0.0.1  wwedivas.powered-by.zango.com

127.0.0.1  xtreme-cheats.powered-by.zango.com

127.0.0.1  downloads.zango.com #[SunBelt.180Solutions.Zango.TVTimes]

127.0.0.1  games.zango.com #[SunBelt.Adw.Zango.Solitaire]

127.0.0.1  hosted.zango.com

127.0.0.1  lp.zango.com #[McAfee.Adware-ZangoSA]

127.0.0.1  imp.games.zango.com

127.0.0.1  installs.zango.com #[installs.zango.com.edgesuite.net]

127.0.0.1  messenger.zango.com

127.0.0.1  msxml.zango.com #[msxml.infospace.com]

127.0.0.1  partner.zango.com

127.0.0.1  powered-by.zango.com

127.0.0.1  shared.zango.com

127.0.0.1  showtimes.zango.com #[SpySweeper.180search assistant/zango]

127.0.0.1  sitefinder.zango.com #[zangositefinder.simpli.com][ValueClick]

127.0.0.1  te1.zango.com

127.0.0.1  tvf.zango.com

127.0.0.1  tv.zango.com

127.0.0.1  www.zango.com #[Adware.ZangoSearch]

127.0.0.1  zangocash.com #[SiteAdvisor.zangocash.com]

127.0.0.1  partner.zangocash.com

127.0.0.1  prompt.zangocash.com #[eTrust.Win32/Anyhomb.D]

127.0.0.1  public.zangocash.com

127.0.0.1  static.zangocash.com #[CVE-2006-2324][Troj/QLowZon-EV]

127.0.0.1  syndication.zangocash.com

127.0.0.1  www.zangocash.com

127.0.0.1  www.zangogames.com

127.0.0.1  www.zangomessenger.com

127.0.0.1  www.zangopartner.com

127.0.0.1  www.zangopartner.net

127.0.0.1  event.zroitracker.com

# [Zango via HotBar]

127.0.0.1  www.datez.com

127.0.0.1  emoticons4us.com

127.0.0.1  www.emoticons4us.com

127.0.0.1  www.estationery.com

127.0.0.1  www.ezaza.com

127.0.0.1  e-zaza.com

127.0.0.1  www.e-zaza.com

127.0.0.1  fastutilities.com

127.0.0.1  www.fastutilities.com

127.0.0.1  hotbar.com #[SPYW_HOTBAR.P][AdWare.Win32.180Solutions.ay]

127.0.0.1  ads.hotbar.com #[SpySweeper.Spy.Cookie]

127.0.0.1  cs.hotbar.com

127.0.0.1  dynamic.hotbar.com

127.0.0.1  dynmenu.hotbar.com

127.0.0.1  hbmd.hotbar.com

127.0.0.1  installs.hotbar.com #[Win32/Adware.HotBar][McAfee.Adware-HotBar]

127.0.0.1  license.hotbar.com

127.0.0.1  partners.hotbar.com

127.0.0.1  promos.hotbar.com

127.0.0.1  reports.hotbar.com

127.0.0.1  searchdisp.hotbar.com

127.0.0.1  skins.hotbar.com

127.0.0.1  tooltips.hotbar.com

127.0.0.1  updates.hotbar.com

127.0.0.1  vip-farm2.hotbar.com

127.0.0.1  vip-farm1v.hotbar.com

127.0.0.1  vip-farm2v.hotbar.com

127.0.0.1  vip-farm5v.hotbar.com

127.0.0.1  www.hotbar.com #[ADW_HOTBAR.O][Edelman.HotBar][Win32.Adware.HotBar]

127.0.0.1  www.hotbar2.com

127.0.0.1  www.hotbar.net

127.0.0.1  hotbarmemberdirectory.com

127.0.0.1  net-offers.net

127.0.0.1  www.pcpolish.com

127.0.0.1  cfg.shopperreports.com

127.0.0.1  code.shopperreports.com

127.0.0.1  cs.shopperreports.com #[Trackware.SmartShopper]

127.0.0.1  dynamic.shopperreports.com

127.0.0.1  reports.shopperreports.com #[Adware-HotBar.dr]

127.0.0.1  updates.shopperreports.com

127.0.0.1  upgrades.shopperreports.com #[AdWare.Win32.Shopper.k]

127.0.0.1  www.shopperreports.com #[Adware-ShopprReports]

127.0.0.1  smartshopper.com

127.0.0.1  cs.smartshopper.com #[McAfee.Adware-SmartShopper]

127.0.0.1  installs.smartshopper.com

127.0.0.1  www.smartshopper.com

127.0.0.1  www.smartshoppernetworks.com

127.0.0.1  software4thenet.com

127.0.0.1  www.software4thenet.com

127.0.0.1  spamblockerutility.com

127.0.0.1  installs.spamblockerutility.com

127.0.0.1  updates.spamblockerutility.com

127.0.0.1  www.spamblockerutility.com #[SiteAdvisor.spamblockerutility.com]

127.0.0.1  www.spamfree.com

127.0.0.1  page-not-found.net #[McAfee.Adware-HotBar]

127.0.0.1  shopperreports.pricetool.com #[Hotbar.ShoppingReports]

127.0.0.1  resultsmaster.com

127.0.0.1  www.resultsmaster.com #[Adware.Hotbar]

# [ZapSpot, Inc]

127.0.0.1  www.p3marketing.com

127.0.0.1  download.zapspot.com #[SiteAdvisor.zapspot]

127.0.0.1  www.zapspot.com #[eTrust.ZapSpot]

# [ZEDO][AS26914][64.127.125.112 - 64.127.125.127]

127.0.0.1  l7.zedo.com

127.0.0.1  click.zxxds.net

# [ZEDO]

127.0.0.1  zedo.com #[SecuritySpace.WebBug]

127.0.0.1  ads.zedo.com #[McAfee.Cookie-Zedo]

127.0.0.1  c1.zedo.com #[a1979.g.akamai.net]

127.0.0.1  c2.zedo.com #[SpySweeper.Spy.Cookie]

127.0.0.1  c3.zedo.com

127.0.0.1  c4.zedo.com #[zedo.vo.llnwd.net]

127.0.0.1  c5.zedo.com

127.0.0.1  c6.zedo.com

127.0.0.1  c7.zedo.com

127.0.0.1  c8.zedo.com #[zedo.vo.llnwd.net]

127.0.0.1  d2.zedo.com

127.0.0.1  d3.zedo.com

127.0.0.1  d7.zedo.com

127.0.0.1  freeze.zedo.com

127.0.0.1  g.zedo.com #[zedo.live365.com]

127.0.0.1  gw.zedo.com

127.0.0.1  h.zedo.com

127.0.0.1  l1.zedo.com #[a1101.g.akamai.net]

127.0.0.1  l2.zedo.com

127.0.0.1  l3.zedo.com

127.0.0.1  l4.zedo.com #[Panda.Spyware:Cookie/Zedo]

127.0.0.1  l5.zedo.com

127.0.0.1  l6.zedo.com #[a515.g.akamai.net][Tenebril.Tracking.Cookie]

127.0.0.1  l8.zedo.com

127.0.0.1  r1.zedo.com

127.0.0.1  simg.zedo.com #[zedo.vo.llnwd.net][a556.g.akamai.net]

127.0.0.1  ss1.zedo.com

127.0.0.1  ss2.zedo.com

127.0.0.1  ss7.zedo.com

127.0.0.1  xads.zedo.com

127.0.0.1  yads.zedo.com

127.0.0.1  www.zedo.com #[Adware.RaxSearch]

127.0.0.1  c1.zxxds.net #[g1.panthercdn.com]

127.0.0.1  c7.zxxds.net

# [Zenex 5ive][AS29131][78.129.244.64 - 78.129.244.127]

127.0.0.1  www.totemcash.com #[SiteAdvisor.totemcash.com

127.0.0.1  banners.toteme.com

127.0.0.1  cachebanners.toteme.com

# [Zhongbangyatong Telecom][AS17964][124.207.0.0 - 124.207.127.255]

# [Zipservers Inc][74.86.243.176 - 74.86.243.183]

127.0.0.1  tophot-video.com #[Google.Diagnostic]

# [Zlkon / Datoru Express][AS12553][94.247.2.0 - 94.247.3.255]

127.0.0.1  astrumantivirus.com

127.0.0.1  av-plus-support.com

127.0.0.1  avscanonline.com

127.0.0.1  gogo2me.net

127.0.0.1  isafeantvirus.com

127.0.0.1  isafeantivirus.com

127.0.0.1  isaferantivirus.com

127.0.0.1  isafe-antivirus.com

127.0.0.1  isafeantivir.com

127.0.0.1  isafeantiviruspro.com

127.0.0.1  files.msas2009dl.com

127.0.0.1  rusexportal.com

127.0.0.1  int.sysreport1.com

127.0.0.1  int.sysreport2.com

127.0.0.1  traff.asia

127.0.0.1  truthisoutthere.cn #[server down?]

#end of lines added by WinHelp2002

EndOfFile
            ) | zenity --progress --title="Bloqueador de Páginas Web" --text=" Añadiendo las Lineas de las Páginas Bloqueadas " --pulsate --percentage=2
            xkbbell
            zenity --info --title="Bloqueador de Páginas Web" --text=" Archivo Listo. "
            zenity --info --title="Bloqueador de Páginas Web" --text=" Páginas Bloqueadas!\n Al intentar conectar a estas páginas\n el navegador irá a una página de error. "
;;
"Bloquear Páginas Individuales" )
            zenity --info --title="Bloqueador de Páginas Web" --text=" Ahora se Añadirán las Páginas seleccionadas al archivo 'hosts'. "
            zenity --info --title="Bloqueador de Páginas Web" --text=" Para añadir mas páginas seleccionar de nuevo la opción.\n    'Bloquear Páginas Individuales'"
            (
# Insertar las páginas predeterminadas del archivo
echo "127.0.0.1	`zenity --entry --title="Bloqueador de Páginas Web" --text=" Escriba la dirección de la página a bloquear SIN http://
 Ejemplo: www.loquesea.com.


 En algunos casos se recomienda repetir la misma dirección SIN el www.
 Ejemplo: loquesea.com."` " >> datos/hoststemp
cat datos/hoststemp >> /etc/hosts
rm datos/hoststemp
) | zenity --progress --title="Bloqueador de Páginas Web" --text=" Añadiendo las Lineas de las Páginas Bloqueadas " --pulsate --percentage=2
            xkbbell
            zenity --info --title="Bloqueador de Páginas Web" --text=" Archivo Listo.\n\n\n Si Deseas añadir otra página repite el proceso anterior. "
            zenity --info --title="Bloqueador de Páginas Web" --text=" Páginas Bloqueadas!\n Al intentar conectar a estas páginas\n el navegador irá a una página de error. "
;;
*)
            break
          ;;
        esac
      done
    ;;
    *)
      break
    ;;
  esac
done
#
#
