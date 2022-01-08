.class public Lcom/facebook/react/PackageList;
.super Ljava/lang/Object;
.source "PackageList.java"


# instance fields
.field private application:Landroid/app/Application;

.field private mConfig:Lcom/facebook/react/shell/MainPackageConfig;

.field private reactNativeHost:Lcom/facebook/react/ReactNativeHost;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/PackageList;-><init>(Landroid/app/Application;Lcom/facebook/react/shell/MainPackageConfig;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/facebook/react/shell/MainPackageConfig;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/facebook/react/PackageList;->reactNativeHost:Lcom/facebook/react/ReactNativeHost;

    .line 107
    iput-object p1, p0, Lcom/facebook/react/PackageList;->application:Landroid/app/Application;

    .line 108
    iput-object p2, p0, Lcom/facebook/react/PackageList;->mConfig:Lcom/facebook/react/shell/MainPackageConfig;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/ReactNativeHost;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/PackageList;-><init>(Lcom/facebook/react/ReactNativeHost;Lcom/facebook/react/shell/MainPackageConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/ReactNativeHost;Lcom/facebook/react/shell/MainPackageConfig;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/facebook/react/PackageList;->reactNativeHost:Lcom/facebook/react/ReactNativeHost;

    .line 102
    iput-object p2, p0, Lcom/facebook/react/PackageList;->mConfig:Lcom/facebook/react/shell/MainPackageConfig;

    return-void
.end method

.method private getApplication()Landroid/app/Application;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/facebook/react/PackageList;->reactNativeHost:Lcom/facebook/react/ReactNativeHost;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/PackageList;->application:Landroid/app/Application;

    return-object v0

    .line 121
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/facebook/react/PackageList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/facebook/react/PackageList;->reactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-object v0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/facebook/react/PackageList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPackages()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x25

    new-array v1, v1, [Lcom/facebook/react/ReactPackage;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage;

    iget-object v3, p0, Lcom/facebook/react/PackageList;->mConfig:Lcom/facebook/react/shell/MainPackageConfig;

    invoke-direct {v2, v3}, Lcom/facebook/react/shell/MainReactPackage;-><init>(Lcom/facebook/react/shell/MainPackageConfig;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/reactnativecommunity/art/ARTPackage;

    invoke-direct {v2}, Lcom/reactnativecommunity/art/ARTPackage;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lcom/reactnativecommunity/asyncstorage/AsyncStoragePackage;

    invoke-direct {v2}, Lcom/reactnativecommunity/asyncstorage/AsyncStoragePackage;-><init>()V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Lcom/reactnativecommunity/clipboard/ClipboardPackage;

    invoke-direct {v2}, Lcom/reactnativecommunity/clipboard/ClipboardPackage;-><init>()V

    const/4 v4, 0x3

    aput-object v2, v1, v4

    new-instance v2, Lorg/reactnative/maskedview/RNCMaskedViewPackage;

    invoke-direct {v2}, Lorg/reactnative/maskedview/RNCMaskedViewPackage;-><init>()V

    const/4 v4, 0x4

    aput-object v2, v1, v4

    new-instance v2, Lcom/reactnativecommunity/netinfo/NetInfoPackage;

    invoke-direct {v2}, Lcom/reactnativecommunity/netinfo/NetInfoPackage;-><init>()V

    const/4 v4, 0x5

    aput-object v2, v1, v4

    new-instance v2, Lio/sentry/react/RNSentryPackage;

    invoke-direct {v2}, Lio/sentry/react/RNSentryPackage;-><init>()V

    const/4 v4, 0x6

    aput-object v2, v1, v4

    new-instance v2, Lcn/jiguang/plugins/analytics/JAnalyticsPackage;

    invoke-direct {v2}, Lcn/jiguang/plugins/analytics/JAnalyticsPackage;-><init>()V

    const/4 v4, 0x7

    aput-object v2, v1, v4

    new-instance v2, Lcn/jiguang/plugins/push/JPushPackage;

    invoke-direct {v2}, Lcn/jiguang/plugins/push/JPushPackage;-><init>()V

    const/16 v4, 0x8

    aput-object v2, v1, v4

    new-instance v2, Lcom/airbnb/android/react/lottie/LottiePackage;

    invoke-direct {v2}, Lcom/airbnb/android/react/lottie/LottiePackage;-><init>()V

    const/16 v4, 0x9

    aput-object v2, v1, v4

    new-instance v2, Lcom/pingplusplus/react/PingppPackage;

    invoke-direct {v2}, Lcom/pingplusplus/react/PingppPackage;-><init>()V

    const/16 v4, 0xa

    aput-object v2, v1, v4

    new-instance v2, Lorg/reactnative/camera/RNCameraPackage;

    invoke-direct {v2}, Lorg/reactnative/camera/RNCameraPackage;-><init>()V

    const/16 v4, 0xb

    aput-object v2, v1, v4

    new-instance v2, Lcom/microsoft/codepush/react/CodePush;

    .line 142
    invoke-direct {p0}, Lcom/facebook/react/PackageList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/facebook/react/PackageList;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v4, v5, v3}, Lcom/microsoft/codepush/react/CodePush;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Lcom/learnium/RNDeviceInfo/RNDeviceInfo;

    invoke-direct {v2}, Lcom/learnium/RNDeviceInfo/RNDeviceInfo;-><init>()V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v2, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerPackage;

    invoke-direct {v2}, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerPackage;-><init>()V

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-instance v2, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerPackage;

    invoke-direct {v2}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerPackage;-><init>()V

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-instance v2, Lcom/swmansion/gesturehandler/react/RNGestureHandlerPackage;

    invoke-direct {v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerPackage;-><init>()V

    const/16 v3, 0x10

    aput-object v2, v1, v3

    new-instance v2, Lcom/codemotionapps/reactnativehelpscout/HelpScoutPackage;

    invoke-direct {v2}, Lcom/codemotionapps/reactnativehelpscout/HelpScoutPackage;-><init>()V

    const/16 v3, 0x11

    aput-object v2, v1, v3

    new-instance v2, Lcom/AlexanderZaytsev/RNI18n/RNI18nPackage;

    invoke-direct {v2}, Lcom/AlexanderZaytsev/RNI18n/RNI18nPackage;-><init>()V

    const/16 v3, 0x12

    aput-object v2, v1, v3

    new-instance v2, Lcom/imagepicker/ImagePickerPackage;

    invoke-direct {v2}, Lcom/imagepicker/ImagePickerPackage;-><init>()V

    const/16 v3, 0x13

    aput-object v2, v1, v3

    new-instance v2, Lcom/BV/LinearGradient/LinearGradientPackage;

    invoke-direct {v2}, Lcom/BV/LinearGradient/LinearGradientPackage;-><init>()V

    const/16 v3, 0x14

    aput-object v2, v1, v3

    new-instance v2, Lcom/reactcommunity/rnlocalize/RNLocalizePackage;

    invoke-direct {v2}, Lcom/reactcommunity/rnlocalize/RNLocalizePackage;-><init>()V

    const/16 v3, 0x15

    aput-object v2, v1, v3

    new-instance v2, Lcom/github/yamill/orientation/OrientationPackage;

    invoke-direct {v2}, Lcom/github/yamill/orientation/OrientationPackage;-><init>()V

    const/16 v3, 0x16

    aput-object v2, v1, v3

    new-instance v2, Lcom/peel/react/rnos/RNOSModule;

    invoke-direct {v2}, Lcom/peel/react/rnos/RNOSModule;-><init>()V

    const/16 v3, 0x17

    aput-object v2, v1, v3

    new-instance v2, Lcom/zoontek/rnpermissions/RNPermissionsPackage;

    invoke-direct {v2}, Lcom/zoontek/rnpermissions/RNPermissionsPackage;-><init>()V

    const/16 v3, 0x18

    aput-object v2, v1, v3

    new-instance v2, Lim/shimo/react/prompt/RNPromptPackage;

    invoke-direct {v2}, Lim/shimo/react/prompt/RNPromptPackage;-><init>()V

    const/16 v3, 0x19

    aput-object v2, v1, v3

    new-instance v2, Lcom/bitgo/randombytes/RandomBytesPackage;

    invoke-direct {v2}, Lcom/bitgo/randombytes/RandomBytesPackage;-><init>()V

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    new-instance v2, Lcom/swmansion/reanimated/ReanimatedPackage;

    invoke-direct {v2}, Lcom/swmansion/reanimated/ReanimatedPackage;-><init>()V

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    new-instance v2, Lcom/th3rdwave/safeareacontext/SafeAreaContextPackage;

    invoke-direct {v2}, Lcom/th3rdwave/safeareacontext/SafeAreaContextPackage;-><init>()V

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    new-instance v2, Lcom/swmansion/rnscreens/RNScreensPackage;

    invoke-direct {v2}, Lcom/swmansion/rnscreens/RNScreensPackage;-><init>()V

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    new-instance v2, Lcl/json/RNSharePackage;

    invoke-direct {v2}, Lcl/json/RNSharePackage;-><init>()V

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    new-instance v2, Lorg/devio/rn/splashscreen/SplashScreenReactPackage;

    invoke-direct {v2}, Lorg/devio/rn/splashscreen/SplashScreenReactPackage;-><init>()V

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    new-instance v2, Lcom/horcrux/svg/SvgPackage;

    invoke-direct {v2}, Lcom/horcrux/svg/SvgPackage;-><init>()V

    const/16 v3, 0x20

    aput-object v2, v1, v3

    new-instance v2, Lcom/brentvatne/react/ReactVideoPackage;

    invoke-direct {v2}, Lcom/brentvatne/react/ReactVideoPackage;-><init>()V

    const/16 v3, 0x21

    aput-object v2, v1, v3

    new-instance v2, Lfr/greweb/reactnativeviewshot/RNViewShotPackage;

    invoke-direct {v2}, Lfr/greweb/reactnativeviewshot/RNViewShotPackage;-><init>()V

    const/16 v3, 0x22

    aput-object v2, v1, v3

    new-instance v2, Lcom/reactnativecommunity/webview/RNCWebViewPackage;

    invoke-direct {v2}, Lcom/reactnativecommunity/webview/RNCWebViewPackage;-><init>()V

    const/16 v3, 0x23

    aput-object v2, v1, v3

    new-instance v2, Lcom/sensorsdata/analytics/RNSensorsAnalyticsPackage;

    invoke-direct {v2}, Lcom/sensorsdata/analytics/RNSensorsAnalyticsPackage;-><init>()V

    const/16 v3, 0x24

    aput-object v2, v1, v3

    .line 129
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
