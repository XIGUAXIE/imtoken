.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:I

.field private final e:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

.field private final f:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

.field private final g:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

.field private final h:Ljava/lang/String;

.field private final i:Z

.field private final j:I

.field private final k:Z


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;Ljava/lang/String;ZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;Ljava/lang/String;ZIZ)V
    .locals 1

    const-string v0, "statusUpdate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->f:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->g:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->h:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->i:Z

    iput p6, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->j:I

    iput-boolean p7, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->k:Z

    sget-object p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;->RATING_SKIPPED:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;->RATING_SENT:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    if-eq p1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->a:Z

    if-eqz p2, :cond_2

    invoke-static {p4}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->isNotNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->b:Z

    sget-object p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;->ADDING_FEEDBACK_EXPANDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    if-ne p1, p2, :cond_3

    if-eqz p7, :cond_3

    goto :goto_2

    :cond_3
    const/4 p5, 0x0

    :goto_2
    iput-boolean p5, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->c:Z

    if-gez p6, :cond_4

    sget p1, Lcom/helpscout/beacon/ui/R$color;->hs_beacon_feedback_char_count_error_color:I

    goto :goto_3

    :cond_4
    sget p1, Lcom/helpscout/beacon/ui/R$color;->hs_beacon_feedback_char_count_warning_color:I

    :goto_3
    iput p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;Ljava/lang/String;ZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;->IDLE:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    const/4 v0, 0x0

    if-eqz p9, :cond_1

    move-object p9, v0

    goto :goto_0

    :cond_1
    move-object p9, p2

    :goto_0
    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v1, p3

    :goto_1
    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, p4

    :goto_2
    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    const/4 p5, 0x1

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    move v2, p5

    :goto_3
    and-int/lit8 p2, p8, 0x20

    const/4 p3, 0x0

    if-eqz p2, :cond_5

    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    move v3, p6

    :goto_4
    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    move v4, p7

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v1

    move-object p6, v0

    move p7, v2

    move p8, v3

    move p9, v4

    invoke-direct/range {p2 .. p9}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public static synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;Ljava/lang/String;ZIZILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->f:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->g:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->h:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->i:Z

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->j:I

    :cond_5
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-boolean p7, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->k:Z

    :cond_6
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    move p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;Ljava/lang/String;ZIZ)Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->f:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    return-object v0
.end method

.method public final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;Ljava/lang/String;ZIZ)Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;
    .locals 9

    const-string v0, "statusUpdate"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;Ljava/lang/String;ZIZ)V

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->d:I

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->b:Z

    return v0
.end method

.method public final d()Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->g:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->j:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->f:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->f:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->g:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->g:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->i:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->i:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->j:I

    iget v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->j:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->k:Z

    iget-boolean p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->k:Z

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

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->c:Z

    return v0
.end method

.method public final g()Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->i:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->f:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->g:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->h:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->i:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->j:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->k:Z

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatRatingViewState(statusUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", assignedAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->f:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->g:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", submitButtonEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", remainingFeedbackChars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasReachedFeedbackMaxCountWarningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
