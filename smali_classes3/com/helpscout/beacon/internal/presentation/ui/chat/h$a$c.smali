.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;
.super Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;->a:Z

    iput-boolean p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;->a:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;->b:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;->a:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;->a:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;->b:Z

    iget-boolean p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;->b:Z

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
    .locals 3

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;->b:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default(showEmailTranscriptMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showViewConversationButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
