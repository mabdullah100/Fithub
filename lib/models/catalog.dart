// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CatalogModel {
  static List<Item> items;
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;
  final String f1;
  final String f2;
  final String f3;
  final String f4;
  final String gi1;
  final String gi2;
  final String gi3;
  final String gi4;
  final String gi5;
  final String pl1;
  final String pl1t;
  final String pl1d;
  final String pl1p;
  final String pl2;
  final String pl2t;
  final String pl2d;
  final String pl2p;
  final String pl3;
  final String pl3t;
  final String pl3d;
  final String pl3p;
  final String pl4;
  final String pl4t;
  final String pl4d;
  final String pl4p;
  final String t1i;
  final String t1n;
  final String t1d;
  final String t2i;
  final String t2n;
  final String t2d;
  final String address;
  final String phone;
  final String time;
  final String reviewt;
  final String reviewd;
  final String reviews;
  final String review1t;
  final String review1d;
  final String review1s;
  final String review2t;
  final String review2d;
  final String review2s;
  final String map;

  Item({
    this.id,
    this.name,
    this.desc,
    this.price,
    this.color,
    this.image,
    this.f1,
    this.f2,
    this.f3,
    this.f4,
    this.gi1,
    this.gi2,
    this.gi3,
    this.gi4,
    this.gi5,
    this.pl1,
    this.pl1t,
    this.pl1d,
    this.pl1p,
    this.pl2,
    this.pl2t,
    this.pl2d,
    this.pl2p,
    this.pl3,
    this.pl3t,
    this.pl3d,
    this.pl3p,
    this.pl4,
    this.pl4t,
    this.pl4d,
    this.pl4p,
    this.t1i,
    this.t1n,
    this.t1d,
    this.t2i,
    this.t2n,
    this.t2d,
    this.address,
    this.phone,
    this.time,
    this.reviewt,
    this.reviewd,
    this.reviews,
    this.review1t,
    this.review1d,
    this.review1s,
    this.review2t,
    this.review2d,
    this.review2s,
    this.map,
  });

  Item copyWith({
    id,
    name,
    desc,
    price,
    color,
    image,
    f1,
    f2,
    f3,
    f4,
    gi1,
    gi2,
    gi3,
    gi4,
    gi5,
    pl1,
    pl1t,
    pl1d,
    pl1p,
    pl2,
    pl2t,
    pl2d,
    pl2p,
    pl3,
    pl3t,
    pl3d,
    pl3p,
    pl4,
    pl4t,
    pl4d,
    pl4p,
    t1i,
    t1n,
    t1d,
    t2i,
    t2n,
    t2d,
    address,
    phone,
    time,
    reviewt,
    reviewd,
    reviews,
    review1t,
    review1d,
    review1s,
    review2t,
    review2d,
    review2s,
    map,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
      f1: f1 ?? this.f1,
      f2: f2 ?? this.f2,
      f3: f3 ?? this.f3,
      f4: f4 ?? this.f4,
      gi1: gi1 ?? this.gi1,
      gi2: gi2 ?? this.gi2,
      gi3: gi3 ?? this.gi3,
      gi4: gi4 ?? this.gi4,
      gi5: gi5 ?? this.gi5,
      pl1: pl1 ?? this.pl1,
      pl1t: pl1t ?? this.pl1t,
      pl1d: pl1d ?? this.pl1d,
      pl1p: pl1p ?? this.pl1p,
      pl2: pl2 ?? this.pl2,
      pl2t: pl2t ?? this.pl2t,
      pl2d: pl2d ?? this.pl2d,
      pl2p: pl2p ?? this.pl2p,
      pl3: pl3 ?? this.pl3,
      pl3t: pl3t ?? this.pl3t,
      pl3d: pl3d ?? this.pl3d,
      pl3p: pl3p ?? this.pl3p,
      pl4: pl4 ?? this.pl4,
      pl4t: pl4t ?? this.pl4t,
      pl4d: pl4d ?? this.pl4d,
      pl4p: pl4p ?? this.pl4p,
      t1i: t1i ?? this.t1i,
      t1n: t1n ?? this.t1n,
      t1d: t1d ?? this.t1d,
      t2i: t2i ?? this.t2i,
      t2n: t2n ?? this.t2n,
      t2d: t2d ?? this.t2d,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      time: time ?? this.time,
      reviewt: reviewt ?? this.reviewt,
      reviewd: reviewd ?? this.reviewd,
      reviews: reviews ?? this.reviews,
      review1t: review1t ?? this.review1t,
      review1d: review1d ?? this.review1d,
      review1s: review1s ?? this.review1s,
      review2t: review2t ?? this.review2t,
      review2d: review2d ?? this.review2d,
      review2s: review2s ?? this.review2s,
      map: map ?? this.map,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
      'f1': f1,
      'f2': f2,
      'f3': f3,
      'f4': f4,
      'gi1': gi1,
      'gi2': gi2,
      'gi3': gi3,
      'gi4': gi4,
      'gi5': gi5,
      'pl1': pl1,
      'pl1t': pl1t,
      'pl1d': pl1d,
      'pl1p': pl1p,
      'pl2': pl2,
      'pl2t': pl2t,
      'pl2d': pl2d,
      'pl2p': pl2p,
      'pl3': pl3,
      'pl3t': pl3t,
      'pl3d': pl3d,
      'pl3p': pl3p,
      'pl4': pl4,
      'pl4t': pl4t,
      'pl4d': pl4d,
      'pl4p': pl4p,
      't1i': t1i,
      't1n': t1n,
      't1d': t1d,
      't2i': t2i,
      't2n': t2n,
      't2d': t2d,
      'address': address,
      'phone': phone,
      'time': time,
      'reviewt': reviewt,
      'reviewd': reviewd,
      'reviews': reviews,
      'review1t': review1t,
      'review1d': review1d,
      'review1s': review1s,
      'review2t': review2t,
      'review2d': review2d,
      'review2s': review2s,
      'map': map,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as int,
      name: map['name'] as String,
      desc: map['desc'] as String,
      price: map['price'] as num,
      color: map['color'] as String,
      image: map['image'] as String,
      f1: map['f1'] as String,
      f2: map['f2'] as String,
      f3: map['f3'] as String,
      f4: map['f4'] as String,
      gi1: map['gi1'] as String,
      gi2: map['gi2'] as String,
      gi3: map['gi3'] as String,
      gi4: map['gi4'] as String,
      gi5: map['gi5'] as String,
      pl1: map['pl1'] as String,
      pl1t: map['pl1t'] as String,
      pl1d: map['pl1d'] as String,
      pl1p: map['pl1p'] as String,
      pl2: map['pl2'] as String,
      pl2t: map['pl2t'] as String,
      pl2d: map['pl2d'] as String,
      pl2p: map['pl2p'] as String,
      pl3: map['pl3'] as String,
      pl3t: map['pl3t'] as String,
      pl3d: map['pl3d'] as String,
      pl3p: map['pl3p'] as String,
      pl4: map['pl4'] as String,
      pl4t: map['pl4t'] as String,
      pl4d: map['pl4d'] as String,
      pl4p: map['pl4p'] as String,
      t1i: map['t1i'] as String,
      t1n: map['t1n'] as String,
      t1d: map['t1d'] as String,
      t2i: map['t2i'] as String,
      t2n: map['t2n'] as String,
      t2d: map['t2d'] as String,
      address: map['address'] as String,
      phone: map['phone'] as String,
      time: map['time'] as String,
      reviewt: map['reviewt'] as String,
      reviewd: map['reviewd'] as String,
      reviews: map['reviews'] as String,
      review1t: map['review1t'] as String,
      review1d: map['review1d'] as String,
      review1s: map['review1s'] as String,
      review2t: map['review2t'] as String,
      review2d: map['review2d'] as String,
      review2s: map['review2s'] as String,
      map: map['map'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image, f1: $f1, f2: $f2, f3: $f3, f4: $f4, gi1: $gi1, gi2: $gi2, gi3: $gi3, gi4: $gi4, gi5: $gi5, pl1: $pl1, pl1t: $pl1t, pl1d: $pl1d, pl1p: $pl1p, pl2: $pl2, pl2t: $pl2t, pl2d: $pl2d, pl2p: $pl2p, pl3: $pl3, pl3t: $pl3t, pl3d: $pl3d, pl3p: $pl3p, pl4: $pl4, pl4t: $pl4t, pl4d: $pl4d, pl4p: $pl4p, t1i: $t1i, t1n: $t1n, t1d: $t1d, t2i: $t2i, t2n: $t2n, t2d: $t2d, address: $address, phone: $phone, time: $time, reviewt: $reviewt, reviewd: $reviewd, reviews: $reviews, review1t: $review1t, review1d: $review1d, review1s: $review1s, review2t: $review2t, review2d: $review2d, review2s: $review2s, map: $map)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item && other.id == id && other.name == name && other.desc == desc && other.price == price && other.color == color && other.image == image && other.f1 == f1 && other.f2 == f2 && other.f3 == f3 && other.f4 == f4 && other.gi1 == gi1 && other.gi2 == gi2 && other.gi3 == gi3 && other.gi4 == gi4 && other.gi5 == gi5 && other.pl1 == pl1 && other.pl1t == pl1t && other.pl1d == pl1d && other.pl1p == pl1p && other.pl2 == pl2 && other.pl2t == pl2t && other.pl2d == pl2d && other.pl2p == pl2p && other.pl3 == pl3 && other.pl3t == pl3t && other.pl3d == pl3d && other.pl3p == pl3p && other.pl4 == pl4 && other.pl4t == pl4t && other.pl4d == pl4d && other.pl4p == pl4p && other.t1i == t1i && other.t1n == t1n && other.t1d == t1d && other.t2i == t2i && other.t2n == t2n && other.t2d == t2d && other.address == address && other.phone == phone && other.time == time && other.reviewt == reviewt && other.reviewd == reviewd && other.reviews == reviews && other.review1t == review1t && other.review1d == review1d && other.review1s == review1s && other.review2t == review2t && other.review2d == review2d && other.review2s == review2s && other.map == map;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ desc.hashCode ^ price.hashCode ^ color.hashCode ^ image.hashCode ^ f1.hashCode ^ f2.hashCode ^ f3.hashCode ^ f4.hashCode ^ gi1.hashCode ^ gi2.hashCode ^ gi3.hashCode ^ gi4.hashCode ^ gi5.hashCode ^ pl1.hashCode ^ pl1t.hashCode ^ pl1d.hashCode ^ pl1p.hashCode ^ pl2.hashCode ^ pl2t.hashCode ^ pl2d.hashCode ^ pl2p.hashCode ^ pl3.hashCode ^ pl3t.hashCode ^ pl3d.hashCode ^ pl3p.hashCode ^ pl4.hashCode ^ pl4t.hashCode ^ pl4d.hashCode ^ pl4p.hashCode ^ t1i.hashCode ^ t1n.hashCode ^ t1d.hashCode ^ t2i.hashCode ^ t2n.hashCode ^ t2d.hashCode ^ address.hashCode ^ phone.hashCode ^ time.hashCode ^ reviewt.hashCode ^ reviewd.hashCode ^ reviews.hashCode ^ review1t.hashCode ^ review1d.hashCode ^ review1s.hashCode ^ review2t.hashCode ^ review2d.hashCode ^ review2s.hashCode ^ map.hashCode;
  }
}
