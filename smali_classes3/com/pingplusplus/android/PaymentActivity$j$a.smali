.class final Lcom/pingplusplus/android/PaymentActivity$j$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingplusplus/android/PaymentActivity$j;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/pingplusplus/android/PaymentActivity$j;


# direct methods
.method constructor <init>(Lcom/pingplusplus/android/PaymentActivity$j;)V
    .locals 0

    iput-object p1, p0, Lcom/pingplusplus/android/PaymentActivity$j$a;->a:Lcom/pingplusplus/android/PaymentActivity$j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/pingplusplus/android/PaymentActivity$j$a;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity$j$a;->a:Lcom/pingplusplus/android/PaymentActivity$j;

    iget-object v0, v0, Lcom/pingplusplus/android/PaymentActivity$j;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "user_success"

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    return-void
.end method
