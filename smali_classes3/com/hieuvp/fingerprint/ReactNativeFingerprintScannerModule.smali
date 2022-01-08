.class public Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "ReactNativeFingerprintScannerModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "ReactNativeFingerprintScanner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$AuthCallback;
    }
.end annotation


# static fields
.field public static final MAX_AVAILABLE_TIMES:I = 0x7fffffff

.field public static final TYPE_BIOMETRICS:Ljava/lang/String; = "Biometrics"

.field public static final TYPE_FINGERPRINT_LEGACY:Ljava/lang/String; = "Fingerprint"


# instance fields
.field private biometricPrompt:Landroidx/biometric/BiometricPrompt;

.field private mFingerprintIdentify:Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

.field private final mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 47
    iput-object p1, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method static synthetic access$000(Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;I)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->biometricPromptErrName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object p0
.end method

.method private biometricAuthenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 8

    .line 118
    new-instance v7, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$1;-><init>(Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private biometricPromptErrName(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p1, "FingerprintScannerUnknownError"

    return-object p1

    :pswitch_1
    const-string p1, "PasscodeNotSet"

    return-object p1

    :pswitch_2
    const-string p1, "UserCancel"

    return-object p1

    :pswitch_3
    const-string p1, "FingerprintScannerNotSupported"

    return-object p1

    :pswitch_4
    const-string p1, "FingerprintScannerNotEnrolled"

    return-object p1

    :pswitch_5
    const-string p1, "UserFallback"

    return-object p1

    :pswitch_6
    const-string p1, "DeviceLockedPermanent"

    return-object p1

    :pswitch_7
    const-string p1, "HardwareError"

    return-object p1

    :pswitch_8
    const-string p1, "DeviceLocked"

    return-object p1

    :pswitch_9
    const-string p1, "SystemCancel"

    return-object p1

    :pswitch_a
    const-string p1, "DeviceOutOfMemory"

    return-object p1

    :pswitch_b
    const-string p1, "AuthenticationTimeout"

    return-object p1

    :pswitch_c
    const-string p1, "AuthenticationProcessFailed"

    return-object p1

    :pswitch_d
    const-string p1, "FingerprintScannerNotAvailable"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private currentAndroidVersion()I
    .locals 1

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private getFingerprintIdentify()Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mFingerprintIdentify:Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    if-eqz v0, :cond_0

    return-object v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 255
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    iget-object v1, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v0, v1}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mFingerprintIdentify:Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    const/4 v1, 0x1

    .line 256
    invoke-virtual {v0, v1}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->setSupportAndroidL(Z)V

    .line 257
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mFingerprintIdentify:Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    new-instance v1, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$2;

    invoke-direct {v1, p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$2;-><init>(Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;)V

    invoke-virtual {v0, v1}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->setExceptionListener(Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;)V

    .line 265
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mFingerprintIdentify:Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->init()V

    .line 266
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mFingerprintIdentify:Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    return-object v0
.end method

.method private getSensorError()Ljava/lang/String;
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0}, Landroidx/biometric/BiometricManager;->from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroidx/biometric/BiometricManager;->canAuthenticate()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    const-string v0, "FingerprintScannerNotSupported"

    return-object v0

    :cond_1
    const/16 v2, 0xb

    if-ne v0, v2, :cond_2

    const-string v0, "FingerprintScannerNotEnrolled"

    return-object v0

    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const-string v0, "FingerprintScannerNotAvailable"

    return-object v0

    :cond_3
    return-object v1
.end method

.method private legacyAuthenticate(Lcom/facebook/react/bridge/Promise;)V
    .locals 3

    .line 283
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->legacyGetErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Fingerprint"

    .line 285
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->release()V

    return-void

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->getFingerprintIdentify()Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->resumeIdentify()V

    .line 291
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->getFingerprintIdentify()Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    move-result-object v0

    const v1, 0x7fffffff

    new-instance v2, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$3;

    invoke-direct {v2, p0, p1}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$3;-><init>(Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1, v2}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->startIdentify(ILcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$IdentifyListener;)V

    return-void
.end method

.method private legacyGetErrorMessage()Ljava/lang/String;
    .locals 1

    .line 270
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->getFingerprintIdentify()Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->isHardwareEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FingerprintScannerNotSupported"

    return-object v0

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->getFingerprintIdentify()Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->isRegisteredFingerprint()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FingerprintScannerNotEnrolled"

    return-object v0

    .line 274
    :cond_1
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->getFingerprintIdentify()Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->isFingerprintEnable()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "FingerprintScannerNotAvailable"

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private requiresLegacyAuthentication()Z
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->currentAndroidVersion()I

    move-result v0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 197
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->requiresLegacyAuthentication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0, p5}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->legacyAuthenticate(Lcom/facebook/react/bridge/Promise;)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->getSensorError()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string p1, "Biometrics"

    .line 203
    invoke-interface {p5, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->release()V

    return-void

    .line 208
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->biometricAuthenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    :goto_0
    return-void
.end method

.method public getBiometricPrompt(Landroidx/fragment/app/FragmentActivity;Lcom/facebook/react/bridge/Promise;)Landroidx/biometric/BiometricPrompt;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->biometricPrompt:Landroidx/biometric/BiometricPrompt;

    if-eqz v0, :cond_0

    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 106
    new-instance v0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$AuthCallback;

    invoke-direct {v0, p0, p2}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$AuthCallback;-><init>(Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;Lcom/facebook/react/bridge/Promise;)V

    .line 107
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    .line 108
    new-instance v1, Landroidx/biometric/BiometricPrompt;

    invoke-direct {v1, p1, p2, v0}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    iput-object v1, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->biometricPrompt:Landroidx/biometric/BiometricPrompt;

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ReactNativeFingerprintScanner"

    return-object v0
.end method

.method public isSensorAvailable(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 229
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->requiresLegacyAuthentication()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->legacyGetErrorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fingerprint"

    if-eqz v0, :cond_0

    .line 232
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_0
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->getSensorError()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics"

    if-eqz v0, :cond_2

    .line 242
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 244
    :cond_2
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->release()V

    return-void
.end method

.method public onHostPause()V
    .locals 0

    return-void
.end method

.method public onHostResume()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 214
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->requiresLegacyAuthentication()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->getFingerprintIdentify()Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;->cancelIdentify()V

    .line 216
    iput-object v1, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mFingerprintIdentify:Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->biometricPrompt:Landroidx/biometric/BiometricPrompt;

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt;->cancelAuthentication()V

    .line 223
    :cond_1
    iput-object v1, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->biometricPrompt:Landroidx/biometric/BiometricPrompt;

    .line 224
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method
