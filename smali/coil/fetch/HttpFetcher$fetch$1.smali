.class final Lcoil/fetch/HttpFetcher$fetch$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "HttpFetcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/fetch/HttpFetcher;->fetch(Lcoil/bitmap/BitmapPool;Ljava/lang/Object;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0096@"
    }
    d2 = {
        "fetch",
        "",
        "T",
        "pool",
        "Lcoil/bitmap/BitmapPool;",
        "data",
        "size",
        "Lcoil/size/Size;",
        "options",
        "Lcoil/decode/Options;",
        "continuation",
        "Lkotlin/coroutines/Continuation;",
        "Lcoil/fetch/FetchResult;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "coil.fetch.HttpFetcher"
    f = "HttpFetcher.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x7d
    }
    m = "fetch$suspendImpl"
    n = {
        "this",
        "url"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcoil/fetch/HttpFetcher;


# direct methods
.method constructor <init>(Lcoil/fetch/HttpFetcher;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcoil/fetch/HttpFetcher$fetch$1;->this$0:Lcoil/fetch/HttpFetcher;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcoil/fetch/HttpFetcher$fetch$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcoil/fetch/HttpFetcher$fetch$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcoil/fetch/HttpFetcher$fetch$1;->label:I

    iget-object v0, p0, Lcoil/fetch/HttpFetcher$fetch$1;->this$0:Lcoil/fetch/HttpFetcher;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcoil/fetch/HttpFetcher;->fetch$suspendImpl(Lcoil/fetch/HttpFetcher;Lcoil/bitmap/BitmapPool;Ljava/lang/Object;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
