.class public final Lcom/helpscout/beacon/a/c/e/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/a/b/c/b/a;

.field private final b:Lcom/helpscout/beacon/a/d/d/j/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/b/c/b/a;Lcom/helpscout/beacon/a/d/d/j/a;)V
    .locals 1

    const-string v0, "chatDatastore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatNotificationDisplayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/d;->a:Lcom/helpscout/beacon/a/b/c/b/a;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/d;->b:Lcom/helpscout/beacon/a/d/d/j/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/d;->a:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v0}, Lcom/helpscout/beacon/a/b/c/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/helpscout/beacon/a/c/e/g/d;->b:Lcom/helpscout/beacon/a/d/d/j/a;

    invoke-virtual {v1, v0}, Lcom/helpscout/beacon/a/d/d/j/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
