.class public final Lcom/helpscout/beacon/a/c/e/g/k$a$c;
.super Lcom/helpscout/beacon/a/c/e/g/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/a/c/e/g/k$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;


# direct methods
.method public constructor <init>(ZLcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)V
    .locals 1

    const-string v0, "assignedAgent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/c/e/g/k$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Lcom/helpscout/beacon/a/c/e/g/k$a$c;->a:Z

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/k$a$c;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/k$a$c;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/a/c/e/g/k$a$c;->a:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/g/k$a$c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/a/c/e/g/k$a$c;

    iget-boolean v0, p0, Lcom/helpscout/beacon/a/c/e/g/k$a$c;->a:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/a/c/e/g/k$a$c;->a:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/k$a$c;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    iget-object p1, p1, Lcom/helpscout/beacon/a/c/e/g/k$a$c;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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

    iget-boolean v0, p0, Lcom/helpscout/beacon/a/c/e/g/k$a$c;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/helpscout/beacon/a/c/e/g/k$a$c;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started(attachmentsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/a/c/e/g/k$a$c;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", assignedAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/a/c/e/g/k$a$c;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
