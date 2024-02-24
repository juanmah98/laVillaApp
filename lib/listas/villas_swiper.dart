class SwiperItem {
  final String imageVillaUrl;
  final String linkVillaUrl;
   final String imageDriveUrl;
  final String linkDriveUrl;

  SwiperItem({required this.imageVillaUrl, required this.linkVillaUrl, required this.imageDriveUrl, required this.linkDriveUrl});

  static List<SwiperItem> getSwiperItems() {
    return [
      SwiperItem(
        imageVillaUrl: 'https://img.freepik.com/fotos-premium/hermosa-casa-naranja-exterior-increible-vista-frente-casa_884986-88.jpg',
        linkVillaUrl: 'https://maps.app.goo.gl/x3nY7ZzNXsY4iF7UA',

        imageDriveUrl: 'https://drive.google.com/uc?export=view&id=1HlqLtPlyIeWc1G_v1YAfCfcZIELubnAd',
        linkDriveUrl: 'https://drive.google.com/drive/folders/18hNZqdmp0aL-GuEadGDaWIUTjlQviZnO',
        
      ),
       SwiperItem(
        imageVillaUrl: 'https://www.proyectosdecasas.es/files/images/Mondiego-proyecto-casa-clasica-z171.jpg',
        linkVillaUrl: 'https://maps.app.goo.gl/x3nY7ZzNXsY4iF7UA',

        imageDriveUrl: 'https://drive.google.com/uc?export=view&id=1GmAJpNZKUMb18J5TvEfI6iaQ0wnV5XcZ',
        linkDriveUrl: 'https://drive.google.com/drive/folders/18hNZqdmp0aL-GuEadGDaWIUTjlQviZnO',
        
      ),
     /* SwiperItem(
        imageVillaUrl: 'https://img.freepik.com/fotos-premium/hermosa-casa-naranja-exterior-increible-vista-frente-casa_884986-88.jpg',
        linkVillaUrl: 'https://maps.app.goo.gl/x3nY7ZzNXsY4iF7UA',
        imageDriveUrl: 'https://example.com/image2.jpg',
        linkDriveUrl: 'https://example.com/link2',
      ), */
      
      // Define los datos para los otros items aquí
    ];
  }
}
