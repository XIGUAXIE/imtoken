.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;
.super Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;
.source "SourceFile"


# instance fields
.field private final h:Ljava/lang/String;

.field private final i:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

.field private final j:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Z

.field private final n:Z

.field private final o:Z

.field private final p:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

.field private final q:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Ljava/lang/String;Ljava/lang/String;ZZZLcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Z)V
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p9

    const-string v0, "eventId"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventType"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventStatus"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventAuthor"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move/from16 v5, p10

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;-><init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZ)V

    iput-object v9, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->h:Ljava/lang/String;

    iput-object v10, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->i:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    iput-object v11, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->j:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iput-object v12, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->k:Ljava/lang/String;

    iput-object v13, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->l:Ljava/lang/String;

    move/from16 v0, p6

    iput-boolean v0, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->m:Z

    move/from16 v0, p7

    iput-boolean v0, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->n:Z

    move/from16 v0, p8

    iput-boolean v0, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->o:Z

    iput-object v14, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->p:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move/from16 v0, p10

    iput-boolean v0, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->q:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->i:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->i:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->j:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->j:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->l:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->m:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->m:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->n:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->n:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->o:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->o:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->p:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->p:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->q:Z

    iget-boolean p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->q:Z

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
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->h:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->i:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->j:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->k:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->l:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->m:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->n:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :cond_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->o:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :cond_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->p:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->q:Z

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    move v3, v1

    :goto_5
    add-int/2addr v0, v3

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->n:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->o:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatEventUi(eventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->i:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->j:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventIsPreviousMessageFromSameAuthor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", eventIsNextMessageFromSameAuthor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPreviousMessageLineItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", eventAuthor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->p:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventIsUpdatingATypingMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
