.class public Lorg/apache/commons/beanutils/DynaProperty;
.super Ljava/lang/Object;
.source "DynaProperty.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final BOOLEAN_TYPE:I = 0x1

.field private static final BYTE_TYPE:I = 0x2

.field private static final CHAR_TYPE:I = 0x3

.field private static final DOUBLE_TYPE:I = 0x4

.field private static final FLOAT_TYPE:I = 0x5

.field private static final INT_TYPE:I = 0x6

.field private static final LONG_TYPE:I = 0x7

.field private static final SHORT_TYPE:I = 0x8


# instance fields
.field protected transient contentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected name:Ljava/lang/String;

.field protected transient type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 76
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->name:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    .line 90
    iput-object p1, p0, Lorg/apache/commons/beanutils/DynaProperty;->name:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/DynaProperty;->contentType:Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->name:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    .line 109
    iput-object p1, p0, Lorg/apache/commons/beanutils/DynaProperty;->name:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    .line 111
    iput-object p3, p0, Lorg/apache/commons/beanutils/DynaProperty;->contentType:Ljava/lang/Class;

    return-void
.end method

.method private readAnyClass(Ljava/io/ObjectInputStream;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInputStream;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 346
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 360
    new-instance p1, Ljava/io/StreamCorruptedException;

    const-string v0, "Invalid primitive type. Check version of beanutils used to serialize is compatible."

    invoke-direct {p1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 357
    :pswitch_0
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 356
    :pswitch_1
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 355
    :pswitch_2
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 354
    :pswitch_3
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 353
    :pswitch_4
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 352
    :pswitch_5
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 351
    :pswitch_6
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 350
    :pswitch_7
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 368
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 330
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/DynaProperty;->readAnyClass(Ljava/io/ObjectInputStream;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    .line 332
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/DynaProperty;->isMapped()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/DynaProperty;->isIndexed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/DynaProperty;->readAnyClass(Ljava/io/ObjectInputStream;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->contentType:Ljava/lang/Class;

    .line 337
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    return-void
.end method

.method private writeAnyClass(Ljava/lang/Class;Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/io/ObjectOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 295
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 297
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 299
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 301
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 303
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 305
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_8

    .line 311
    invoke-virtual {p2, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 312
    invoke-virtual {p2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 315
    :cond_8
    invoke-virtual {p2, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 316
    invoke-virtual {p2, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    :goto_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/beanutils/DynaProperty;->writeAnyClass(Ljava/lang/Class;Ljava/io/ObjectOutputStream;)V

    .line 277
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/DynaProperty;->isMapped()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/DynaProperty;->isIndexed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->contentType:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/beanutils/DynaProperty;->writeAnyClass(Ljava/lang/Class;Ljava/io/ObjectOutputStream;)V

    .line 282
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_5

    .line 218
    instance-of v3, p1, Lorg/apache/commons/beanutils/DynaProperty;

    if-eqz v3, :cond_5

    .line 219
    check-cast p1, Lorg/apache/commons/beanutils/DynaProperty;

    .line 220
    iget-object v2, p0, Lorg/apache/commons/beanutils/DynaProperty;->name:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p1, Lorg/apache/commons/beanutils/DynaProperty;->name:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_1
    iget-object v3, p1, Lorg/apache/commons/beanutils/DynaProperty;->name:Ljava/lang/String;

    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    iget-object v2, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    if-nez v2, :cond_2

    iget-object v2, p1, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_2
    iget-object v3, p1, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    .line 222
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_2
    iget-object v2, p0, Lorg/apache/commons/beanutils/DynaProperty;->contentType:Ljava/lang/Class;

    iget-object p1, p1, Lorg/apache/commons/beanutils/DynaProperty;->contentType:Ljava/lang/Class;

    if-nez v2, :cond_3

    if-nez p1, :cond_4

    goto :goto_3

    .line 223
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    move v2, v0

    :cond_5
    return v2
.end method

.method public getContentType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->contentType:Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 239
    iget-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 240
    iget-object v3, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 241
    iget-object v2, p0, Lorg/apache/commons/beanutils/DynaProperty;->contentType:Ljava/lang/Class;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public isIndexed()Z
    .locals 4

    .line 174
    iget-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 176
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 178
    :cond_1
    const-class v0, Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public isMapped()Z
    .locals 2

    .line 195
    iget-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 198
    :cond_0
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DynaProperty[name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lorg/apache/commons/beanutils/DynaProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",type="

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-object v1, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/DynaProperty;->isMapped()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/DynaProperty;->isIndexed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, " <"

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/beanutils/DynaProperty;->contentType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "]"

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
