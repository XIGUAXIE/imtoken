.class public final Lcom/helpscout/beacon/a/d/c/k$c$b;
.super Lcom/helpscout/beacon/a/d/c/k$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/a/d/c/k$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/helpscout/beacon/a/d/c/k$b;

.field private final b:Lcom/helpscout/beacon/a/d/c/k$a$b;

.field private final c:Lcom/helpscout/beacon/model/FocusMode;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/d/c/k$b;Lcom/helpscout/beacon/a/d/c/k$a$b;Lcom/helpscout/beacon/model/FocusMode;)V
    .locals 1

    const-string v0, "ask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "answer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/d/c/k$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/c/k$c$b;->a:Lcom/helpscout/beacon/a/d/c/k$b;

    iput-object p2, p0, Lcom/helpscout/beacon/a/d/c/k$c$b;->b:Lcom/helpscout/beacon/a/d/c/k$a$b;

    iput-object p3, p0, Lcom/helpscout/beacon/a/d/c/k$c$b;->c:Lcom/helpscout/beacon/model/FocusMode;

    return-void
.end method


# virtual methods
.method public a()Lcom/helpscout/beacon/a/d/c/k$a$b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/c/k$c$b;->b:Lcom/helpscout/beacon/a/d/c/k$a$b;

    return-object v0
.end method

.method public b()Lcom/helpscout/beacon/a/d/c/k$b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/c/k$c$b;->a:Lcom/helpscout/beacon/a/d/c/k$b;

    return-object v0
.end method

.method public c()Lcom/helpscout/beacon/model/FocusMode;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/c/k$c$b;->c:Lcom/helpscout/beacon/model/FocusMode;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/a/d/c/k$c$b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/a/d/c/k$c$b;

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/d/c/k$c$b;->b()Lcom/helpscout/beacon/a/d/c/k$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/k$c$b;->b()Lcom/helpscout/beacon/a/d/c/k$b;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/d/c/k$c$b;->a()Lcom/helpscout/beacon/a/d/c/k$a$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/k$c$b;->a()Lcom/helpscout/beacon/a/d/c/k$a$b;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/d/c/k$c$b;->c()Lcom/helpscout/beacon/model/FocusMode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/k$c$b;->c()Lcom/helpscout/beacon/model/FocusMode;

    move-result-object p1

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
    .locals 3

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/d/c/k$c$b;->b()Lcom/helpscout/beacon/a/d/c/k$b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/d/c/k$c$b;->a()Lcom/helpscout/beacon/a/d/c/k$a$b;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/d/c/k$c$b;->c()Lcom/helpscout/beacon/model/FocusMode;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WithSuggestions(ask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/d/c/k$c$b;->b()Lcom/helpscout/beacon/a/d/c/k$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", answer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/d/c/k$c$b;->a()Lcom/helpscout/beacon/a/d/c/k$a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", focusMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/d/c/k$c$b;->c()Lcom/helpscout/beacon/model/FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
