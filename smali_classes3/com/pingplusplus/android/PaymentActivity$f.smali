.class public final Lcom/pingplusplus/android/PaymentActivity$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/unionpay/UPQuerySEPayInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingplusplus/android/PaymentActivity;->o(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/PaymentActivity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pingplusplus/android/PaymentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pingplusplus/android/PaymentActivity$f;->a:Lcom/pingplusplus/android/PaymentActivity;

    iput-object p2, p0, Lcom/pingplusplus/android/PaymentActivity$f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/pingplusplus/android/PaymentActivity$f;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPPayAssistEx.getSEPayInfo->onError seName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " seType="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " errorCode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " errorDesc="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pingplusplus/android/PaymentActivity$f;->a:Lcom/pingplusplus/android/PaymentActivity;

    iget-object p2, p0, Lcom/pingplusplus/android/PaymentActivity$f;->b:Ljava/lang/String;

    iget-object p3, p0, Lcom/pingplusplus/android/PaymentActivity$f;->c:Ljava/lang/String;

    const/4 p4, 0x0

    invoke-static {p1, p4, p4, p2, p3}, Lcom/unionpay/UPPayAssistEx;->startPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResult(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 6

    const-string p3, "seName"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "seType"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "seName="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " seType="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity$f;->a:Lcom/pingplusplus/android/PaymentActivity;

    iget-object v3, p0, Lcom/pingplusplus/android/PaymentActivity$f;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/pingplusplus/android/PaymentActivity$f;->c:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/unionpay/UPPayAssistEx;->startSEPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
