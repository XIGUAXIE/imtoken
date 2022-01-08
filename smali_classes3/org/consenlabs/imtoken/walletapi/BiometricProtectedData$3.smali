.class Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$3;
.super Ljava/lang/Object;
.source "BiometricProtectedData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->recognitionFailed()V
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

    .line 251
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$3;->this$0:Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$3;->this$0:Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;

    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->access$000(Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;)Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData$3;->this$0:Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;

    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->access$000(Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;)Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->recognitionFailedFeedback()V

    :cond_0
    return-void
.end method
