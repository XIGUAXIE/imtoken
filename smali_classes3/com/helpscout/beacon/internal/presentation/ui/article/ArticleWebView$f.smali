.class final Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView$f;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView$f;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;Z)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView$f;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView$f;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    return-void
.end method
