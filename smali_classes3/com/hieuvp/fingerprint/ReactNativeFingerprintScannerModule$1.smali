.class Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$1;
.super Ljava/lang/Object;
.source "ReactNativeFingerprintScannerModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->biometricAuthenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;

.field final synthetic val$cancelButton:Ljava/lang/String;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic val$subtitle:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$1;->this$0:Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;

    iput-object p2, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p3, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$1;->val$cancelButton:Ljava/lang/String;

    iput-object p4, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$1;->val$description:Ljava/lang/String;

    iput-object p5, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$1;->val$subtitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$1;->this$0:Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;

    invoke-static {v0}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->access$100(Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$1;->this$0:Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;

    iget-object v2, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-virtual {v1, v0, v2}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->getBiometricPrompt(Landroidx/fragment/app/FragmentActivity;Lcom/facebook/react/bridge/Promise;)Landroidx/biometric/BiometricPrompt;

    move-result-object v0

    .line 128
    new-instance v1, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    invoke-direct {v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;-><init>()V

    const/4 v2, 0x0

    .line 129
    invoke-virtual {v1, v2}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setDeviceCredentialAllowed(Z)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v1

    .line 130
    invoke-virtual {v1, v2}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setConfirmationRequired(Z)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$1;->val$cancelButton:Ljava/lang/String;

    .line 131
    invoke-virtual {v1, v2}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setNegativeButtonText(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$1;->val$description:Ljava/lang/String;

    .line 132
    invoke-virtual {v1, v2}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$1;->val$subtitle:Ljava/lang/String;

    .line 133
    invoke-virtual {v1, v2}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$1;->val$title:Ljava/lang/String;

    .line 134
    invoke-virtual {v1, v2}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->build()Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    return-void
.end method
