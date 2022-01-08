.class public final Lcom/helpscout/beacon/a/c/e/h/g$b;
.super Lcom/helpscout/beacon/a/c/e/h/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/a/c/e/h/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadsApi;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/domain/model/ConversationThreadsApi;Z)V
    .locals 1

    const-string v0, "threads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/c/e/h/g;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/h/g$b;->a:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadsApi;

    iput-boolean p2, p0, Lcom/helpscout/beacon/a/c/e/h/g$b;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/a/c/e/h/g$b;->b:Z

    return v0
.end method

.method public final b()Lcom/helpscout/beacon/internal/domain/model/ConversationThreadsApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/h/g$b;->a:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadsApi;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/h/g$b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/a/c/e/h/g$b;

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/h/g$b;->a:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadsApi;

    iget-object v1, p1, Lcom/helpscout/beacon/a/c/e/h/g$b;->a:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadsApi;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/a/c/e/h/g$b;->b:Z

    iget-boolean p1, p1, Lcom/helpscout/beacon/a/c/e/h/g$b;->b:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/h/g$b;->a:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadsApi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/helpscout/beacon/a/c/e/h/g$b;->b:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Success(threads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/a/c/e/h/g$b;->a:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadsApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasMore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/a/c/e/h/g$b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
