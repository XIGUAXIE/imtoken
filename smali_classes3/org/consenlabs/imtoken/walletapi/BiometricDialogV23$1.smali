.class Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23$1;
.super Ljava/lang/Object;
.source "BiometricDialogV23.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;


# direct methods
.method constructor <init>(Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23$1;->this$0:Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23$1;->this$0:Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;

    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->access$000(Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;)V

    .line 48
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
