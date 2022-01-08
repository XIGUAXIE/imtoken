.class final Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleActivity$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleActivity;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleActivity;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleActivity$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleActivity$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleActivity;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object p1

    sget-object v0, Lcom/helpscout/beacon/a/d/c/b$a;->a:Lcom/helpscout/beacon/a/d/c/b$a;

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleActivity$c;->a(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
