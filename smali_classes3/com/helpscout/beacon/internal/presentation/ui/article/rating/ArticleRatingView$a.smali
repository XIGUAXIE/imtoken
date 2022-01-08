.class final Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$a;
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

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->btnPositiveRating:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    const-string v0, "btnPositiveRating"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Ljava/lang/Long;JZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;

    invoke-static {v1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->b(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;Landroid/view/ViewPropertyAnimator;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$a;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
