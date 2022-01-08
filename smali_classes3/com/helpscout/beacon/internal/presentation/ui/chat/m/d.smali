.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;
.super Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;
.source "SourceFile"


# instance fields
.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

.field private final k:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:J

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Z

.field private final r:Z

.field private final s:Landroid/net/Uri;

.field private final t:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

.field private final u:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZLandroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;Z)V
    .locals 18

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v9, p6

    move-object/from16 v8, p9

    move-object/from16 v7, p14

    const-string v0, "attachmentId"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventId"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaStatus"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentAuthorUi"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mime"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentStatus"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->attachment:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    const/4 v5, 0x0

    const/16 v16, 0x10

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p11

    move/from16 v7, p12

    move/from16 v8, v16

    move-object/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;-><init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v11, v10, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->h:Ljava/lang/String;

    iput-object v12, v10, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->i:Ljava/lang/String;

    iput-object v13, v10, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->j:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iput-object v14, v10, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->k:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    iput-object v15, v10, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->l:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v0, v10, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->m:Ljava/lang/String;

    move-wide/from16 v0, p7

    iput-wide v0, v10, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->n:J

    move-object/from16 v0, p9

    iput-object v0, v10, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->o:Ljava/lang/String;

    move-object/from16 v0, p10

    iput-object v0, v10, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->p:Ljava/lang/String;

    move/from16 v0, p11

    iput-boolean v0, v10, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->q:Z

    move/from16 v0, p12

    iput-boolean v0, v10, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->r:Z

    move-object/from16 v0, p13

    iput-object v0, v10, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->s:Landroid/net/Uri;

    move-object/from16 v0, p14

    iput-object v0, v10, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->t:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    move/from16 v0, p15

    iput-boolean v0, v10, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->u:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZLandroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p16

    and-int/lit16 v1, v0, 0x200

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v14, 0x0

    goto :goto_0

    :cond_0
    move/from16 v14, p11

    :goto_0
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_1

    const/4 v15, 0x0

    goto :goto_1

    :cond_1
    move/from16 v15, p12

    :goto_1
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2

    sget-object v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;->Finished:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    move-object/from16 v17, v0

    goto :goto_2

    :cond_2
    move-object/from16 v17, p14

    :goto_2
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v16, p13

    move/from16 v18, p15

    invoke-direct/range {v3 .. v18}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZLandroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;)Z
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->t:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->t:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->j:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->j:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->k:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->k:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->l:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->m:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->n:J

    iget-wide v2, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->n:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->o:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->p:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->q:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->q:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->r:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->r:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->s:Landroid/net/Uri;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->s:Landroid/net/Uri;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->t:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->t:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->u:Z

    iget-boolean p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->u:Z

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

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->h:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->i:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->j:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->k:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->l:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->m:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->n:J

    invoke-static {v2, v3}, L$r8$backportedMethods$utility$Long$1$hashCode;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->o:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->p:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->q:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :cond_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->r:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    :cond_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->s:Landroid/net/Uri;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->t:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->u:Z

    if-eqz v1, :cond_c

    goto :goto_9

    :cond_c
    move v3, v1

    :goto_9
    add-int/2addr v0, v3

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->r:Z

    return v0
.end method

.method public final k()Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->t:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->s:Landroid/net/Uri;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->u:Z

    return v0
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->isGif(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final r()Z
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->isImage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatMediaUi(attachmentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->j:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attachmentAuthorUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->k:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnail_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attachmentIsPreviousMessageFromSameAuthor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", attachmentIsNextMessageFromSameAuthor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", localUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->s:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attachmentStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->t:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFromUnfurling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
