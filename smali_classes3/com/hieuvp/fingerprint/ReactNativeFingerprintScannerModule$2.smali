.class Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$2;
.super Ljava/lang/Object;
.source "ReactNativeFingerprintScannerModule.java"

# interfaces
.implements Lcom/wei/android/lib/fingerprintidentify/base/BaseFingerprint$ExceptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->getFingerprintIdentify()Lcom/wei/android/lib/fingerprintidentify/FingerprintIdentify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;


# direct methods
.method constructor <init>(Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$2;->this$0:Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCatchException(Ljava/lang/Throwable;)V
    .locals 1

    .line 261
    iget-object p1, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$2;->this$0:Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;

    invoke-static {p1}, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;->access$100(Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    iget-object v0, p0, Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule$2;->this$0:Lcom/hieuvp/fingerprint/ReactNativeFingerprintScannerModule;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method
