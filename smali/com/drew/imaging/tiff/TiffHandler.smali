.class public interface abstract Lcom/drew/imaging/tiff/TiffHandler;
.super Ljava/lang/Object;
.source "TiffHandler.java"


# virtual methods
.method public abstract customProcessTag(ILjava/util/Set;ILcom/drew/lang/RandomAccessReader;II)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/drew/lang/RandomAccessReader;",
            "II)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract endingIFD()V
.end method

.method public abstract error(Ljava/lang/String;)V
.end method

.method public abstract hasFollowerIfd()Z
.end method

.method public abstract setByteArray(I[B)V
.end method

.method public abstract setDouble(ID)V
.end method

.method public abstract setDoubleArray(I[D)V
.end method

.method public abstract setFloat(IF)V
.end method

.method public abstract setFloatArray(I[F)V
.end method

.method public abstract setInt16s(II)V
.end method

.method public abstract setInt16sArray(I[S)V
.end method

.method public abstract setInt16u(II)V
.end method

.method public abstract setInt16uArray(I[I)V
.end method

.method public abstract setInt32s(II)V
.end method

.method public abstract setInt32sArray(I[I)V
.end method

.method public abstract setInt32u(IJ)V
.end method

.method public abstract setInt32uArray(I[J)V
.end method

.method public abstract setInt8s(IB)V
.end method

.method public abstract setInt8sArray(I[B)V
.end method

.method public abstract setInt8u(IS)V
.end method

.method public abstract setInt8uArray(I[S)V
.end method

.method public abstract setRational(ILcom/drew/lang/Rational;)V
.end method

.method public abstract setRationalArray(I[Lcom/drew/lang/Rational;)V
.end method

.method public abstract setString(ILcom/drew/metadata/StringValue;)V
.end method

.method public abstract setTiffMarker(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/tiff/TiffProcessingException;
        }
    .end annotation
.end method

.method public abstract tryCustomProcessFormat(IIJ)Ljava/lang/Long;
.end method

.method public abstract tryEnterSubIfd(I)Z
.end method

.method public abstract warn(Ljava/lang/String;)V
.end method
