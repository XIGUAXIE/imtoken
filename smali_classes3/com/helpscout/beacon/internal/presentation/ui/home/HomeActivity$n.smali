.class public final Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$n;->a:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/home/b;->ASK:Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$n;->a:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeTabs:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "homeTabs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method
