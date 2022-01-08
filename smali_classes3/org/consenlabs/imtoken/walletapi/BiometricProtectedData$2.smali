.class Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$2;
.super Ljava/lang/Object;
.source "BiometricProtectedData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->dismissDialog()V
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

    .line 238
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$2;->this$0:Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 241
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$2;->this$0:Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;

    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->access$000(Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;)Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$2;->this$0:Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;

    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->access$000(Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;)Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->dismissAllowingStateLoss()V

    .line 243
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$2;->this$0:Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->access$002(Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;)Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;

    :cond_0
    return-void
.end method
