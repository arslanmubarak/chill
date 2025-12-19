plugins {
    id("com.android.application")
    id("kotlin-android")
    // Flutter plugin must be after Android & Kotlin
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.gms.google-services")
}

android {
    namespace = "com.muzaitechsols.ride" // ✅ Must match Firebase
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
        coreLibraryDesugaringEnabled = true
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.muzaitechsols.ride" // ✅ Must match Firebase google-services.json
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug") // Use debug signing if no release keystore
            minifyEnabled = false
            shrinkResources = false
            proguardFiles getDefaultProguardFile('proguard-android-optimize.txt'), 'proguard-rules.pro'
        }
        debug {
            signingConfig = signingConfigs.getByName("debug")
        }
    }

    sourceSets {
        main.java.srcDirs += 'src/main/kotlin'
    }
}

flutter {
    source = "../.."
}

dependencies {
    implementation platform('com.google.firebase:firebase-bom:33.1.0')
    coreLibraryDesugaring 'com.android.tools:desugar_jdk_libs:2.1.4'
}
