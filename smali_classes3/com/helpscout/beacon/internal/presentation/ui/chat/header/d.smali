.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/helpscout/beacon/a/d/e/a/b;

.field private final e:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/a/d/e/a/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)V
    .locals 1

    const-string v0, "chatHeaderViewStateUpdate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitle1"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->d:Lcom/helpscout/beacon/a/d/e/a/b;

    iput-object p5, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/a/d/e/a/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const-string v0, ""

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    move-object v5, p3

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move-object v6, p3

    goto :goto_3

    :cond_3
    move-object v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/a/d/e/a/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)V

    return-void
.end method

.method public static synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/a/d/e/a/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->b:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->c:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->d:Lcom/helpscout/beacon/a/d/e/a/b;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/a/d/e/a/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/helpscout/beacon/a/d/e/a/b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->d:Lcom/helpscout/beacon/a/d/e/a/b;

    return-object v0
.end method

.method public final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/a/d/e/a/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;
    .locals 7

    const-string v0, "chatHeaderViewStateUpdate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitle1"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/a/d/e/a/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)V

    return-object v0
.end method

.method public final b()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public final d()Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->d:Lcom/helpscout/beacon/a/d/e/a/b;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->d:Lcom/helpscout/beacon/a/d/e/a/b;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

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

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Z
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->b:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->d:Lcom/helpscout/beacon/a/d/e/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->d:Lcom/helpscout/beacon/a/d/e/a/b;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatHeaderViewState(chatHeaderViewStateUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitle1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", agents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->d:Lcom/helpscout/beacon/a/d/e/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", assignedAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
