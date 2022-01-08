.class public final Lcom/helpscout/beacon/a/c/e/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/a/d/d/j/b;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/d/d/j/b;)V
    .locals 1

    const-string v0, "conversationNotificationDisplayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/h/b;->a:Lcom/helpscout/beacon/a/d/d/j/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "conversationId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/h/b;->a:Lcom/helpscout/beacon/a/d/d/j/b;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/d/d/j/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
