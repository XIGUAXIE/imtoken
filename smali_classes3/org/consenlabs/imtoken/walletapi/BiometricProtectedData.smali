.class public Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;
.super Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.source "BiometricProtectedData.java"


# static fields
.field private static final ANDROID_KEYSTORE_PROVIDER:Ljava/lang/String; = "AndroidKeyStore"

.field public static final BIOMETRICS_AUTH_FAILED:Ljava/lang/String; = "biometrics_auth_failed"

.field public static final BIOMETRICS_CANCEL:Ljava/lang/String; = "biometrics_cancel"

.field public static final BIOMETRICS_LOCKOUT:Ljava/lang/String; = "biometrics_lockout"

.field public static final BIOMETRICS_LOCKOUT_PERMANENT:Ljava/lang/String; = "biometrics_lockout_permanent"

.field public static final BIOMETRICS_NOT_SUPPORT:Ljava/lang/String; = "biometrics_not_support"

.field public static final BIOMETRICS_PASSWORD:Ljava/lang/String; = "biometrics_password"

.field public static final BIOMETRICS_TIMEOUT:Ljava/lang/String; = "biometrics_timeout"

.field private static final BIOMETRIC_PROTECTED_DATA:Ljava/lang/String; = "biometric_protected_data"

.field public static final HELP_USER_CANCEL:I = 0x1

.field public static final HELP_USER_PASSWORD:I = 0x2

.field private static final KEYSTORE_ALIAS:Ljava/lang/String; = "biometric_protected_data"

.field public static final KEYSTORE_ERROR:Ljava/lang/String; = "keystore_error"

.field public static final KEYSTORE_KEY_ERROR:Ljava/lang/String; = "keystore_key_error"

.field private static final SP_NAME:Ljava/lang/String; = "biometric_protected_data"


# instance fields
.field private biometricDialogV23:Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;

.field private biometricError:Ljava/lang/String;

.field private isEncrypt:Z

.field private mCancellationSignal:Landroidx/core/os/CancellationSignal;

.field private mContext:Landroid/content/Context;

.field private mData:[B

.field private mDataKey:Ljava/lang/String;

.field private mKeyStore:Ljava/security/KeyStore;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->biometricError:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mDataKey:Ljava/lang/String;

    .line 81
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mUiHandler:Landroid/os/Handler;

    .line 83
    invoke-static {}, Lorg/consenlabs/imtoken/MainApplication;->getsInstance()Lorg/consenlabs/imtoken/MainApplication;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result p2

    const-string v1, "biometrics_not_support"

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "AndroidKeyStore"

    .line 89
    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mKeyStore:Ljava/security/KeyStore;

    .line 90
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 92
    :catch_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    invoke-direct {p1, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    invoke-direct {p1, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;)Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->biometricDialogV23:Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;

    return-object p0
.end method

.method static synthetic access$002(Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;)Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->biometricDialogV23:Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;

    return-object p1
.end method

.method private authenticate(Ljavax/crypto/Cipher;)V
    .locals 7

    .line 275
    new-instance v0, Landroidx/core/os/CancellationSignal;

    invoke-direct {v0}, Landroidx/core/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    .line 276
    new-instance v6, Landroid/os/Handler;

    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 277
    new-instance v2, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-direct {v2, p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    .line 278
    iget-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v1

    iget-object v4, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    const/4 v3, 0x0

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->authenticate(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V

    .line 280
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->displayBiometricDialog()V

    return-void
.end method

.method static checkBiometricMode()Ljava/lang/String;
    .locals 2

    .line 267
    invoke-static {}, Lorg/consenlabs/imtoken/MainApplication;->getsInstance()Lorg/consenlabs/imtoken/MainApplication;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fingerprint"

    goto :goto_0

    :cond_0
    const-string v0, "none"

    :goto_0
    return-object v0
.end method

.method private checkThread()V
    .locals 2

    .line 136
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 137
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "Executing in main thread is forbidden"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cleanExistsKey()V
    .locals 4

    .line 218
    :try_start_0
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->cleanSp()V

    .line 219
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mKeyStore:Ljava/security/KeyStore;

    const-string v1, "biometric_protected_data"

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 221
    new-instance v1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keystore_error Clean Key Failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private cleanSp()V
    .locals 3

    .line 174
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mContext:Landroid/content/Context;

    const-string v1, "biometric_protected_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private createCipher(Z)Ljavax/crypto/Cipher;
    .locals 7

    const-string v0, "biometric_protected_data"

    const-string v1, "AES/CBC/PKCS7Padding"

    .line 185
    :try_start_0
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    const-string v4, "AndroidKeyStore"

    if-nez v2, :cond_0

    :try_start_1
    const-string v2, "AES"

    .line 187
    invoke-static {v2, v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 188
    new-instance v5, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v6, 0x3

    invoke-direct {v5, v0, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v6, "CBC"

    .line 189
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    const-string v6, "PKCS7Padding"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    .line 190
    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    .line 191
    invoke-virtual {v5, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    .line 192
    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v5

    .line 193
    invoke-virtual {v2, v5}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 194
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 197
    :cond_0
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mKeyStore:Ljava/security/KeyStore;

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 198
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 199
    const-class v4, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v2, v0, v4}, Ljavax/crypto/SecretKeyFactory;->getKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v2

    check-cast v2, Landroid/security/keystore/KeyInfo;

    .line 200
    invoke-virtual {v2}, Landroid/security/keystore/KeyInfo;->isInsideSecureHardware()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->isInEmulator()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 201
    :cond_1
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "biometrics_not_support"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 205
    invoke-virtual {v1, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    .line 207
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->readIv()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, p1, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object v1

    .line 210
    :catch_0
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->cleanExistsKey()V

    .line 211
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "keystore_key_error"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private dismissDialog()V
    .locals 2

    .line 238
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$2;

    invoke-direct {v1, p0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$2;-><init>(Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private displayBiometricDialog()V
    .locals 2

    .line 226
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$1;

    invoke-direct {v1, p0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$1;-><init>(Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private doFinalSync()V
    .locals 4

    .line 109
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->isEncrypt:Z

    invoke-direct {p0, v0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->createCipher(Z)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 110
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->checkThread()V

    .line 111
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    .line 112
    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->biometricError:Ljava/lang/String;

    .line 113
    invoke-direct {p0, v0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->authenticate(Ljavax/crypto/Cipher;)V

    .line 115
    :try_start_0
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->throwTimeout()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 120
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->dismissDialog()V

    .line 121
    throw v0

    .line 120
    :catch_0
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->dismissDialog()V

    .line 123
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->biometricError:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 124
    :cond_1
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->biometricError:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isInEmulator()Z
    .locals 2

    .line 262
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "google_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Emulator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Android SDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private persistEncrypted([B[B)V
    .locals 3

    .line 142
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mContext:Landroid/content/Context;

    const-string v1, "biometric_protected_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mDataKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_iv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mDataKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_data"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private readEncrypted()[B
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mDataKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->readFromSp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private readFromSp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 166
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mContext:Landroid/content/Context;

    const-string v1, "biometric_protected_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 167
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 170
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 168
    :cond_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "keystore_key_error"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readIv()[B
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mDataKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_iv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->readFromSp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private recognitionFailed()V
    .locals 2

    .line 251
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$3;

    invoke-direct {v1, p0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$3;-><init>(Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private throwTimeout()V
    .locals 2

    .line 129
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroidx/core/os/CancellationSignal;->cancel()V

    .line 132
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "biometrics_timeout"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method decryptData()[B
    .locals 1

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->isEncrypt:Z

    .line 104
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->doFinalSync()V

    .line 105
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mData:[B

    return-object v0
.end method

.method deleteEncrypted()V
    .locals 3

    .line 150
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mContext:Landroid/content/Context;

    const-string v1, "biometric_protected_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mDataKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_iv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mDataKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method encryptData([B)V
    .locals 1

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->isEncrypt:Z

    .line 98
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mData:[B

    .line 99
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->doFinalSync()V

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 338
    invoke-super {p0, p1, p2}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    if-eqz p1, :cond_4

    const/4 v0, 0x5

    const-string v1, "biometrics_lockout"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 357
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->biometricError:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "biometrics_cancel"

    .line 354
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->biometricError:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "biometrics_lockout_permanent"

    .line 341
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->biometricError:Ljava/lang/String;

    goto :goto_0

    .line 344
    :cond_2
    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->biometricError:Ljava/lang/String;

    goto :goto_0

    .line 348
    :cond_3
    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->biometricError:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string p1, ""

    .line 351
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->biometricError:Ljava/lang/String;

    .line 359
    :goto_0
    iget-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 0

    .line 307
    invoke-super {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationFailed()V

    .line 308
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->recognitionFailed()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .line 314
    invoke-super {p0, p1, p2}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 329
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->biometricError:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    return-void

    :cond_0
    const-string p1, "biometrics_password"

    .line 320
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->biometricError:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "biometrics_cancel"

    .line 317
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->biometricError:Ljava/lang/String;

    .line 331
    :goto_0
    iget-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    invoke-virtual {p1}, Landroidx/core/os/CancellationSignal;->cancel()V

    .line 332
    iget-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :pswitch_data_0
    .packed-switch 0x3fd
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onAuthenticationSucceeded(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 1

    .line 286
    invoke-virtual {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;->getCryptoObject()Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p1

    .line 288
    :try_start_0
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->isEncrypt:Z

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mData:[B

    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 290
    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    .line 291
    invoke-direct {p0, p1, v0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->persistEncrypted([B[B)V

    goto :goto_0

    .line 293
    :cond_0
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->readEncrypted()[B

    move-result-object v0

    .line 294
    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mData:[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 297
    :catch_0
    :try_start_1
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->cleanExistsKey()V

    const-string p1, "keystore_key_error"

    .line 298
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->biometricError:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :goto_0
    iget-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 302
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->dismissDialog()V

    return-void

    .line 300
    :goto_1
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 301
    throw p1
.end method
