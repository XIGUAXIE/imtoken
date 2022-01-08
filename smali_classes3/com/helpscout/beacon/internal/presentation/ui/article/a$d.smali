.class final Lcom/helpscout/beacon/internal/presentation/ui/article/a$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/article/a;->a(Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/article/a;

.field final synthetic b:Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/article/a;Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/a$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/a;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/a$d;->b:Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/a$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/a;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/a;->b(Lcom/helpscout/beacon/internal/presentation/ui/article/a;)Lcom/helpscout/beacon/internal/presentation/ui/article/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/a$b;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/a$d;->b:Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;->getAllLinkedArticleUrls()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/a$d;->a(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
