.class public final Lcom/helpscout/beacon/a/d/d/h/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/a/d/d/h/d;


# instance fields
.field private final a:Lcom/helpscout/beacon/a/d/d/h/b;

.field private final b:Lcom/helpscout/beacon/a/d/d/h/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/d/d/h/b;Lcom/helpscout/beacon/a/d/d/h/a;)V
    .locals 1

    const-string v0, "convoPushMsgHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatPushMsgHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/d/h/c;->a:Lcom/helpscout/beacon/a/d/d/h/b;

    iput-object p2, p0, Lcom/helpscout/beacon/a/d/d/h/c;->b:Lcom/helpscout/beacon/a/d/d/h/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/h/c;->a:Lcom/helpscout/beacon/a/d/d/h/b;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/d/d/h/b;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/h/c;->a:Lcom/helpscout/beacon/a/d/d/h/b;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/d/d/h/b;->a(Ljava/util/Map;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/h/c;->b:Lcom/helpscout/beacon/a/d/d/h/a;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/d/d/h/a;->c(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/h/c;->b:Lcom/helpscout/beacon/a/d/d/h/a;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/d/d/h/a;->a(Ljava/util/Map;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
