.class public Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$AuthCallback;
.super Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
.source "ReactNativeFingerprintScannerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuthCallback"
.end annotation


# instance fields
.field private promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic this$0:Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;


# direct methods
.method public constructor <init>(Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$AuthCallback;->this$0:Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;

    .line 80
    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$AuthCallback;->promise:Lcom/facebook/react/bridge/Promise;

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 86
    invoke-super {p0, p1, p2}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 87
    iget-object p2, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$AuthCallback;->promise:Lcom/facebook/react/bridge/Promise;

    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$AuthCallback;->this$0:Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;

    invoke-static {v0, p1}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->access$000(Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Biometrics"

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    .line 93
    iget-object p1, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$AuthCallback;->promise:Lcom/facebook/react/bridge/Promise;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
