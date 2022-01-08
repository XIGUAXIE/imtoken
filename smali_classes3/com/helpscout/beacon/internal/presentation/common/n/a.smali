.class public final Lcom/helpscout/beacon/internal/presentation/common/n/a;
.super Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/common/n/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/helpscout/beacon/internal/presentation/common/b;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/b;)V
    .locals 1

    const-string v0, "colors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/a;->a:Lcom/helpscout/beacon/internal/presentation/common/b;

    return-void
.end method


# virtual methods
.method protected createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    new-instance p2, Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/a;->a:Lcom/helpscout/beacon/internal/presentation/common/b;

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/common/b;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/helpscout/beacon/internal/presentation/common/n/a$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "view.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/helpscout/beacon/internal/presentation/common/n/a$a;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object p2
.end method
