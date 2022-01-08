.class final Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Float;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 9

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->btnNegativeRating:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    const-string v0, "btnNegativeRating"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;)J

    move-result-wide v2

    long-to-float v0, v2

    mul-float v0, v0, p1

    float-to-long v4, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;ZLjava/lang/Long;JFILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$e;->a(F)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
