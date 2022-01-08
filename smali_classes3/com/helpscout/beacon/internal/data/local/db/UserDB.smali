.class public final Lcom/helpscout/beacon/internal/data/local/db/UserDB;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0087\u0008\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\'\u0010(J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\t\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\nJH\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\r\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00052\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\nJ\u0010\u0010\u0016\u001a\u00020\u0015H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001a\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR$\u0010\u0011\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u001c\u001a\u0004\u0008\u001d\u0010\n\"\u0004\u0008\u001e\u0010\u001fR$\u0010\u0010\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u001c\u001a\u0004\u0008 \u0010\n\"\u0004\u0008!\u0010\u001fR\u001b\u0010\u000f\u001a\u0004\u0018\u00010\u00088\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u001c\u001a\u0004\u0008\"\u0010\nR\u0019\u0010\u000e\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010#\u001a\u0004\u0008$\u0010\u0007R\u001c\u0010\r\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\r\u0010%\u001a\u0004\u0008&\u0010\u0004\u00a8\u0006)"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
        "",
        "",
        "component1",
        "()J",
        "Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;",
        "component2",
        "()Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;",
        "",
        "component3",
        "()Ljava/lang/String;",
        "component4",
        "component5",
        "id",
        "type",
        "displayName",
        "initials",
        "photo",
        "copy",
        "(JLcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getPhoto",
        "setPhoto",
        "(Ljava/lang/String;)V",
        "getInitials",
        "setInitials",
        "getDisplayName",
        "Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;",
        "getType",
        "J",
        "getId",
        "<init>",
        "(JLcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final id:J

.field private initials:Ljava/lang/String;

.field private photo:Ljava/lang/String;

.field private final type:Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;


# direct methods
.method public constructor <init>(JLcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->id:J

    iput-object p3, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->type:Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->displayName:Ljava/lang/String;

    iput-object p5, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->initials:Ljava/lang/String;

    iput-object p6, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->photo:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JLcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    sget-object p3, Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;->unknown:Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x4

    const/4 p8, 0x0

    if-eqz p3, :cond_1

    move-object v4, p8

    goto :goto_0

    :cond_1
    move-object v4, p4

    :goto_0
    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_2

    move-object v5, p8

    goto :goto_1

    :cond_2
    move-object v5, p5

    :goto_1
    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_3

    move-object v6, p8

    goto :goto_2

    :cond_3
    move-object v6, p6

    :goto_2
    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;-><init>(JLcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/data/local/db/UserDB;JLcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/data/local/db/UserDB;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->id:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->type:Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-object p4, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->displayName:Ljava/lang/String;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget-object p5, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->initials:Ljava/lang/String;

    :cond_3
    move-object v5, p5

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    iget-object p6, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->photo:Ljava/lang/String;

    :cond_4
    move-object v6, p6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->copy(JLcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->id:J

    return-wide v0
.end method

.method public final component2()Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->type:Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->initials:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/local/db/UserDB;
    .locals 8

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;-><init>(JLcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    iget-wide v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->id:J

    iget-wide v2, p1, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->id:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->type:Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->type:Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->displayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->displayName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->initials:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->initials:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->photo:Ljava/lang/String;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->photo:Ljava/lang/String;

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

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->id:J

    return-wide v0
.end method

.method public final getInitials()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->initials:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoto()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->type:Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->id:J

    invoke-static {v0, v1}, L$r8$backportedMethods$utility$Long$1$hashCode;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->type:Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->displayName:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->initials:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->photo:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public final setInitials(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->initials:Ljava/lang/String;

    return-void
.end method

.method public final setPhoto(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->photo:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserDB(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->type:Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", initials="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->initials:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", photo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->photo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
