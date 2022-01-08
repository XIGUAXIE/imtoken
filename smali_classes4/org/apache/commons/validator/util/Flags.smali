.class public Lorg/apache/commons/validator/util/Flags;
.super Ljava/lang/Object;
.source "Flags.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x75b4a6f283df622bL


# instance fields
.field private flags:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lorg/apache/commons/validator/util/Flags;->flags:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lorg/apache/commons/validator/util/Flags;->flags:J

    .line 64
    iput-wide p1, p0, Lorg/apache/commons/validator/util/Flags;->flags:J

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 132
    iput-wide v0, p0, Lorg/apache/commons/validator/util/Flags;->flags:J

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 151
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 153
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t clone Flags object."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 166
    instance-of v0, p1, Lorg/apache/commons/validator/util/Flags;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 174
    :cond_1
    check-cast p1, Lorg/apache/commons/validator/util/Flags;

    .line 176
    iget-wide v2, p0, Lorg/apache/commons/validator/util/Flags;->flags:J

    iget-wide v4, p1, Lorg/apache/commons/validator/util/Flags;->flags:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getFlags()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lorg/apache/commons/validator/util/Flags;->flags:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 187
    iget-wide v0, p0, Lorg/apache/commons/validator/util/Flags;->flags:J

    long-to-int v1, v0

    return v1
.end method

.method public isOff(J)Z
    .locals 3

    .line 97
    iget-wide v0, p0, Lorg/apache/commons/validator/util/Flags;->flags:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isOn(J)Z
    .locals 3

    .line 85
    iget-wide v0, p0, Lorg/apache/commons/validator/util/Flags;->flags:J

    and-long/2addr v0, p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/validator/util/Flags;->flags:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x40

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x0

    const-string v3, "0"

    .line 201
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public turnOff(J)V
    .locals 2

    .line 117
    iget-wide v0, p0, Lorg/apache/commons/validator/util/Flags;->flags:J

    not-long p1, p1

    and-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/validator/util/Flags;->flags:J

    return-void
.end method

.method public turnOffAll()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 124
    iput-wide v0, p0, Lorg/apache/commons/validator/util/Flags;->flags:J

    return-void
.end method

.method public turnOn(J)V
    .locals 2

    .line 107
    iget-wide v0, p0, Lorg/apache/commons/validator/util/Flags;->flags:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/validator/util/Flags;->flags:J

    return-void
.end method

.method public turnOnAll()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 139
    iput-wide v0, p0, Lorg/apache/commons/validator/util/Flags;->flags:J

    return-void
.end method
