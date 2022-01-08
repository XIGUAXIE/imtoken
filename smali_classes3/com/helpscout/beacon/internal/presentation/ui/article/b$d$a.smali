.class public final Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->a:Z

    iput-boolean p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->b:Z

    iput-boolean p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->c:Z

    iput-boolean p4, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;-><init>(ZZZZ)V

    return-void
.end method

.method public static synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;ZZZZILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->a:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->b:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->c:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->d:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->a(ZZZZ)Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ZZZZ)Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;-><init>(ZZZZ)V

    return-object v0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->c:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->a:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->d:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->b:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->a:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->a:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->b:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->b:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->c:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->c:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->d:Z

    iget-boolean p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->d:Z

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

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->c:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->d:Z

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArticleFeedbackInfoUiState(hasLeftFeedBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSendingFeedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", errorSendingFeedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
