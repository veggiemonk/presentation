variable "org_id" {}

variable "billing_id" {}

variable "region" {
  default = "europe-west1"
}

variable "project_id" {
  #   default = "default-project-160900"
}

variable "email_owner" {
  default = "trainer@gmail.com"
}

variable "trainees" {
  type = "list"

  default = [
    "trainee1@gmail.com",
    "trainee2@gmail.com",
    "trainee3@gmail.com",
  ]
}

variable "services" {
  type = "list"

  default = [
    # "abusiveexperiencereport.googleapis.com",                # Abusive Experience Report API
    # "acceleratedmobilepageurl.googleapis.com",               # Accelerated Mobile Pages (AMP) URL API
    # "accessapproval.googleapis.com",                         # Access Approval API
    # "accesscontextmanager.googleapis.com",                   # Access Context Manager API
    # "actions.googleapis.com",                                # Actions API
    # "adexchangebuyer-json.googleapis.com",                   # Ad Exchange Buyer API
    # "adexchangebuyer.googleapis.com",                        # Ad Exchange Buyer API II
    # "adexchangeseller.googleapis.com",                       # Ad Exchange Seller API
    # "adexperiencereport.googleapis.com",                     # Ad Experience Report API
    # "admin.googleapis.com",                                  # Admin SDK
    # "adsense.googleapis.com",                                # AdSense Management API
    # "adsensehost.googleapis.com",                            # AdSense Host API
    # "alertcenter.googleapis.com",                            # G Suite Alert Center API
    # "analytics.googleapis.com",                              # Analytics API
    # "analyticsreporting.googleapis.com",                     # Analytics Reporting API
    # "androidcheck.googleapis.com",                           # Android Device Verification
    # "androiddeviceprovisioning.googleapis.com",              # Android Device Provisioning Partner API
    # "androidenterprise.googleapis.com",                      # Google Play EMM API
    # "androidmanagement.googleapis.com",                      # Android Management API
    # "androidovertheair.googleapis.com",                      # Android Over the Air API
    # "androidpublisher.googleapis.com",                       # Google Play Android Developer API
    # "apikeys.googleapis.com",                                # API Keys API
    # "appengine.googleapis.com",                              # App Engine Admin API
    # "appengineflex.googleapis.com",                          # Google App Engine Flexible Environment
    # "appsactivity.googleapis.com",                           # Apps Activity API
    # "appsmarket-component.googleapis.com",                   # G Suite Marketplace SDK
    # "appsmarket.googleapis.com",                             # G Suite Marketplace API
    # "arcorecloudanchor.googleapis.com",                      # ARCore Cloud Anchor API
    # "audit.googleapis.com",                                  # Audit API
    # "automl.googleapis.com",                                 # Cloud AutoML API
    # "bigquery-json.googleapis.com",                          # BigQuery API
    # "bigquerydatatransfer.googleapis.com",                   # BigQuery Data Transfer API
    # "bigquerystorage.googleapis.com",                        # BigQuery Storage API
    # "bigtable.googleapis.com",                               # Cloud Bigtable API
    # "bigtableadmin.googleapis.com",                          # Cloud Bigtable Admin API
    # "bigtabletableadmin.googleapis.com",                     # Cloud Bigtable Table Admin API
    # "binaryauthorization.googleapis.com",                    # Binary Authorization API
    # "blogger.googleapis.com",                                # Blogger API v3
    # "books.googleapis.com",                                  # Google Books API
    # "bookstore.endpoints.endpoints-portal-demo.cloud.goo",g  # Bookstore gRPC API
    # "caldav.googleapis.com",                                 # CalDAV API
    # "calendar-json.googleapis.com",                          # Google Calendar API
    # "carddav.googleapis.com",                                # Google Contacts CardDAV API
    # "chat.googleapis.com",                                   # Hangouts Chat API
    # "chromewebstore.googleapis.com",                         # Chrome Web Store API
    # "civicinfo.googleapis.com",                              # Civic Information API
    # "classroom.googleapis.com",                              # Google Classroom API
    # "cloudapis.googleapis.com",                              # Google Cloud APIs
    # "cloudasset.googleapis.com",                             # Cloud Asset API
    # "cloudbilling.googleapis.com",                           # Cloud Billing API
    # "cloudbuild.googleapis.com",                             # Cloud Build API
    # "clouddebugger.googleapis.com",                          # Stackdriver Debugger API
    # "clouderrorreporting.googleapis.com",                    # Stackdriver Error Reporting API
    # "cloudfunctions.googleapis.com",                         # Cloud Functions API
    # "cloudidentity.googleapis.com",                          # Cloud Identity API
    # "cloudiot.googleapis.com",                               # Cloud IoT API
    # "cloudkms.googleapis.com",                               # Cloud Key Management Service (KMS) API
    # "cloudlatencytest.googleapis.com",                       # Cloud Network Performance Monitoring API
    # "cloudmonitoring.googleapis.com",                        # Cloud Monitoring API
    # "cloudprivatecatalog.googleapis.com",                    # Cloud Private Catalog API
    # "cloudprivatecatalogproducer.googleapis.com",            # Cloud Private Catalog Producer API
    # "cloudprofiler.googleapis.com",                          # Stackdriver Profiler API
    # "cloudresourcemanager.googleapis.com",                   # Cloud Resource Manager API
    # "cloudscheduler.googleapis.com",                         # Cloud Scheduler API
    # "cloudsearch.googleapis.com",                            # Cloud Search API
    "cloudshell.googleapis.com", # Cloud Shell API

    # "cloudtasks.googleapis.com",                             # Cloud Tasks API
    # "cloudtrace.googleapis.com",                             # Stackdriver Trace API
    # "commentanalyzer.googleapis.com",                        # Perspective Comment Analyzer API
    # "composer.googleapis.com",                               # Cloud Composer API
    "compute.googleapis.com", # Compute Engine API

    # "contacts.googleapis.com",                               # Contacts API
    # "container.googleapis.com",                              # Kubernetes Engine API
    # "containeranalysis.googleapis.com",                      # Container Analysis API
    "containerregistry.googleapis.com", # Container Registry API

    # "containerscanning.googleapis.com",                      # Container Scanning API
    # "copresence.googleapis.com",                             # Nearby Messages API
    # "customsearch.googleapis.com",                           # Custom Search API
    # "datacatalog.googleapis.com",                            # Google Cloud Data Catalog API
    # "dataflow.googleapis.com",                               # Dataflow API
    # "datafusion.googleapis.com",                             # Cloud Data Fusion API
    # "datalabeling.googleapis.com",                           # Data Labeling API
    # "dataproc.googleapis.com",                               # Cloud Dataproc API
    # "datastore.googleapis.com",                              # Cloud Datastore API
    # "deploymentmanager.googleapis.com",                      # Cloud Deployment Manager V2 API
    # "dfareporting.googleapis.com",                           # DCM/DFA Reporting And Trafficking API
    # "dialogflow.googleapis.com",                             # Dialogflow API
    # "digitalassetlinks.googleapis.com",                      # Digital Asset Links API
    # "directions-backend.googleapis.com",                     # Directions API
    # "distance-matrix-backend.googleapis.com",                # Distance Matrix API
    # "dlp.googleapis.com",                                    # Cloud Data Loss Prevention (DLP) API
    # "dlqs.endpoints.datalake-dev-688384a6.cloud.goo",g       # NetEnt Data Services Report API
    # "dns.googleapis.com",                                    # Google Cloud DNS API
    # "docs.googleapis.com",                                   # Google Docs API
    # "doubleclickbidmanager.googleapis.com",                  # DoubleClick Bid Manager API
    # "doubleclicksearch.googleapis.com",                      # DoubleClick Search API
    # "drive.googleapis.com",                                  # Google Drive API
    # "driveactivity.googleapis.com",                          # Drive Activity API
    # "echo-api.endpoints.endpoints-portal-demo.cloud.goo",g   # Endpoints Example
    # "elevation-backend.googleapis.com",                      # Maps Elevation API
    # "embeddedassistant.googleapis.com",                      # Google Assistant API
    # "endpoints.googleapis.com",                              # Google Cloud Endpoints
    # "endpointsportal.googleapis.com",                        # Cloud Endpoints Portal
    # "factchecktools.googleapis.com",                         # Fact Check Tools API
    # "fcm.googleapis.com",                                    # Firebase Cloud Messaging API
    # "file.googleapis.com",                                   # Cloud Filestore API
    # "firebase.googleapis.com",                               # Firebase Management API
    # "firebaseappdistribution.googleapis.com",                # Firebase App Distribution API
    # "firebasedynamiclinks.googleapis.com",                   # Firebase Dynamic Links API
    # "firebasehosting.googleapis.com",                        # Firebase Hosting API
    # "firebaseinappmessaging.googleapis.com",                 # Firebase In-App Messaging API
    # "firebaseinstallations.googleapis.com",                  # Firebase Installations API
    # "firebaseremoteconfig.googleapis.com",                   # Firebase Remote Config API
    # "firebaserules.googleapis.com",                          # Firebase Rules API
    # "firestore.googleapis.com",                              # Cloud Firestore API
    # "fitness.googleapis.com",                                # Fitness API
    # "freebase.googleapis.com",                               # Freebase API
    # "fusiontables.googleapis.com",                           # Fusion Tables API
    # "games.googleapis.com",                                  # Google Play Game Services
    # "gamesconfiguration.googleapis.com",                     # Google Play Game Services Publishing API
    # "gamesmanagement.googleapis.com",                        # Google Play Game Management
    # "genomics.googleapis.com",                               # Genomics API
    # "geocoding-backend.googleapis.com",                      # Geocoding API
    # "geolocation.googleapis.com",                            # Geolocation API
    # "gmail.googleapis.com",                                  # Gmail API
    # "googleads.googleapis.com",                              # Google Ads API
    # "googlecloudmessaging.googleapis.com",                   # Cloud Messaging
    # "groupsmigration.googleapis.com",                        # Groups Migration API
    # "groupssettings.googleapis.com",                         # Groups Settings API
    # "healthcare.googleapis.com",                             # Cloud Healthcare API
    # "homegraph.googleapis.com",                              # HomeGraph API
    # "iam.googleapis.com",                                    # Identity and Access Management (IAM) API
    # "iamcredentials.googleapis.com",                         # IAM Service Account Credentials API
    # "iap.googleapis.com",                                    # Cloud Identity-Aware Proxy API
    # "ics.endpoints.datalake-dev-688384a6.cloud.goo",g        # ICS API
    # "identitytoolkit.googleapis.com",                        # Identity Toolkit API
    # "indexing.googleapis.com",                               # Indexing API
    # "istioca.googleapis.com",                                # Istio Certificate Authority API
    # "jobs.googleapis.com",                                   # Cloud Talent Solution API
    # "kgsearch.googleapis.com",                               # Knowledge Graph Search API
    # "language.googleapis.com",                               # Cloud Natural Language API
    # "libraryagent.googleapis.com",                           # Library Agent API
    # "licensing.googleapis.com",                              # Enterprise License Manager API
    # "logging.googleapis.com",                                # Stackdriver Logging API
    # "managedidentities.googleapis.com",                      # Managed Service for Microsoft Active Directory API
    # "manufacturers.googleapis.com",                          # Manufacturer Center API
    # "maps-android-backend.googleapis.com",                   # Maps SDK for Android
    # "maps-backend.googleapis.com",                           # Maps JavaScript API
    # "maps-embed-backend.googleapis.com",                     # Maps Embed API
    # "maps-ios-backend.googleapis.com",                       # Maps SDK for iOS
    # "migrate.googleapis.com",                                # G Suite Migrate API
    # "mirror.googleapis.com",                                 # Mirror API
    # "ml.googleapis.com",                                     # Cloud Machine Learning Engine
    # "mlkit.googleapis.com",                                  # ML Kit API
    # "mobilecrashreporting.googleapis.com",                   # Mobile Crash Reporting API
    # "monitoring.googleapis.com",                             # Stackdriver Monitoring API
    # "moviesanywhere.googleapis.com",                         # Play Movies Anywhere API
    # "orkut.googleapis.com",                                  # Orkut REST API
    "oslogin.googleapis.com", # Cloud OS Login API
    # "pagespeedonline.googleapis.com",                        # PageSpeed Insights API
    # "partners-json.googleapis.com",                          # Google Partners API
    # "people.googleapis.com",                                 # People API
    # "photoslibrary.googleapis.com",                          # Photos Library API
    # "picker.googleapis.com",                                 # Google Picker API
    # "places-backend.googleapis.com",                         # Places API
    # "playcustomapp.googleapis.com",                          # Google Play Custom App Publishing API
    # "plus.googleapis.com",                                   # Google+ API
    # "plusdomains.googleapis.com",                            # Google+ Domains API
    # "plushangouts.googleapis.com",                           # Google+ Hangouts API
    # "poly.googleapis.com",                                   # Poly API
    # "proximitybeacon.googleapis.com",                        # Proximity Beacon API
    # "pubsub.googleapis.com",                                 # Cloud Pub/Sub API
    # "realtime.googleapis.com",                               # Realtime API
    # "redis.googleapis.com",                                  # Google Cloud Memorystore for Redis API
    # "remotebuildexecution.googleapis.com",                   # Remote Build Execution API
    "replicapool.googleapis.com", # Compute Engine Instance Group Manager API

    "replicapoolupdater.googleapis.com", # Compute Engine Instance Group Updater API

    # "reseller.googleapis.com",                               # Google Apps Reseller API
    "resourceviews.googleapis.com", # Compute Engine Instance Groups API

    # "risc.googleapis.com",                                   # RISC API
    # "roads.googleapis.com",                                  # Roads API
    # "run.googleapis.com",                                    # Cloud Run API
    # "runtimeconfig.googleapis.com",                          # Cloud Runtime Configuration API
    # "safebrowsing-json.googleapis.com",                      # Safe Browsing API (Legacy)
    # "safebrowsing.googleapis.com",                           # Safe Browsing API
    # "script.googleapis.com",                                 # Apps Script API
    # "searchconsole.googleapis.com",                          # Google Search Console URL Testing Tools API
    # "securetoken.googleapis.com",                            # Token Service API
    # "securitycenter.googleapis.com",                         # Cloud Security Command Center API
    # "servicebroker.googleapis.com",                          # Service Broker API
    # "serviceconsumermanagement.googleapis.com",              # Service Consumer Management API
    # "servicecontrol.googleapis.com",                         # Service Control API
    # "servicemanagement.googleapis.com",                      # Service Management API
    # "servicenetworking.googleapis.com",                      # Service Networking API
    # "serviceusage.googleapis.com",                           # Service Usage API
    # "sheets.googleapis.com",                                 # Google Sheets API
    # "shoppingcontent.googleapis.com",                        # Content API for Shopping
    # "siteverification.googleapis.com",                       # Site Verification API
    # "slides.googleapis.com",                                 # Google Slides API
    # "sourcerepo.googleapis.com",                             # Cloud Source Repositories API
    # "spanner.googleapis.com",                                # Cloud Spanner API
    # "speech.googleapis.com",                                 # Cloud Speech-to-Text API
    # "sql-component.googleapis.com",                          # Cloud SQL
    # "sqladmin.googleapis.com",                               # Cloud SQL Admin API
    # "stackdriver.googleapis.com",                            # Stackdriver API
    # "static-maps-backend.googleapis.com",                    # Maps Static API
    "storage-api.googleapis.com", # Google Cloud Storage JSON API

    "storage-component.googleapis.com", # Cloud Storage
  ]

  # "storagetransfer.googleapis.com",                        # Storage Transfer API
  # "street-view-image-backend.googleapis.com",              # Street View Static API
  # "streetviewpublish.googleapis.com",                      # Street View Publish API
  # "subscribewithgoogle.googleapis.com",                    # Subscribe with Google Publication API
  # "subscribewithgoogledeveloper.googleapis.com",           # Subscribe with Google Developer API
  # "surveys.googleapis.com",                                # Surveys API
  # "tagmanager.googleapis.com",                             # Tag Manager API
  # "tasks.googleapis.com",                                  # Tasks API
  # "testing.googleapis.com",                                # Cloud Testing API
  # "texttospeech.googleapis.com",                           # Cloud Text-to-Speech API
  # "timezone-backend.googleapis.com",                       # Time Zone API
  # "toolresults.googleapis.com",                            # Cloud Tool Results API
  # "tpu.googleapis.com",                                    # Cloud TPU API
  # "trafficdirector.googleapis.com",                        # Traffic Director API
  # "translate.googleapis.com",                              # Cloud Translation API
  # "travelpartner.googleapis.com",                          # Travel Hotel Ads API
  # "urlshortener.googleapis.com",                           # URL Shortener API
  # "usercontext.googleapis.com",                            # Awareness API
  # "vault.googleapis.com",                                  # G Suite Vault API
  # "videointelligence.googleapis.com",                      # Cloud Video Intelligence API
  # "vision.googleapis.com",                                 # Cloud Vision API
  # "vmmigration.googleapis.com",                            # VM Migration API
  # "vpcaccess.googleapis.com",                              # Serverless VPC Access API
  # "webfonts.googleapis.com",                               # Web Fonts Developer API
  # "webmasters.googleapis.com",                             # Google Search Console API
  # "websecurityscanner.googleapis.com",                     # Web Security Scanner API
  # "youtube.googleapis.com",                                # YouTube Data API v3
  # "youtubeadsreach.googleapis.com",                        # YouTube Ads Reach API
  # "youtubeanalytics.googleapis.com",                       # YouTube Analytics API
  # "youtubereporting.googleapis.com",                       # YouTube Reporting API
  # "zync.googleapis.com",                                   # Zync Render API
}
