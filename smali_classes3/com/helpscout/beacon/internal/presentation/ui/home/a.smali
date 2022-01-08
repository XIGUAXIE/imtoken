.class public final Lcom/helpscout/beacon/internal/presentation/ui/home/a;
.super Lcom/helpscout/beacon/internal/presentation/common/n/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/home/a$b;,
        Lcom/helpscout/beacon/internal/presentation/ui/home/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/helpscout/beacon/internal/presentation/common/n/c<",
        "Lcom/helpscout/beacon/internal/domain/model/ArticleUI;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/ArticleUI;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "footerClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/n/c;-><init>(Lkotlin/jvm/functions/Function1;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/a;->f:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/helpscout/beacon/internal/presentation/common/n/c$d;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/home/a$b;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/a;->c()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(getFooterLayout(), parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/a;->f:Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/a$b;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-object v1
.end method

.method public b(Landroid/view/ViewGroup;)Lcom/helpscout/beacon/internal/presentation/common/n/c$c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/helpscout/beacon/internal/presentation/common/n/c$c<",
            "Lcom/helpscout/beacon/internal/domain/model/ArticleUI;",
            ">;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/home/a$a;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/a;->d()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(getItemLayout(), parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/a$a;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public c()I
    .locals 1

    sget v0, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_item_article_cant_find:I

    return v0
.end method

.method public d()I
    .locals 1

    sget v0, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_item_article:I

    return v0
.end method
