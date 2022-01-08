.class public final Lcom/pingplusplus/android/PaymentActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ccb/ccbnetpay/message/CcbPayResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingplusplus/android/PaymentActivity;->d(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/pingplusplus/android/PaymentActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pingplusplus/android/PaymentActivity$d;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity$d;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "fail"

    invoke-virtual {v0, v1, p1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SUCCESS"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "Y"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pingplusplus/android/PaymentActivity$d;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string v0, "success"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/pingplusplus/android/PaymentActivity$d;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string v0, "fail"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    return-void
.end method
