.class final Lcom/pingplusplus/android/PaymentActivity$h$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingplusplus/android/PaymentActivity$h;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/PaymentActivity$h;


# direct methods
.method constructor <init>(Lcom/pingplusplus/android/PaymentActivity$h;)V
    .locals 0

    iput-object p1, p0, Lcom/pingplusplus/android/PaymentActivity$h$a;->a:Lcom/pingplusplus/android/PaymentActivity$h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/pingplusplus/android/PaymentActivity$h$a;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity$h$a;->a:Lcom/pingplusplus/android/PaymentActivity$h;

    iget-object v0, v0, Lcom/pingplusplus/android/PaymentActivity$h;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-static {v0}, Lcom/pingplusplus/android/PaymentActivity;->c(Lcom/pingplusplus/android/PaymentActivity;)V

    return-void
.end method
