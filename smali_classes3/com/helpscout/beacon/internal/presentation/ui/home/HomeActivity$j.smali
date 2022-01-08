.class final Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$j;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->D()V
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
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$j;->a:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$j;->a:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->homeViewPager:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/StaticViewPager;

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/home/b;->ASK:Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$j;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
