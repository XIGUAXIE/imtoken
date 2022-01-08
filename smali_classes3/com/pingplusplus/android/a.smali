.class public final Lcom/pingplusplus/android/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/cmcc/wallet/openpay/MocamOpenPayListener;


# instance fields
.field private final a:Lcom/pingplusplus/android/PaymentActivity;


# direct methods
.method public constructor <init>(Lcom/pingplusplus/android/PaymentActivity;)V
    .locals 1

    const-string v0, "paymentActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pingplusplus/android/a;->a:Lcom/pingplusplus/android/PaymentActivity;

    return-void
.end method


# virtual methods
.method public onMocamPayResponse(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "data"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, -0x3

    const-string v0, "fail"

    if-eq p1, p2, :cond_3

    const/4 p2, -0x2

    if-eq p1, p2, :cond_2

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pingplusplus/android/a;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string p2, "unknown"

    const-string v0, ""

    invoke-virtual {p1, p2, v0, p3}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/pingplusplus/android/a;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string p2, "success"

    invoke-virtual {p1, p2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/pingplusplus/android/a;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string p2, "cancel"

    const-string p3, "user_cancelled"

    invoke-virtual {p1, p2, p3}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/pingplusplus/android/a;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string p2, "cmpay_app_not_installed"

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/pingplusplus/android/a;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string p2, "cmpay_app_need_upgrade"

    :goto_0
    invoke-virtual {p1, v0, p2, p3}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
