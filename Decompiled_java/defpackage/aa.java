package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: aa  reason: default package */
/* compiled from: Source */
public final class aa implements Parcelable {
    public static final Parcelable.Creator Code = new Parcelable.Creator() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new aa(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new aa[i];
        }
    };
    private String I;
    private String J;
    private String Z;

    public aa(String str, String str2, String str3) {
        this.I = str;
        this.Z = str2;
        this.J = str3;
    }

    public final String Code() {
        return this.I;
    }

    public final String I() {
        return this.Z;
    }

    public final String Z() {
        return this.J;
    }

    public aa() {
    }

    aa(Parcel parcel) {
        this.I = parcel.readString();
        this.Z = parcel.readString();
        this.J = parcel.readString();
    }

    public final int describeContents() {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.I);
        parcel.writeString(this.Z);
        parcel.writeString(this.J);
    }
}
