.class final Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->b(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$c;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
