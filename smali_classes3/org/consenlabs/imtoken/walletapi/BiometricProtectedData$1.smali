.class Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$1;
.super Ljava/lang/Object;
.source "BiometricProtectedData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->displayBiometricDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;


# direct methods
.method constructor <init>(Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$1;->this$0:Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 229
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$1;->this$0:Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;

    new-instance v1, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;

    invoke-direct {v1}, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;-><init>()V

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->access$002(Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;)Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;

    .line 230
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$1;->this$0:Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;

    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->access$000(Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;)Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;

    move-result-object v0

    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$1;->this$0:Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;

    invoke-virtual {v0, v1}, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->setBiometricCallback(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)V

    .line 231
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$1;->this$0:Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;

    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->access$000(Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;)Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;

    move-result-object v0

    sget-object v1, Lorg/consenlabs/imtoken/MainActivity;->sInstance:Lorg/consenlabs/imtoken/MainActivity;

    invoke-virtual {v1}, Lorg/consenlabs/imtoken/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "FP"

    invoke-virtual {v0, v1, v2}, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
